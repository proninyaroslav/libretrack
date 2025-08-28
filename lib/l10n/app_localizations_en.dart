// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Private, cross-platform package tracking app.\nMore information and also to help the project: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get cancel => 'Cancel';

  @override
  String get accounts => 'Accounts';

  @override
  String get add => 'Add';

  @override
  String get delete => 'Delete';

  @override
  String get apply => 'Apply';

  @override
  String get close => 'Close';

  @override
  String get hide => 'Hide';

  @override
  String get show => 'Show';

  @override
  String get all => 'All';

  @override
  String get edit => 'Edit';

  @override
  String get name => 'Name';

  @override
  String get open => 'Open';

  @override
  String get optionalField => 'Optional';

  @override
  String get selectAll => 'Select all';

  @override
  String selectedCounter(Object count) {
    return 'Selected: $count';
  }

  @override
  String get noAccounts => 'No accounts';

  @override
  String get selectAccountType => 'Please select account type';

  @override
  String get enterAuthData => 'Enter your authorization data';

  @override
  String get allAccountsAlreadyAdded => 'All accounts have already been added';

  @override
  String get addAccount => 'Add account';

  @override
  String get editAccount => 'Edit account';

  @override
  String get deleteAccountDialogMsg =>
      'Are you sure to delete the selected account?';

  @override
  String get pageNotFound => 'Page Not Found';

  @override
  String get openLinkFailed => 'Unable to open link';

  @override
  String get login => 'Login';

  @override
  String get password => 'Password';

  @override
  String get accessKey => 'Access Key';

  @override
  String get username => 'Username';

  @override
  String get companyName => 'Company name';

  @override
  String get fieldRequiredError => 'This field is required';

  @override
  String get addAccountFailed => 'Failed to add account';

  @override
  String get editAccountFailed => 'Failed to edit account';

  @override
  String get parcels => 'Packages';

  @override
  String get receiverParcels => 'I\'m receiver';

  @override
  String get shipperParcels => 'I\'m shipper';

  @override
  String get archiveParcels => 'Archive';

  @override
  String get filtersAndSorting => 'Filters and sorting';

  @override
  String get filters => 'Filters';

  @override
  String get sorting => 'Sorting';

  @override
  String get noParcels => 'No packages';

  @override
  String get addAccountTip =>
      'Before tracking packages, you need to add an account';

  @override
  String get addParcels => 'Add packages';

  @override
  String get track => 'Track';

  @override
  String get trackingNumbers => 'Tracking numbers';

  @override
  String get trackingNumbersFieldHint => 'One per line';

  @override
  String get parcelNames => 'Package names';

  @override
  String get parcelNamesFieldHint => 'Optional. One per line';

  @override
  String get addParcelsFailed => 'Failed to add packages';

  @override
  String get statusNotAvailable => 'No tracking info yet';

  @override
  String get statusInfoReceived => 'Info received';

  @override
  String get statusPickup => 'Pickup';

  @override
  String get statusInTransit => 'In transit';

  @override
  String get statusOutForDelivery => 'Out for delivery';

  @override
  String get statusDelivered => 'Delivered';

  @override
  String get statusReturnedToShipper => 'Returned to shipper';

  @override
  String get statusNotDelivered => 'Not delivered';

  @override
  String get statusInStorage => 'In storage';

  @override
  String get statusInTransitArrivedWaypoint => 'Arrived at the waypoint';

  @override
  String get statusInTransitDepartedWaypoint => 'Departed from the waypoint';

  @override
  String get statusExportedFromDepartureCountry =>
      'Exported from the departure country';

  @override
  String get statusImportedToDestinationCountry =>
      'Imported to the destination country';

  @override
  String get statusArrivedAtCustoms => 'Arrived at customs';

  @override
  String get statusCustomsClearanceComplete => 'Customs clearance complete';

  @override
  String get trackingErrorNoInfo => 'No tracking info available';

  @override
  String get trackingErrorUnknown => 'Unknown error';

  @override
  String get trackingErrorNetwork => 'Network error';

  @override
  String get trackingErrorService => 'Service returned an error';

  @override
  String get trackingErrorAuth =>
      'Authorization error. Please check your account data';

  @override
  String get trackingErrorInvalidTrackNumber => 'Invalid tracking number';

  @override
  String get trackingErrorMissingAuthData =>
      'Authorization data missing. Check if you have an account and the data is correct';

  @override
  String get trackingErrorMissingAccount =>
      'Account is missing. Check if the account has been added and that it supports the selected postal service';

  @override
  String get parcelsListHardErrorOccurred =>
      'A hard error has occurred, tracking stopped. Please check details inside';

  @override
  String get moveToArchive => 'Move to archive';

  @override
  String get moveToReceiver => 'Move to incoming list';

  @override
  String get moveToShipper => 'Move to outgoing list';

  @override
  String get moveToActive => 'Move to active';

  @override
  String get markAsRead => 'Mark as read';

  @override
  String get markAllAsRead => 'Mark all as read';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Are you sure to delete the selected packages?',
      one: 'Are you sure to delete the selected package?',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Refresh';

  @override
  String get refreshAll => 'Refresh all';

  @override
  String get dataIsSecured => 'Data is stored securely';

  @override
  String get secureStorageIsNotSupported =>
      'Secure storage is not supported. Data is stored unprotected';

  @override
  String get copyTrackNumber => 'Copy tracking number';

  @override
  String get share => 'Share';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get status => 'Status';

  @override
  String get unreadParcels => 'Unread';

  @override
  String get error => 'Error';

  @override
  String get postalService => 'Postal service';

  @override
  String get sortActivityDateAsc => 'Activity date (newest first)';

  @override
  String get sortActivityDateDesc => 'Activity date (oldest first)';

  @override
  String get sortDateAddedAsc => 'Date added (newest first)';

  @override
  String get sortDateAddedDesc => 'Date added (oldest first)';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => 'Barcode scanner';

  @override
  String get barcodeScanFailed => 'Failed to scan barcode';

  @override
  String get loadPageFailed => 'Failed to load page';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Failed to refresh packages',
      one: 'Failed to refresh package',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Failed to delete packages',
      one: 'Failed to delete package',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Failed to move packages',
      one: 'Failed to move package',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Failed to mark packages as read',
      one: 'Failed to mark package as read',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Package not found';

  @override
  String get addToMyParcels => 'Add to my packages';

  @override
  String trackingStartedDate(Object date) {
    return 'Tracking started: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Last tracking: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Your package is currently tracked. Please wait a few minutes';

  @override
  String get invalidTrackingNumberStatus =>
      'Invalid tracking number or postal service not supported';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Package in transit $days days',
      many: 'Package in transit $days days',
      few: 'Package in transit $days days',
      one: 'Package in transit $days day',
      zero: 'Package in transit $days days',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Package delivered on $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Package was out for delivery on $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'There is no information about the package yet. After a package has been sent, it may take several days before it can be tracked';

  @override
  String get trackingStoppedStatus =>
      'Tracking stopped. Tracking stops if there was a hard error, or the postal service reported that further statuses are not provided';

  @override
  String get activateAndRefresh => 'Activate and refresh';

  @override
  String get activateTrackingFailed => 'Failed to activate tracking';

  @override
  String get generateBarcode => 'Generate barcode';

  @override
  String generateBarcodFailed(Object error) {
    return 'Failed to generate barcode: $error';
  }

  @override
  String get editParcelFailed => 'Failed to edit package';

  @override
  String get whoDeliveresParcel => 'Who delivers the package';

  @override
  String get details => 'Details';

  @override
  String get trackingHistory => 'Tracking history';

  @override
  String get activateTracking => 'Activate tracking';

  @override
  String get noTrackingHistory => 'No tracking history';

  @override
  String get showError => 'Show error';

  @override
  String get trackingResponseSuccess => 'Successfully';

  @override
  String get trackingResponseError => 'Error';

  @override
  String get trackingResponseNoInfo => 'No info';

  @override
  String get trackingResponseStopped => 'Tracking stopped';

  @override
  String get trackingErrorReason => 'Reason';

  @override
  String get trackingErrorCode => 'Code';

  @override
  String get trackingErrorStackTrace => 'Stack trace';

  @override
  String get errors => 'Errors';

  @override
  String get showErrors => 'Show errors';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'A hard error has occurred, tracking of some services has stopped. Check out the errors before activating tracking';

  @override
  String get deleteAccountFailed => 'Failed to delete account';

  @override
  String get activityHistory => 'Activity history';

  @override
  String get parcelInfo => 'Package info';

  @override
  String parcelSignedBy(Object name) {
    return 'Signed by: $name';
  }

  @override
  String get showMore => 'Show more';

  @override
  String get shipmentServiceDescription => 'Service';

  @override
  String get shipmentDeliveryDate => 'Delivery date';

  @override
  String get shipmentSignedBy => 'Signed by';

  @override
  String get shipmentScheduledDeliveryDate => 'Scheduled delivery date';

  @override
  String get shipmentEstimatedDeliveryDate => 'Estimated delivery date';

  @override
  String get shipmentPickupDate => 'Pickup date';

  @override
  String get shipmentWeight => 'Weight';

  @override
  String get shipmentDimensions => 'Dimensions [(L) x (W) x (H)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Volume';

  @override
  String get shipmentCashOnDelivery => 'Cash on delivery';

  @override
  String get shipmentDeclaredValue => 'Declared value';

  @override
  String get shipmentCustomDuty => 'Custom duty';

  @override
  String get shipmentAdditionalRateFee => 'Additional rate fee';

  @override
  String get shipmentShippingRateFee => 'Shipping rate fee';

  @override
  String get shipmentInsuranceRateFee => 'Insurance rate fee';

  @override
  String get shipmentTypeDescription => 'Shipment type';

  @override
  String get shipmentReceiverAddress => 'Receiver address';

  @override
  String get shipmentShipperAddress => 'Shipper address';

  @override
  String get shipmentShipper => 'Shipper';

  @override
  String get shipmentReceiver => 'Receiver';

  @override
  String kilogramUnitShort(Object value) {
    return '$value kg';
  }

  @override
  String poundUnitShort(Object value) {
    return '$value lb';
  }

  @override
  String ounceUnitShort(Object value) {
    return '$value oz';
  }

  @override
  String literUnitShort(Object value) {
    return '$value L';
  }

  @override
  String gallonUnitShort(Object value) {
    return '$value gal';
  }

  @override
  String barrelUnitShort(Object value) {
    return '$value bbl';
  }

  @override
  String squareMeterUnitShort(Object value) {
    return '$value m²';
  }

  @override
  String squareFeetUnitShort(Object value) {
    return '$value ft²';
  }

  @override
  String squareYardUnitShort(Object value) {
    return '$value yd²';
  }

  @override
  String meterUnitShort(Object value) {
    return '$value m';
  }

  @override
  String centimeterUnitShort(Object value) {
    return '$value cm';
  }

  @override
  String cubicMeterUnitShort(Object value) {
    return '$value m³';
  }

  @override
  String cubicCentimeterUnitShort(Object value) {
    return '$value cm³';
  }

  @override
  String get shipmentAlternateTrackingNumber => 'Alternate tracking number';

  @override
  String get parcelMovedToActiveSuccess => 'Moved to active successfully';

  @override
  String get parcelMovedToArchiveSuccess => 'Moved to archive successfully';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Packages tracking';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Notifications of the packages activity';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Package tracking';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'Packages status are updated';

  @override
  String get settings => 'Settings';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsBehavior => 'Behavior';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsNotificationsSection => 'Notifications settings';

  @override
  String get settingsTrackingNotifications => 'Package tracking notifications';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsSystemLanguageOption => 'System';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'Tracking is not available, because a little time has passed since the last tracking. Please try again after $time';
  }

  @override
  String hoursShortFormat(Object value) {
    return '$value h.';
  }

  @override
  String minutesShortFormat(Object value) {
    return '$value min.';
  }

  @override
  String secondsShortFormat(Object value) {
    return '$value sec.';
  }

  @override
  String get settingsTrackingSection => 'Tracking settings';

  @override
  String get settingsTrackingFreqLimit => 'Tracking frequency limit';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'No more than once every $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15 minutes';

  @override
  String get settingsTrackingFreqThirtyMin => '30 minutes';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45 minutes';

  @override
  String get settingsTrackingFreqOneHour => '1 hour';

  @override
  String get settingsTrackingFreqUnlimited => 'Unlimited';

  @override
  String get settingsAutoTracking => 'Auto tracking';

  @override
  String get settingsAutoTrackingFreq => 'Tracking frequency';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Specifies the minimum tracking interval. This interval is not accurate and may be increased due to system limitations (no internet connection, power saving mode, etc)';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Every 6 hours';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Every 12 hours';

  @override
  String get settingsAutoTrackingFreqOneDay => 'Once a day';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Every 3 days';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'Once a week';

  @override
  String get settingsTrackingHistorySize => 'Tracking history size';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Specifies the maximum number of keep entries in the package tracking history';

  @override
  String get settingsTrackingErrorNotifications =>
      'Tracking error notifications';

  @override
  String get trackingErrorNotifyChannelTitle => 'Tracking error';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Notifications of the packages tracking error';

  @override
  String get trackingError => 'Tracking error';

  @override
  String get trackingFailed => 'Tracking failed';

  @override
  String get trackingErrorOccured =>
      'Error occurred while tracking the following packages:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary =>
      'An app error occurred. You can report it to the developers';

  @override
  String get crashDialogExtraInfo => 'Add extra info and comments here:';

  @override
  String get crashDialogReport => 'Report';

  @override
  String get crashDialogMoreDetails => 'More details';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'No email app found. You can manually copy the error and send it to $email\nor send on the project page $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'Default';

  @override
  String get defaultNotifyChannelDescription =>
      'All notifications that don\'\'t suitable for the other categories';

  @override
  String get aboutApp => 'About';

  @override
  String get changelog => 'Changelog';

  @override
  String get settingsDesktopSection => 'Desktop';

  @override
  String get settingsSystemTrayIcon => 'System tray icon';

  @override
  String get openDetails => 'Open details';

  @override
  String get shareFailed => 'Unable to share';

  @override
  String get linuxTrayIconWarning =>
      'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Previous page';

  @override
  String get nextPage => 'Next page';

  @override
  String get upsAddAccountDescription =>
      'You need to enter your UPS account authorization information. You can register it here: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US';

  @override
  String get ups => 'UPS';

  @override
  String get russianPost => 'Russian Post';

  @override
  String get russianPostAddAccountDescription =>
      '1. Register on the Russian Post website: https://www.pochta.ru/\n2. Go to Access Settings, enable the tracking API and agree to the terms of service: https://tracking.pochta.ru/access-settings\n3. In the Access Settings, copy the login (generated automatically). The password will be sent to the e-mail, provided during registration.';

  @override
  String get usps => 'USPS';

  @override
  String get uspsAddAccountDescription =>
      '1. Register on the USPS Web Tools API Portal website: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. During registration, to the question \"How will you be using the USPS Web Tools?\" please answer \"Exclusively on my Web site\".\n3. After registration, the authorization data will be sent to the specified e-mail. Copy \"Username\" and \"Company\" (which was specified during registration strings.';

  @override
  String get postNord => 'PostNord';

  @override
  String get apiKey => 'API key';

  @override
  String get postNordAddAccountDescription =>
      'API key is required for authorization. It can be obtained in several ways. Take an existing one (for example, find the package named «postnord» on https://www.npmjs.com/ and search in the source code), or register it (as a legal person):\n\n1. Register as a customer or partner on https://developer.postnord.com/\n2. Copy API key from this page: https://atdeveloper.postnord.com/admin/applications. If there is no key, click the «Create new application» button.';

  @override
  String get barcodeGeneratorShowQrCode => 'Show QR';

  @override
  String get barcodeGeneratorShowBarcodeCode => 'Show barcode';

  @override
  String get shipmentCustomerType => 'Type of shipment';
}
