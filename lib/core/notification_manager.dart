// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart' as image;
import 'package:injectable/injectable.dart';
import 'package:libretrack/ui/model/utils.dart';
import 'package:libretrack/ui/theme.dart';
import 'package:quiver/core.dart';

import '../locale.dart';
import 'crash_report/crash_report_manager.dart';
import 'entity/entity.dart';
import 'platform_info.dart';
import 'settings/settings.dart';

part 'notification_manager.freezed.dart';
part 'notification_manager.g.dart';

abstract class NotificationManager {
  Future<void> init();

  Future<void> requestPermissions();

  Future<NotificationAction?> getAppLaunchDetails();

  Stream<NotificationAction> listenOnSelectNotification();

  Future<void> newActivitiesNotify(
    Map<TrackNumberInfo, ShipmentActivityInfo> lastActivities,
  );

  Future<void> parcelsHardErrorNotify(
    List<TrackNumberInfo> trackInfoList,
  );

  Future<void> trackingFailedNotify(
    List<TrackNumberInfo> trackInfoList,
  );

  Future<void> crashReportNotify(CrashInfo info);

  Future<void> sendReportErrorNotify(CrashInfo info);
}

@freezed
class NotificationAction with _$NotificationAction {
  const factory NotificationAction.openParcelDetails({
    required String trackNumber,
  }) = NotificationActionOpenParcelDetails;

  const factory NotificationAction.reportCrash({
    required CrashInfo info,
  }) = NotificationActionReportCrash;

  const factory NotificationAction.openParcelsList() =
      NotificationActionOpenParcelsList;

  factory NotificationAction.fromJson(Map<String, dynamic> json) =>
      _$NotificationActionFromJson(json);
}

NotificationAction? _parsePayload(String? payload) {
  final json = payload == null ? null : jsonDecode(payload);
  return json == null
      ? null
      : NotificationAction.fromJson(json as Map<String, dynamic>);
}

// TODO: Web/Windows/macOS support
@Singleton(as: NotificationManager)
class NotificationManagerImpl implements NotificationManager {
  static final _ledColor = AppTheme.paletteLight.primary;
  static const _ledOnMs = 1;
  static const _ledOffMs = 0;

  final PlatformInfo _platformInfo;
  final AppSettings _pref;

  String? _currentLocale;
  AppLocalizations? _currentAppLocale;

  final _notifyPlugin = FlutterLocalNotificationsPlugin();
  final _onNotifySelected = StreamController<NotificationAction>.broadcast();

  NotificationManagerImpl(this._platformInfo, this._pref);

  @override
  Future<void> init() async {
    const initSettingsAndroid = AndroidInitializationSettings(
      'ic_app_notification',
    );

    const initSettingsIOS = DarwinInitializationSettings();

    final assetIcon = await rootBundle.load('assets/notify_icon.png');
    final iconData = image.decodePng(
      assetIcon.buffer.asUint8List(),
    );
    final iconBytes = iconData!.getBytes();

    final initSettingsLinux = LinuxInitializationSettings(
      defaultActionName: 'LibreTrack',
      defaultIcon: ByteDataLinuxIcon(
        LinuxRawIconData(
          data: iconBytes,
          width: iconData.width,
          height: iconData.height,
          channels: 4,
          hasAlpha: true,
        ),
      ),
      defaultSound: ThemeLinuxSound('message'),
    );

    final initSettings = InitializationSettings(
      android: initSettingsAndroid,
      iOS: initSettingsIOS,
      linux: initSettingsLinux,
    );

    await _notifyPlugin.initialize(
      initSettings,
      onDidReceiveNotificationResponse: (response) async {
        final action = _parsePayload(response.payload);
        if (action != null) {
          _onNotifySelected.add(action);
        }
      },
    );
  }

  @override
  Future<void> requestPermissions() async {
    if (_platformInfo.isAndroid) {
      _notifyPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    }
  }

  @override
  Future<NotificationAction?> getAppLaunchDetails() async {
    final details = await _notifyPlugin.getNotificationAppLaunchDetails();
    if (details == null || !details.didNotificationLaunchApp) {
      return null;
    } else {
      return _parsePayload(details.notificationResponse?.payload);
    }
  }

  @override
  Stream<NotificationAction> listenOnSelectNotification() {
    return _onNotifySelected.stream;
  }

