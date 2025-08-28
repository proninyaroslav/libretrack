import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_cmn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('cmn'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ru'),
    Locale('sk')
  ];

  /// No description provided for @projectIssuesPage.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/proninyaroslav/libretrack/issues'**
  String get projectIssuesPage;

  /// No description provided for @appChangelogUrl.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md'**
  String get appChangelogUrl;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Private, cross-platform package tracking app.\nMore information and also to help the project: https://github.com/proninyaroslav/libretrack'**
  String get appDescription;

  /// No description provided for @appLicense.
  ///
  /// In en, this message translates to:
  /// **'LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html'**
  String get appLicense;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @accounts.
  ///
  /// In en, this message translates to:
  /// **'Accounts'**
  String get accounts;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @hide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @optionalField.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optionalField;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @selectedCounter.
  ///
  /// In en, this message translates to:
  /// **'Selected: {count}'**
  String selectedCounter(Object count);

  /// No description provided for @noAccounts.
  ///
  /// In en, this message translates to:
  /// **'No accounts'**
  String get noAccounts;

  /// No description provided for @selectAccountType.
  ///
  /// In en, this message translates to:
  /// **'Please select account type'**
  String get selectAccountType;

  /// No description provided for @enterAuthData.
  ///
  /// In en, this message translates to:
  /// **'Enter your authorization data'**
  String get enterAuthData;

  /// No description provided for @allAccountsAlreadyAdded.
  ///
  /// In en, this message translates to:
  /// **'All accounts have already been added'**
  String get allAccountsAlreadyAdded;

  /// No description provided for @addAccount.
  ///
  /// In en, this message translates to:
  /// **'Add account'**
  String get addAccount;

  /// No description provided for @editAccount.
  ///
  /// In en, this message translates to:
  /// **'Edit account'**
  String get editAccount;

  /// No description provided for @deleteAccountDialogMsg.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to delete the selected account?'**
  String get deleteAccountDialogMsg;

  /// No description provided for @pageNotFound.
  ///
  /// In en, this message translates to:
  /// **'Page Not Found'**
  String get pageNotFound;

  /// No description provided for @openLinkFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to open link'**
  String get openLinkFailed;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @accessKey.
  ///
  /// In en, this message translates to:
  /// **'Access Key'**
  String get accessKey;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @companyName.
  ///
  /// In en, this message translates to:
  /// **'Company name'**
  String get companyName;

  /// No description provided for @fieldRequiredError.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequiredError;

  /// No description provided for @addAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to add account'**
  String get addAccountFailed;

  /// No description provided for @editAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit account'**
  String get editAccountFailed;

  /// No description provided for @parcels.
  ///
  /// In en, this message translates to:
  /// **'Packages'**
  String get parcels;

  /// No description provided for @receiverParcels.
  ///
  /// In en, this message translates to:
  /// **'I\'m receiver'**
  String get receiverParcels;

  /// No description provided for @shipperParcels.
  ///
  /// In en, this message translates to:
  /// **'I\'m shipper'**
  String get shipperParcels;

  /// No description provided for @archiveParcels.
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get archiveParcels;

  /// No description provided for @filtersAndSorting.
  ///
  /// In en, this message translates to:
  /// **'Filters and sorting'**
  String get filtersAndSorting;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @sorting.
  ///
  /// In en, this message translates to:
  /// **'Sorting'**
  String get sorting;

  /// No description provided for @noParcels.
  ///
  /// In en, this message translates to:
  /// **'No packages'**
  String get noParcels;

  /// No description provided for @addAccountTip.
  ///
  /// In en, this message translates to:
  /// **'Before tracking packages, you need to add an account'**
  String get addAccountTip;

  /// No description provided for @addParcels.
  ///
  /// In en, this message translates to:
  /// **'Add packages'**
  String get addParcels;

  /// No description provided for @track.
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get track;

  /// No description provided for @trackingNumbers.
  ///
  /// In en, this message translates to:
  /// **'Tracking numbers'**
  String get trackingNumbers;

  /// No description provided for @trackingNumbersFieldHint.
  ///
  /// In en, this message translates to:
  /// **'One per line'**
  String get trackingNumbersFieldHint;

  /// No description provided for @parcelNames.
  ///
  /// In en, this message translates to:
  /// **'Package names'**
  String get parcelNames;

  /// No description provided for @parcelNamesFieldHint.
  ///
  /// In en, this message translates to:
  /// **'Optional. One per line'**
  String get parcelNamesFieldHint;

  /// No description provided for @addParcelsFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to add packages'**
  String get addParcelsFailed;

  /// No description provided for @statusNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'No tracking info yet'**
  String get statusNotAvailable;

  /// No description provided for @statusInfoReceived.
  ///
  /// In en, this message translates to:
  /// **'Info received'**
  String get statusInfoReceived;

  /// No description provided for @statusPickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get statusPickup;

  /// No description provided for @statusInTransit.
  ///
  /// In en, this message translates to:
  /// **'In transit'**
  String get statusInTransit;

  /// No description provided for @statusOutForDelivery.
  ///
  /// In en, this message translates to:
  /// **'Out for delivery'**
  String get statusOutForDelivery;

  /// No description provided for @statusDelivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get statusDelivered;

  /// No description provided for @statusReturnedToShipper.
  ///
  /// In en, this message translates to:
  /// **'Returned to shipper'**
  String get statusReturnedToShipper;

  /// No description provided for @statusNotDelivered.
  ///
  /// In en, this message translates to:
  /// **'Not delivered'**
  String get statusNotDelivered;

  /// No description provided for @statusInStorage.
  ///
  /// In en, this message translates to:
  /// **'In storage'**
  String get statusInStorage;

  /// No description provided for @statusInTransitArrivedWaypoint.
  ///
  /// In en, this message translates to:
  /// **'Arrived at the waypoint'**
  String get statusInTransitArrivedWaypoint;

  /// No description provided for @statusInTransitDepartedWaypoint.
  ///
  /// In en, this message translates to:
  /// **'Departed from the waypoint'**
  String get statusInTransitDepartedWaypoint;

  /// No description provided for @statusExportedFromDepartureCountry.
  ///
  /// In en, this message translates to:
  /// **'Exported from the departure country'**
  String get statusExportedFromDepartureCountry;

  /// No description provided for @statusImportedToDestinationCountry.
  ///
  /// In en, this message translates to:
  /// **'Imported to the destination country'**
  String get statusImportedToDestinationCountry;

  /// No description provided for @statusArrivedAtCustoms.
  ///
  /// In en, this message translates to:
  /// **'Arrived at customs'**
  String get statusArrivedAtCustoms;

  /// No description provided for @statusCustomsClearanceComplete.
  ///
  /// In en, this message translates to:
  /// **'Customs clearance complete'**
  String get statusCustomsClearanceComplete;

  /// No description provided for @trackingErrorNoInfo.
  ///
  /// In en, this message translates to:
  /// **'No tracking info available'**
  String get trackingErrorNoInfo;

  /// No description provided for @trackingErrorUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get trackingErrorUnknown;

  /// No description provided for @trackingErrorNetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error'**
  String get trackingErrorNetwork;

  /// No description provided for @trackingErrorService.
  ///
  /// In en, this message translates to:
  /// **'Service returned an error'**
  String get trackingErrorService;

  /// No description provided for @trackingErrorAuth.
  ///
  /// In en, this message translates to:
  /// **'Authorization error. Please check your account data'**
  String get trackingErrorAuth;

  /// No description provided for @trackingErrorInvalidTrackNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid tracking number'**
  String get trackingErrorInvalidTrackNumber;

  /// No description provided for @trackingErrorMissingAuthData.
  ///
  /// In en, this message translates to:
  /// **'Authorization data missing. Check if you have an account and the data is correct'**
  String get trackingErrorMissingAuthData;

  /// No description provided for @trackingErrorMissingAccount.
  ///
  /// In en, this message translates to:
  /// **'Account is missing. Check if the account has been added and that it supports the selected postal service'**
  String get trackingErrorMissingAccount;

  /// No description provided for @parcelsListHardErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'A hard error has occurred, tracking stopped. Please check details inside'**
  String get parcelsListHardErrorOccurred;

  /// No description provided for @moveToArchive.
  ///
  /// In en, this message translates to:
  /// **'Move to archive'**
  String get moveToArchive;

  /// No description provided for @moveToReceiver.
  ///
  /// In en, this message translates to:
  /// **'Move to incoming list'**
  String get moveToReceiver;

  /// No description provided for @moveToShipper.
  ///
  /// In en, this message translates to:
  /// **'Move to outgoing list'**
  String get moveToShipper;

  /// No description provided for @moveToActive.
  ///
  /// In en, this message translates to:
  /// **'Move to active'**
  String get moveToActive;

  /// No description provided for @markAsRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as read'**
  String get markAsRead;

  /// No description provided for @markAllAsRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all as read'**
  String get markAllAsRead;

  /// No description provided for @deleteParcelDialogMsg.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Are you sure to delete the selected package?} other {Are you sure to delete the selected packages?}}'**
  String deleteParcelDialogMsg(num howMany);

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @refreshAll.
  ///
  /// In en, this message translates to:
  /// **'Refresh all'**
  String get refreshAll;

  /// No description provided for @dataIsSecured.
  ///
  /// In en, this message translates to:
  /// **'Data is stored securely'**
  String get dataIsSecured;

  /// No description provided for @secureStorageIsNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Secure storage is not supported. Data is stored unprotected'**
  String get secureStorageIsNotSupported;

  /// No description provided for @copyTrackNumber.
  ///
  /// In en, this message translates to:
  /// **'Copy tracking number'**
  String get copyTrackNumber;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @unreadParcels.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get unreadParcels;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @postalService.
  ///
  /// In en, this message translates to:
  /// **'Postal service'**
  String get postalService;

  /// No description provided for @sortActivityDateAsc.
  ///
  /// In en, this message translates to:
  /// **'Activity date (newest first)'**
  String get sortActivityDateAsc;

  /// No description provided for @sortActivityDateDesc.
  ///
  /// In en, this message translates to:
  /// **'Activity date (oldest first)'**
  String get sortActivityDateDesc;

  /// No description provided for @sortDateAddedAsc.
  ///
  /// In en, this message translates to:
  /// **'Date added (newest first)'**
  String get sortDateAddedAsc;

  /// No description provided for @sortDateAddedDesc.
  ///
  /// In en, this message translates to:
  /// **'Date added (oldest first)'**
  String get sortDateAddedDesc;

  /// No description provided for @sortAlphabeticallyAsc.
  ///
  /// In en, this message translates to:
  /// **'A - Z'**
  String get sortAlphabeticallyAsc;

  /// No description provided for @sortAlphabeticallyDesc.
  ///
  /// In en, this message translates to:
  /// **'Z - A'**
  String get sortAlphabeticallyDesc;

  /// No description provided for @barcodeScanner.
  ///
  /// In en, this message translates to:
  /// **'Barcode scanner'**
  String get barcodeScanner;

  /// No description provided for @barcodeScanFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to scan barcode'**
  String get barcodeScanFailed;

  /// No description provided for @loadPageFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load page'**
  String get loadPageFailed;

  /// No description provided for @refreshParcelsFailed.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Failed to refresh package} other {Failed to refresh packages}}'**
  String refreshParcelsFailed(num howMany);

  /// No description provided for @deleteParcelsFailed.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Failed to delete package} other {Failed to delete packages}}'**
  String deleteParcelsFailed(num howMany);

  /// No description provided for @moveParcelFailed.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Failed to move package} other {Failed to move packages}}'**
  String moveParcelFailed(num howMany);

  /// No description provided for @markAsReadParcelFailed.
  ///
  /// In en, this message translates to:
  /// **'{howMany, plural, one {Failed to mark package as read} other {Failed to mark packages as read}}'**
  String markAsReadParcelFailed(num howMany);

  /// No description provided for @parcelNotFound.
  ///
  /// In en, this message translates to:
  /// **'Package not found'**
  String get parcelNotFound;

  /// No description provided for @addToMyParcels.
  ///
  /// In en, this message translates to:
  /// **'Add to my packages'**
  String get addToMyParcels;

  /// No description provided for @trackingStartedDate.
  ///
  /// In en, this message translates to:
  /// **'Tracking started: {date}'**
  String trackingStartedDate(Object date);

  /// No description provided for @lastTrackingDate.
  ///
  /// In en, this message translates to:
  /// **'Last tracking: {date}'**
  String lastTrackingDate(Object date);

  /// No description provided for @parcelTrackingStatus.
  ///
  /// In en, this message translates to:
  /// **'Your package is currently tracked. Please wait a few minutes'**
  String get parcelTrackingStatus;

  /// No description provided for @invalidTrackingNumberStatus.
  ///
  /// In en, this message translates to:
  /// **'Invalid tracking number or postal service not supported'**
  String get invalidTrackingNumberStatus;

  /// No description provided for @parcelInTransitStatus.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, zero {Package in transit {days} days} one {Package in transit {days} day} few {Package in transit {days} days} many {Package in transit {days} days} other {Package in transit {days} days}}'**
  String parcelInTransitStatus(num days);

  /// No description provided for @parcelDeliveredStatus.
  ///
  /// In en, this message translates to:
  /// **'Package delivered on {date}'**
  String parcelDeliveredStatus(Object date);

  /// No description provided for @parcelOutForDeliveryStatus.
  ///
  /// In en, this message translates to:
  /// **'Package was out for delivery on {date}'**
  String parcelOutForDeliveryStatus(Object date);

  /// No description provided for @parcelInfoNotAvailableStatus.
  ///
  /// In en, this message translates to:
  /// **'There is no information about the package yet. After a package has been sent, it may take several days before it can be tracked'**
  String get parcelInfoNotAvailableStatus;

  /// No description provided for @trackingStoppedStatus.
  ///
  /// In en, this message translates to:
  /// **'Tracking stopped. Tracking stops if there was a hard error, or the postal service reported that further statuses are not provided'**
  String get trackingStoppedStatus;

  /// No description provided for @activateAndRefresh.
  ///
  /// In en, this message translates to:
  /// **'Activate and refresh'**
  String get activateAndRefresh;

  /// No description provided for @activateTrackingFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to activate tracking'**
  String get activateTrackingFailed;

  /// No description provided for @generateBarcode.
  ///
  /// In en, this message translates to:
  /// **'Generate barcode'**
  String get generateBarcode;

  /// No description provided for @generateBarcodFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to generate barcode: {error}'**
  String generateBarcodFailed(Object error);

  /// No description provided for @editParcelFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit package'**
  String get editParcelFailed;

  /// No description provided for @whoDeliveresParcel.
  ///
  /// In en, this message translates to:
  /// **'Who delivers the package'**
  String get whoDeliveresParcel;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @trackingHistory.
  ///
  /// In en, this message translates to:
  /// **'Tracking history'**
  String get trackingHistory;

  /// No description provided for @activateTracking.
  ///
  /// In en, this message translates to:
  /// **'Activate tracking'**
  String get activateTracking;

  /// No description provided for @noTrackingHistory.
  ///
  /// In en, this message translates to:
  /// **'No tracking history'**
  String get noTrackingHistory;

  /// No description provided for @showError.
  ///
  /// In en, this message translates to:
  /// **'Show error'**
  String get showError;

  /// No description provided for @trackingResponseSuccess.
  ///
  /// In en, this message translates to:
  /// **'Successfully'**
  String get trackingResponseSuccess;

  /// No description provided for @trackingResponseError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get trackingResponseError;

  /// No description provided for @trackingResponseNoInfo.
  ///
  /// In en, this message translates to:
  /// **'No info'**
  String get trackingResponseNoInfo;

  /// No description provided for @trackingResponseStopped.
  ///
  /// In en, this message translates to:
  /// **'Tracking stopped'**
  String get trackingResponseStopped;

  /// No description provided for @trackingErrorReason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get trackingErrorReason;

  /// No description provided for @trackingErrorCode.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get trackingErrorCode;

  /// No description provided for @trackingErrorStackTrace.
  ///
  /// In en, this message translates to:
  /// **'Stack trace'**
  String get trackingErrorStackTrace;

  /// No description provided for @errors.
  ///
  /// In en, this message translates to:
  /// **'Errors'**
  String get errors;

  /// No description provided for @showErrors.
  ///
  /// In en, this message translates to:
  /// **'Show errors'**
  String get showErrors;

  /// No description provided for @parcelDetailsHardErrorOccurred.
  ///
  /// In en, this message translates to:
  /// **'A hard error has occurred, tracking of some services has stopped. Check out the errors before activating tracking'**
  String get parcelDetailsHardErrorOccurred;

  /// No description provided for @deleteAccountFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete account'**
  String get deleteAccountFailed;

  /// No description provided for @activityHistory.
  ///
  /// In en, this message translates to:
  /// **'Activity history'**
  String get activityHistory;

  /// No description provided for @parcelInfo.
  ///
  /// In en, this message translates to:
  /// **'Package info'**
  String get parcelInfo;

  /// No description provided for @parcelSignedBy.
  ///
  /// In en, this message translates to:
  /// **'Signed by: {name}'**
  String parcelSignedBy(Object name);

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get showMore;

  /// No description provided for @shipmentServiceDescription.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get shipmentServiceDescription;

  /// No description provided for @shipmentDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'Delivery date'**
  String get shipmentDeliveryDate;

  /// No description provided for @shipmentSignedBy.
  ///
  /// In en, this message translates to:
  /// **'Signed by'**
  String get shipmentSignedBy;

  /// No description provided for @shipmentScheduledDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'Scheduled delivery date'**
  String get shipmentScheduledDeliveryDate;

  /// No description provided for @shipmentEstimatedDeliveryDate.
  ///
  /// In en, this message translates to:
  /// **'Estimated delivery date'**
  String get shipmentEstimatedDeliveryDate;

  /// No description provided for @shipmentPickupDate.
  ///
  /// In en, this message translates to:
  /// **'Pickup date'**
  String get shipmentPickupDate;

  /// No description provided for @shipmentWeight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get shipmentWeight;

  /// No description provided for @shipmentDimensions.
  ///
  /// In en, this message translates to:
  /// **'Dimensions [(L) x (W) x (H)]'**
  String get shipmentDimensions;

  /// No description provided for @dimensionsUnit.
  ///
  /// In en, this message translates to:
  /// **'{length} x {width} x {height}'**
  String dimensionsUnit(Object height, Object length, Object width);

  /// Volume in cubic meters, liters, etc.
  ///
  /// In en, this message translates to:
  /// **'Volume'**
  String get shipmentVolume;

  /// No description provided for @shipmentCashOnDelivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on delivery'**
  String get shipmentCashOnDelivery;

  /// No description provided for @shipmentDeclaredValue.
  ///
  /// In en, this message translates to:
  /// **'Declared value'**
  String get shipmentDeclaredValue;

  /// No description provided for @shipmentCustomDuty.
  ///
  /// In en, this message translates to:
  /// **'Custom duty'**
  String get shipmentCustomDuty;

  /// No description provided for @shipmentAdditionalRateFee.
  ///
  /// In en, this message translates to:
  /// **'Additional rate fee'**
  String get shipmentAdditionalRateFee;

  /// No description provided for @shipmentShippingRateFee.
  ///
  /// In en, this message translates to:
  /// **'Shipping rate fee'**
  String get shipmentShippingRateFee;

  /// No description provided for @shipmentInsuranceRateFee.
  ///
  /// In en, this message translates to:
  /// **'Insurance rate fee'**
  String get shipmentInsuranceRateFee;

  /// No description provided for @shipmentTypeDescription.
  ///
  /// In en, this message translates to:
  /// **'Shipment type'**
  String get shipmentTypeDescription;

  /// No description provided for @shipmentReceiverAddress.
  ///
  /// In en, this message translates to:
  /// **'Receiver address'**
  String get shipmentReceiverAddress;

  /// No description provided for @shipmentShipperAddress.
  ///
  /// In en, this message translates to:
  /// **'Shipper address'**
  String get shipmentShipperAddress;

  /// No description provided for @shipmentShipper.
  ///
  /// In en, this message translates to:
  /// **'Shipper'**
  String get shipmentShipper;

  /// No description provided for @shipmentReceiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get shipmentReceiver;

  /// No description provided for @kilogramUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} kg'**
  String kilogramUnitShort(Object value);

  /// No description provided for @poundUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} lb'**
  String poundUnitShort(Object value);

  /// No description provided for @ounceUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} oz'**
  String ounceUnitShort(Object value);

  /// No description provided for @literUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} L'**
  String literUnitShort(Object value);

  /// No description provided for @gallonUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} gal'**
  String gallonUnitShort(Object value);

  /// No description provided for @barrelUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} bbl'**
  String barrelUnitShort(Object value);

  /// No description provided for @squareMeterUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} m²'**
  String squareMeterUnitShort(Object value);

  /// No description provided for @squareFeetUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} ft²'**
  String squareFeetUnitShort(Object value);

  /// No description provided for @squareYardUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} yd²'**
  String squareYardUnitShort(Object value);

  /// No description provided for @meterUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} m'**
  String meterUnitShort(Object value);

  /// No description provided for @centimeterUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} cm'**
  String centimeterUnitShort(Object value);

  /// No description provided for @cubicMeterUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} m³'**
  String cubicMeterUnitShort(Object value);

  /// No description provided for @cubicCentimeterUnitShort.
  ///
  /// In en, this message translates to:
  /// **'{value} cm³'**
  String cubicCentimeterUnitShort(Object value);

  /// No description provided for @shipmentAlternateTrackingNumber.
  ///
  /// In en, this message translates to:
  /// **'Alternate tracking number'**
  String get shipmentAlternateTrackingNumber;

  /// No description provided for @parcelMovedToActiveSuccess.
  ///
  /// In en, this message translates to:
  /// **'Moved to active successfully'**
  String get parcelMovedToActiveSuccess;

  /// No description provided for @parcelMovedToArchiveSuccess.
  ///
  /// In en, this message translates to:
  /// **'Moved to archive successfully'**
  String get parcelMovedToArchiveSuccess;

  /// No description provided for @parcelsTrackingNotifyChannelTitle.
  ///
  /// In en, this message translates to:
  /// **'Packages tracking'**
  String get parcelsTrackingNotifyChannelTitle;

  /// No description provided for @parcelsTrackingNotifyChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifications of the packages activity'**
  String get parcelsTrackingNotifyChannelDescription;

  /// No description provided for @parcelsTrackingNotifyInboxStyleLine.
  ///
  /// In en, this message translates to:
  /// **'{title}: {body}'**
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title);

  /// No description provided for @parcelsTrackingNotifyInboxStyleTitle.
  ///
  /// In en, this message translates to:
  /// **'Package tracking'**
  String get parcelsTrackingNotifyInboxStyleTitle;

  /// No description provided for @parcelsTrackingNotifyInboxStyleDescription.
  ///
  /// In en, this message translates to:
  /// **'Packages status are updated'**
  String get parcelsTrackingNotifyInboxStyleDescription;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsAppearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// No description provided for @settingsBehavior.
  ///
  /// In en, this message translates to:
  /// **'Behavior'**
  String get settingsBehavior;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsNotificationsSection.
  ///
  /// In en, this message translates to:
  /// **'Notifications settings'**
  String get settingsNotificationsSection;

  /// No description provided for @settingsTrackingNotifications.
  ///
  /// In en, this message translates to:
  /// **'Package tracking notifications'**
  String get settingsTrackingNotifications;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsSystemLanguageOption.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsSystemLanguageOption;

  /// No description provided for @parcelTrackingLimitedError.
  ///
  /// In en, this message translates to:
  /// **'Tracking is not available, because a little time has passed since the last tracking. Please try again after {time}'**
  String parcelTrackingLimitedError(Object time);

  /// No description provided for @hoursShortFormat.
  ///
  /// In en, this message translates to:
  /// **'{value} h.'**
  String hoursShortFormat(Object value);

  /// No description provided for @minutesShortFormat.
  ///
  /// In en, this message translates to:
  /// **'{value} min.'**
  String minutesShortFormat(Object value);

  /// No description provided for @secondsShortFormat.
  ///
  /// In en, this message translates to:
  /// **'{value} sec.'**
  String secondsShortFormat(Object value);

  /// No description provided for @settingsTrackingSection.
  ///
  /// In en, this message translates to:
  /// **'Tracking settings'**
  String get settingsTrackingSection;

  /// No description provided for @settingsTrackingFreqLimit.
  ///
  /// In en, this message translates to:
  /// **'Tracking frequency limit'**
  String get settingsTrackingFreqLimit;

  /// No description provided for @settingsTrackingFreqLimitSummary.
  ///
  /// In en, this message translates to:
  /// **'No more than once every {time}'**
  String settingsTrackingFreqLimitSummary(Object time);

  /// No description provided for @settingsTrackingFreqFifteenMin.
  ///
  /// In en, this message translates to:
  /// **'15 minutes'**
  String get settingsTrackingFreqFifteenMin;

  /// No description provided for @settingsTrackingFreqThirtyMin.
  ///
  /// In en, this message translates to:
  /// **'30 minutes'**
  String get settingsTrackingFreqThirtyMin;

  /// No description provided for @settingsTrackingFreqFortyFiveMin.
  ///
  /// In en, this message translates to:
  /// **'45 minutes'**
  String get settingsTrackingFreqFortyFiveMin;

  /// No description provided for @settingsTrackingFreqOneHour.
  ///
  /// In en, this message translates to:
  /// **'1 hour'**
  String get settingsTrackingFreqOneHour;

  /// No description provided for @settingsTrackingFreqUnlimited.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get settingsTrackingFreqUnlimited;

  /// No description provided for @settingsAutoTracking.
  ///
  /// In en, this message translates to:
  /// **'Auto tracking'**
  String get settingsAutoTracking;

  /// No description provided for @settingsAutoTrackingFreq.
  ///
  /// In en, this message translates to:
  /// **'Tracking frequency'**
  String get settingsAutoTrackingFreq;

  /// No description provided for @settingsAutoTrackingFreqDescr.
  ///
  /// In en, this message translates to:
  /// **'Specifies the minimum tracking interval. This interval is not accurate and may be increased due to system limitations (no internet connection, power saving mode, etc)'**
  String get settingsAutoTrackingFreqDescr;

  /// No description provided for @settingsAutoTrackingFreqSixHours.
  ///
  /// In en, this message translates to:
  /// **'Every 6 hours'**
  String get settingsAutoTrackingFreqSixHours;

  /// No description provided for @settingsAutoTrackingFreqTwelveHours.
  ///
  /// In en, this message translates to:
  /// **'Every 12 hours'**
  String get settingsAutoTrackingFreqTwelveHours;

  /// No description provided for @settingsAutoTrackingFreqOneDay.
  ///
  /// In en, this message translates to:
  /// **'Once a day'**
  String get settingsAutoTrackingFreqOneDay;

  /// No description provided for @settingsAutoTrackingFreqThreeDays.
  ///
  /// In en, this message translates to:
  /// **'Every 3 days'**
  String get settingsAutoTrackingFreqThreeDays;

  /// No description provided for @settingsAutoTrackingFreqOneWeek.
  ///
  /// In en, this message translates to:
  /// **'Once a week'**
  String get settingsAutoTrackingFreqOneWeek;

  /// No description provided for @settingsTrackingHistorySize.
  ///
  /// In en, this message translates to:
  /// **'Tracking history size'**
  String get settingsTrackingHistorySize;

  /// No description provided for @settingsTrackingHistorySizeDescr.
  ///
  /// In en, this message translates to:
  /// **'Specifies the maximum number of keep entries in the package tracking history'**
  String get settingsTrackingHistorySizeDescr;

  /// No description provided for @settingsTrackingErrorNotifications.
  ///
  /// In en, this message translates to:
  /// **'Tracking error notifications'**
  String get settingsTrackingErrorNotifications;

  /// No description provided for @trackingErrorNotifyChannelTitle.
  ///
  /// In en, this message translates to:
  /// **'Tracking error'**
  String get trackingErrorNotifyChannelTitle;

  /// No description provided for @trackingErrorNotifyChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifications of the packages tracking error'**
  String get trackingErrorNotifyChannelDescription;

  /// No description provided for @trackingError.
  ///
  /// In en, this message translates to:
  /// **'Tracking error'**
  String get trackingError;

  /// No description provided for @trackingFailed.
  ///
  /// In en, this message translates to:
  /// **'Tracking failed'**
  String get trackingFailed;

  /// No description provided for @trackingErrorOccured.
  ///
  /// In en, this message translates to:
  /// **'Error occurred while tracking the following packages:'**
  String get trackingErrorOccured;

  /// No description provided for @parcelsTrackingFailedInboxStyleLine.
  ///
  /// In en, this message translates to:
  /// **'• {parcelName}'**
  String parcelsTrackingFailedInboxStyleLine(Object parcelName);

  /// No description provided for @crashDialogSummary.
  ///
  /// In en, this message translates to:
  /// **'An app error occurred. You can report it to the developers'**
  String get crashDialogSummary;

  /// No description provided for @crashDialogExtraInfo.
  ///
  /// In en, this message translates to:
  /// **'Add extra info and comments here:'**
  String get crashDialogExtraInfo;

  /// No description provided for @crashDialogReport.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get crashDialogReport;

  /// No description provided for @crashDialogMoreDetails.
  ///
  /// In en, this message translates to:
  /// **'More details'**
  String get crashDialogMoreDetails;

  /// No description provided for @crashDialogNoEmailApp.
  ///
  /// In en, this message translates to:
  /// **'No email app found. You can manually copy the error and send it to {email}\nor send on the project page {pageUrl}'**
  String crashDialogNoEmailApp(Object email, Object pageUrl);

  /// No description provided for @defaultNotifyChannelTitle.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultNotifyChannelTitle;

  /// No description provided for @defaultNotifyChannelDescription.
  ///
  /// In en, this message translates to:
  /// **'All notifications that don\'\'t suitable for the other categories'**
  String get defaultNotifyChannelDescription;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutApp;

  /// No description provided for @changelog.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get changelog;

  /// No description provided for @settingsDesktopSection.
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get settingsDesktopSection;

  /// No description provided for @settingsSystemTrayIcon.
  ///
  /// In en, this message translates to:
  /// **'System tray icon'**
  String get settingsSystemTrayIcon;

  /// No description provided for @openDetails.
  ///
  /// In en, this message translates to:
  /// **'Open details'**
  String get openDetails;

  /// No description provided for @shareFailed.
  ///
  /// In en, this message translates to:
  /// **'Unable to share'**
  String get shareFailed;

  /// No description provided for @linuxTrayIconWarning.
  ///
  /// In en, this message translates to:
  /// **'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/'**
  String get linuxTrayIconWarning;

  /// No description provided for @previousPage.
  ///
  /// In en, this message translates to:
  /// **'Previous page'**
  String get previousPage;

  /// No description provided for @nextPage.
  ///
  /// In en, this message translates to:
  /// **'Next page'**
  String get nextPage;

  /// No description provided for @upsAddAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'You need to enter your UPS account authorization information. You can register it here: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US'**
  String get upsAddAccountDescription;

  /// No description provided for @ups.
  ///
  /// In en, this message translates to:
  /// **'UPS'**
  String get ups;

  /// No description provided for @russianPost.
  ///
  /// In en, this message translates to:
  /// **'Russian Post'**
  String get russianPost;

  /// No description provided for @russianPostAddAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'1. Register on the Russian Post website: https://www.pochta.ru/\n2. Go to Access Settings, enable the tracking API and agree to the terms of service: https://tracking.pochta.ru/access-settings\n3. In the Access Settings, copy the login (generated automatically). The password will be sent to the e-mail, provided during registration.'**
  String get russianPostAddAccountDescription;

  /// No description provided for @usps.
  ///
  /// In en, this message translates to:
  /// **'USPS'**
  String get usps;

  /// No description provided for @uspsAddAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'1. Register on the USPS Web Tools API Portal website: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. During registration, to the question \"How will you be using the USPS Web Tools?\" please answer \"Exclusively on my Web site\".\n3. After registration, the authorization data will be sent to the specified e-mail. Copy \"Username\" and \"Company\" (which was specified during registration strings.'**
  String get uspsAddAccountDescription;

  /// No description provided for @postNord.
  ///
  /// In en, this message translates to:
  /// **'PostNord'**
  String get postNord;

  /// No description provided for @apiKey.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get apiKey;

  /// No description provided for @postNordAddAccountDescription.
  ///
  /// In en, this message translates to:
  /// **'API key is required for authorization. It can be obtained in several ways. Take an existing one (for example, find the package named «postnord» on https://www.npmjs.com/ and search in the source code), or register it (as a legal person):\n\n1. Register as a customer or partner on https://developer.postnord.com/\n2. Copy API key from this page: https://atdeveloper.postnord.com/admin/applications. If there is no key, click the «Create new application» button.'**
  String get postNordAddAccountDescription;

  /// No description provided for @barcodeGeneratorShowQrCode.
  ///
  /// In en, this message translates to:
  /// **'Show QR'**
  String get barcodeGeneratorShowQrCode;

  /// No description provided for @barcodeGeneratorShowBarcodeCode.
  ///
  /// In en, this message translates to:
  /// **'Show barcode'**
  String get barcodeGeneratorShowBarcodeCode;

  /// No description provided for @shipmentCustomerType.
  ///
  /// In en, this message translates to:
  /// **'Type of shipment'**
  String get shipmentCustomerType;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'cmn',
        'en',
        'es',
        'fr',
        'it',
        'ru',
        'sk'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'cmn':
      return AppLocalizationsCmn();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