  @override
  Future<void> newActivitiesNotify(
    Map<TrackNumberInfo, ShipmentActivityInfo> lastActivities,
  ) async {
    final locale = await _getAppLocale();
    final parcelActivityChannel = _AndroidChannel.parcelsTracking(locale);
    const groupKey = 'org.proninyaroslav.libtretrack.NEW_ACTIVITIES';
    final contentList = _buildActivityNotifications(
      groupKey,
      lastActivities,
      locale,
    );

    await Future.wait(
      contentList.map((e) {
        final androidDetails = AndroidNotificationDetails(
          parcelActivityChannel.id,
          parcelActivityChannel.name,
          channelDescription: parcelActivityChannel.description,
          enableLights: true,
          ledColor: _ledColor,
          ledOnMs: _ledOnMs,
          ledOffMs: _ledOffMs,
          groupKey: groupKey,
          ticker: locale.parcelsTrackingNotifyInboxStyleLine(
            e.title,
            e.body.first,
          ),
          styleInformation: InboxStyleInformation(
            e.body,
            summaryText: e.subtitle,
          ),
          playSound: true,
        );
        final iosDetails = DarwinNotificationDetails(
          subtitle: e.subtitle,
          badgeNumber: contentList.length,
          presentBadge: true,
          threadIdentifier: groupKey,
          presentSound: true,
        );
        final linuxDetails = LinuxNotificationDetails(
          defaultActionName: locale.openDetails,
        );
        final details = NotificationDetails(
          android: androidDetails,
          iOS: iosDetails,
          linux: linuxDetails,
        );
        final actionJson = e.action?.toJson();
        return _notifyPlugin.show(
          e.id,
          e.title,
          _platformInfo.isLinux ? e.body.join('\n') : e.body.first,
          details,
          payload: actionJson == null ? null : jsonEncode(actionJson),
        );
      }),
    );

    if (_platformInfo.isAndroid && lastActivities.length > 1) {
      final androidInboxDetails = AndroidNotificationDetails(
        parcelActivityChannel.id,
        parcelActivityChannel.name,
        channelDescription: parcelActivityChannel.description,
        enableLights: true,
        ledColor: _ledColor,
        ledOnMs: _ledOnMs,
        ledOffMs: _ledOffMs,
        groupKey: groupKey,
        setAsGroupSummary: true,
        ticker: locale.parcelsTrackingNotifyInboxStyleTitle,
        styleInformation: InboxStyleInformation(
          contentList
              .map(
                (e) => locale.parcelsTrackingNotifyInboxStyleLine(
                  e.title,
                  e.body.first,
                ),
              )
              .toList(),
        ),
        playSound: true,
      );
      final detailsInbox = NotificationDetails(
        android: androidInboxDetails,
      );
      await _notifyPlugin.show(
        contentList.hashCode,
        locale.parcelsTrackingNotifyInboxStyleTitle,
        locale.parcelsTrackingNotifyInboxStyleDescription,
        detailsInbox,
        payload: jsonEncode(const NotificationAction.openParcelsList()),
      );
    }
  }

  List<_NotificationData> _buildActivityNotifications(
    String groupKey,
    Map<TrackNumberInfo, ShipmentActivityInfo> lastActivities,
    AppLocalizations locale,
  ) {
    final contentList = <_NotificationData>[];
    for (final e in lastActivities.entries) {
      final trackInfo = e.key;
      final lastActivity = e.value;
      final metadata = ShipmentStatusMetadataMapper.ofLocale(
        locale,
        lastActivity.statusType,
      );
      final statusName =
          metadata.localizedName ?? lastActivity.statusDescription;
      final location = lastActivity.activityLocation?.notifyFormat();
      if (statusName == null) {
        continue;
      }
      final title = trackInfo.description ?? trackInfo.trackNumber;
      final subtitle =
          title == trackInfo.trackNumber ? null : trackInfo.trackNumber;
      contentList.add(
        _NotificationData(
          id: hash4(
            groupKey,
            lastActivity.trackNumber,
            lastActivity.statusType.index,
            lastActivity.dateTime,
          ),
          title: title,
          subtitle: subtitle,
          body: [
            '${metadata.emoji} $statusName',
            if (location != null) location,
          ],
          action: NotificationAction.openParcelDetails(
            trackNumber: trackInfo.trackNumber,
          ),
        ),
      );
    }

    return contentList;
  }

  Future<AppLocalizations> _getAppLocale() async {
    final oldLocale = _currentLocale;
    _currentLocale = await (await _pref.locale).when(
      system: () => _platformInfo.currentLocale,
      inner: (locale) => locale.toLocaleString(),
    );
    if (_currentAppLocale == null || _currentLocale != oldLocale) {
      return _currentAppLocale = await loadLocale(_currentLocale!);
    } else {
      return _currentAppLocale!;
    }
  }

  @override
  Future<void> parcelsHardErrorNotify(
    List<TrackNumberInfo> trackInfoList,
  ) async {
    final locale = await _getAppLocale();

    final trackingErrorChannel = _AndroidChannel.trackingError(locale);
    const groupKey = 'org.proninyaroslav.libtretrack.PARCELS_HARD_ERROR';

    final contentList = _buildHardErrorNotifications(
      groupKey,
      trackInfoList,
      locale,
    );
    final ticker =
        '${TrackingErrorMetadata.defaultIcon} ${locale.trackingError}';

    await Future.wait(
      contentList.map((e) {
        final androidDetails = AndroidNotificationDetails(
          trackingErrorChannel.id,
          trackingErrorChannel.name,
          channelDescription: trackingErrorChannel.description,
          groupKey: groupKey,
          ticker: ticker,
          styleInformation: BigTextStyleInformation(
            e.body.first,
            summaryText: e.subtitle,
          ),
          playSound: true,
        );
        final iosDetails = DarwinNotificationDetails(
          subtitle: e.subtitle,
          threadIdentifier: groupKey,
          presentSound: true,
        );
        final linuxDetails = LinuxNotificationDetails(
          defaultActionName: locale.openDetails,
        );
        final details = NotificationDetails(
          android: androidDetails,
          iOS: iosDetails,
          linux: linuxDetails,
        );
        final actionJson = e.action?.toJson();
        return _notifyPlugin.show(
          e.id,
          e.title,
          _platformInfo.isLinux ? e.body.join('\n') : e.body.first,
          details,
          payload: actionJson == null ? null : jsonEncode(actionJson),
        );
      }),
    );

    if (_platformInfo.isAndroid && trackInfoList.length > 1) {
      final androidInboxDetails = AndroidNotificationDetails(
        trackingErrorChannel.id,
        trackingErrorChannel.name,
        channelDescription: trackingErrorChannel.description,
        groupKey: groupKey,
        setAsGroupSummary: true,
        ticker: ticker,
        styleInformation: InboxStyleInformation(
          contentList
              .map(
                (e) => locale.parcelsTrackingNotifyInboxStyleLine(
                  e.title,
                  e.body.first,
                ),
              )
              .toList(),
        ),
        playSound: true,
      );
      final detailsInbox = NotificationDetails(
        android: androidInboxDetails,
      );
      await _notifyPlugin.show(
        trackInfoList.hashCode,
        locale.parcelsTrackingNotifyInboxStyleTitle,
        locale.parcelsTrackingNotifyInboxStyleDescription,
        detailsInbox,
        payload: jsonEncode(const NotificationAction.openParcelsList()),
      );
    }
  }

  List<_NotificationData> _buildHardErrorNotifications(
    String groupKey,
    List<TrackNumberInfo> trackInfoList,
    AppLocalizations locale,
  ) {
    final contentList = <_NotificationData>[];
    for (final trackInfo in trackInfoList) {
      final title = trackInfo.description ?? trackInfo.trackNumber;
      final subtitle =
          title == trackInfo.trackNumber ? null : trackInfo.trackNumber;

      contentList.add(
        _NotificationData(
          id: hash2(groupKey, trackInfo.hashCode),
          title: title,
          subtitle: subtitle,
          body: [
            '${TrackingErrorMetadata.defaultIcon} ${locale.parcelsListHardErrorOccurred}',
          ],
          action: NotificationAction.openParcelDetails(
            trackNumber: trackInfo.trackNumber,
          ),
        ),
      );
    }

    return contentList;
  }

  @override
  Future<void> trackingFailedNotify(
    List<TrackNumberInfo> trackInfoList,
  ) async {
    final locale = await _getAppLocale();
    final trackingErrorChannel = _AndroidChannel.trackingError(locale);
    const groupKey = 'org.proninyaroslav.libtretrack.TRACKING_FAILED';

    final id = hash2(groupKey, trackInfoList.hashCode);
    final title =
        '${TrackingErrorMetadata.defaultIcon} ${locale.trackingFailed}';
    final body = [
      locale.trackingErrorOccured,
      for (final info in trackInfoList)
        locale.parcelsTrackingFailedInboxStyleLine(
          info.description ?? info.trackNumber,
        ),
    ];

    final androidDetails = AndroidNotificationDetails(
      trackingErrorChannel.id,
      trackingErrorChannel.name,
      channelDescription: trackingErrorChannel.description,
      ticker: title,
      playSound: false,
      styleInformation: InboxStyleInformation(body),
    );
    const iosDetails = DarwinNotificationDetails(
      presentSound: false,
    );
    const linuxDetails = LinuxNotificationDetails(
      suppressSound: true,
    );
    final details = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
      linux: linuxDetails,
    );
    await _notifyPlugin.show(id, title, body.join('\n'), details);
  }

  @override
  Future<void> crashReportNotify(CrashInfo info) async {
    final locale = await _getAppLocale();
    final defaultChannel = _AndroidChannel.defaultChan(locale);

    final title = '🐞 ${locale.error}';
    final body = locale.crashDialogSummary;
    final androidDetails = AndroidNotificationDetails(
      defaultChannel.id,
      defaultChannel.name,
      channelDescription: defaultChannel.description,
      ticker: title,
      styleInformation: BigTextStyleInformation(body),
    );
    final linuxDetails = LinuxNotificationDetails(
      defaultActionName: locale.crashDialogReport,
    );
    final details = NotificationDetails(
      android: androidDetails,
      linux: linuxDetails,
    );
    await _notifyPlugin.show(
      info.hashCode,
      title,
      body,
      details,
      payload: jsonEncode(
        NotificationAction.reportCrash(info: info),
      ),
    );
  }

  @override
  Future<void> sendReportErrorNotify(CrashInfo info) async {
    final locale = await _getAppLocale();
    final defaultChannel = _AndroidChannel.defaultChan(locale);

    final title = '🐞 ${locale.error}';
    final body = locale.crashDialogNoEmailApp(
      CrashReportManager.reportEmail,
      locale.projectIssuesPage,
    );
    final androidDetails = AndroidNotificationDetails(
      defaultChannel.id,
      defaultChannel.name,
      channelDescription: defaultChannel.description,
      ticker: title,
      styleInformation: BigTextStyleInformation(body),
    );
    final details = NotificationDetails(
      android: androidDetails,
    );
    await _notifyPlugin.show(
      info.hashCode,
      title,
      body,
      details,
    );
  }
}

class _AndroidChannel {
  final String id;
  final String name;
  final String description;

  _AndroidChannel._({
    required this.id,
    required this.name,
    required this.description,
  });

  _AndroidChannel.parcelsTracking(AppLocalizations locale)
      : this._(
          id: 'org.proninyaroslav.libtretrack.PARCELS_TRACKING_CHANNEL',
          name: locale.parcelsTrackingNotifyChannelTitle,
          description: locale.parcelsTrackingNotifyChannelDescription,
        );
  _AndroidChannel.trackingError(AppLocalizations locale)
      : this._(
          id: 'org.proninyaroslav.libtretrack.TRACKING_ERROR_CHANNEL',
          name: locale.trackingErrorNotifyChannelTitle,
          description: locale.trackingErrorNotifyChannelDescription,
        );
  _AndroidChannel.defaultChan(AppLocalizations locale)
      : this._(
          id: 'org.proninyaroslav.libtretrack.DEFAULT_CHANNEL',
          name: locale.defaultNotifyChannelTitle,
          description: locale.defaultNotifyChannelDescription,
        );
}

class _NotificationData {
  final int id;
  final String title;
  final String? subtitle;
  final List<String> body;
  final NotificationAction? action;

  _NotificationData({
    required this.id,
    required this.title,
    this.subtitle,
    required this.body,
    this.action,
  });

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) {
    return other is _NotificationData && id == other.id;
  }
}

extension AddressExtension on Address {
  String notifyFormat() {
    final locationStr = [
      if (postalCode != null) postalCode,
      if (location != null) location,
      if (countryCode != null) countryCode,
    ];
    return '🌍 ${locationStr.join(', ')}';
  }
}
