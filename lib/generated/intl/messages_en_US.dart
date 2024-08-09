// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en_US';

  static m0(value) => "${value} bbl";

  static m1(value) => "${value} cm";

  static m2(email, pageUrl) => "No email app found. You can manually copy the error and send it to ${email}\nor send on the project page ${pageUrl}";

  static m3(value) => "${value} cm³";

  static m4(value) => "${value} m³";

  static m5(howMany) => "${Intl.plural(howMany, one: 'Are you sure to delete the selected package?', other: 'Are you sure to delete the selected packages?')}";

  static m6(howMany) => "${Intl.plural(howMany, one: 'Failed to delete package', other: 'Failed to delete packages')}";

  static m7(length, width, height) => "${length} x ${width} x ${height}";

  static m8(value) => "${value} gal";

  static m9(error) => "Failed to generate barcode: ${error}";

  static m10(value) => "${value} h.";

  static m11(value) => "${value} kg";

  static m12(date) => "Last tracking: ${date}";

  static m13(value) => "${value} L";

  static m14(howMany) => "${Intl.plural(howMany, one: 'Failed to mark package as read', other: 'Failed to mark packages as read')}";

  static m15(value) => "${value} m";

  static m16(value) => "${value} min.";

  static m17(howMany) => "${Intl.plural(howMany, one: 'Failed to move package', other: 'Failed to move packages')}";

  static m18(value) => "${value} oz";

  static m19(date) => "Package delivered on ${date}";

  static m20(days) => "${Intl.plural(days, zero: 'Package in transit ${days} days', one: 'Package in transit ${days} day', few: 'Package in transit ${days} days', many: 'Package in transit ${days} days', other: 'Package in transit ${days} days')}";

  static m21(date) => "Package was out for delivery on ${date}";

  static m22(name) => "Signed by: ${name}";

  static m23(time) => "Tracking is not available, because a little time has passed since the last tracking. Please try again after ${time}";

  static m24(parcelName) => "• ${parcelName}";

  static m25(title, body) => "${title}: ${body}";

  static m26(value) => "${value} lb";

  static m27(howMany) => "${Intl.plural(howMany, one: 'Failed to refresh package', other: 'Failed to refresh packages')}";

  static m28(value) => "${value} sec.";

  static m29(count) => "Selected: ${count}";

  static m30(time) => "No more than once every ${time}";

  static m31(value) => "${value} ft²";

  static m32(value) => "${value} m²";

  static m33(value) => "${value} yd²";

  static m34(date) => "Tracking started: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("About"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Access Key"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Accounts"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Activate and refresh"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Activate tracking"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Failed to activate tracking"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Active"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("Activity history"),
    "add" : MessageLookupByLibrary.simpleMessage("Add"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Add account"),
    "addAccountFailed" : MessageLookupByLibrary.simpleMessage("Failed to add account"),
    "addAccountTip" : MessageLookupByLibrary.simpleMessage("Before tracking packages, you need to add an account"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Add packages"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Failed to add packages"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Add to my packages"),
    "all" : MessageLookupByLibrary.simpleMessage("All"),
    "allAccountsAlreadyAdded" : MessageLookupByLibrary.simpleMessage("All accounts have already been added"),
    "apiKey" : MessageLookupByLibrary.simpleMessage("API key"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("Private, cross-platform package tracking app.\nMore information and also to help the project: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Apply"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Archive"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Failed to scan barcode"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Barcode scanner"),
    "barrelUnitShort" : m0,
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "centimeterUnitShort" : m1,
    "changelog" : MessageLookupByLibrary.simpleMessage("Changelog"),
    "close" : MessageLookupByLibrary.simpleMessage("Close"),
    "companyName" : MessageLookupByLibrary.simpleMessage("Company name"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Copied to clipboard"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Copy tracking number"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Add extra info and comments here:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("More details"),
    "crashDialogNoEmailApp" : m2,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Report"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("An app error occurred. You can report it to the developers"),
    "cubicCentimeterUnitShort" : m3,
    "cubicMeterUnitShort" : m4,
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("Data is stored securely"),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("All notifications that don\'\'t suitable for the other categories"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Default"),
    "delete" : MessageLookupByLibrary.simpleMessage("Delete"),
    "deleteAccountDialogMsg" : MessageLookupByLibrary.simpleMessage("Are you sure to delete the selected account?"),
    "deleteAccountFailed" : MessageLookupByLibrary.simpleMessage("Failed to delete account"),
    "deleteParcelDialogMsg" : m5,
    "deleteParcelsFailed" : m6,
    "details" : MessageLookupByLibrary.simpleMessage("Details"),
    "dimensionsUnit" : m7,
    "edit" : MessageLookupByLibrary.simpleMessage("Edit"),
    "editAccount" : MessageLookupByLibrary.simpleMessage("Edit account"),
    "editAccountFailed" : MessageLookupByLibrary.simpleMessage("Failed to edit account"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Failed to edit package"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Enter your authorization data"),
    "error" : MessageLookupByLibrary.simpleMessage("Error"),
    "errors" : MessageLookupByLibrary.simpleMessage("Errors"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("This field is required"),
    "filters" : MessageLookupByLibrary.simpleMessage("Filters"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Filters and sorting"),
    "gallonUnitShort" : m8,
    "generateBarcodFailed" : m9,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Generate barcode"),
    "hide" : MessageLookupByLibrary.simpleMessage("Hide"),
    "hoursShortFormat" : m10,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Invalid tracking number or postal service not supported"),
    "kilogramUnitShort" : m11,
    "lastTrackingDate" : m12,
    "linuxTrayIconWarning" : MessageLookupByLibrary.simpleMessage("Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/"),
    "literUnitShort" : m13,
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Failed to load page"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Mark all as read"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Mark as read"),
    "markAsReadParcelFailed" : m14,
    "meterUnitShort" : m15,
    "minutesShortFormat" : m16,
    "moveParcelFailed" : m17,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Move to active"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Move to archive"),
    "name" : MessageLookupByLibrary.simpleMessage("Name"),
    "nextPage" : MessageLookupByLibrary.simpleMessage("Next page"),
    "no" : MessageLookupByLibrary.simpleMessage("No"),
    "noAccounts" : MessageLookupByLibrary.simpleMessage("No accounts"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("No packages"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("No tracking history"),
    "open" : MessageLookupByLibrary.simpleMessage("Open"),
    "openDetails" : MessageLookupByLibrary.simpleMessage("Open details"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("Unable to open link"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Optional"),
    "ounceUnitShort" : m18,
    "pageNotFound" : MessageLookupByLibrary.simpleMessage("Page Not Found"),
    "parcelDeliveredStatus" : m19,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("A hard error has occurred, tracking of some services has stopped. Check out the errors before activating tracking"),
    "parcelInTransitStatus" : m20,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Package info"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("There is no information about the package yet. After a package has been sent, it may take several days before it can be tracked"),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Moved to active successfully"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Moved to archive successfully"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Package names"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Optional. One per line"),
    "parcelNotFound" : MessageLookupByLibrary.simpleMessage("Package not found"),
    "parcelOutForDeliveryStatus" : m21,
    "parcelSignedBy" : m22,
    "parcelTrackingLimitedError" : m23,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Your package is currently tracked. Please wait a few minutes"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Packages"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("A hard error has occurred, tracking stopped. Please check details inside"),
    "parcelsTrackingFailedInboxStyleLine" : m24,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications of the packages activity"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Packages tracking"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("Packages status are updated"),
    "parcelsTrackingNotifyInboxStyleLine" : m25,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Package tracking"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "postNord" : MessageLookupByLibrary.simpleMessage("PostNord"),
    "postNordAddAccountDescription" : MessageLookupByLibrary.simpleMessage("API key is required for authorization. It can be obtained in several ways. Take an existing one (for example, find the package named «postnord» on https://www.npmjs.com/ and search in the source code), or register it (as a legal person):\n\n1. Register as a customer or partner on https://developer.postnord.com/\n2. Copy API key from this page: https://atdeveloper.postnord.com/admin/applications. If there is no key, click the «Create new application» button."),
    "postalService" : MessageLookupByLibrary.simpleMessage("Postal service"),
    "poundUnitShort" : m26,
    "previousPage" : MessageLookupByLibrary.simpleMessage("Previous page"),
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Refresh"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Refresh all"),
    "refreshParcelsFailed" : m27,
    "russianPost" : MessageLookupByLibrary.simpleMessage("Russian Post"),
    "russianPostAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1. Register on the Russian Post website: https://www.pochta.ru/\n2. Go to Access Settings, enable the tracking API and agree to the terms of service: https://tracking.pochta.ru/access-settings\n3. In the Access Settings, copy the login (generated automatically). The password will be sent to the e-mail, provided during registration."),
    "secondsShortFormat" : m28,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("Secure storage is not supported. Data is stored unprotected"),
    "selectAccountType" : MessageLookupByLibrary.simpleMessage("Please select account type"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Select all"),
    "selectedCounter" : m29,
    "settings" : MessageLookupByLibrary.simpleMessage("Settings"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Appearance"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Auto tracking"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Tracking frequency"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Specifies the minimum tracking interval. This interval is not accurate and may be increased due to system limitations (no internet connection, power saving mode, etc)"),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("Once a day"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("Once a week"),
    "settingsAutoTrackingFreqSixHours" : MessageLookupByLibrary.simpleMessage("Every 6 hours"),
    "settingsAutoTrackingFreqThreeDays" : MessageLookupByLibrary.simpleMessage("Every 3 days"),
    "settingsAutoTrackingFreqTwelveHours" : MessageLookupByLibrary.simpleMessage("Every 12 hours"),
    "settingsBehavior" : MessageLookupByLibrary.simpleMessage("Behavior"),
    "settingsDesktopSection" : MessageLookupByLibrary.simpleMessage("Desktop"),
    "settingsLanguage" : MessageLookupByLibrary.simpleMessage("Language"),
    "settingsNotificationsSection" : MessageLookupByLibrary.simpleMessage("Notifications settings"),
    "settingsSystemLanguageOption" : MessageLookupByLibrary.simpleMessage("System"),
    "settingsSystemTrayIcon" : MessageLookupByLibrary.simpleMessage("System tray icon"),
    "settingsTheme" : MessageLookupByLibrary.simpleMessage("Theme"),
    "settingsThemeDark" : MessageLookupByLibrary.simpleMessage("Dark"),
    "settingsThemeLight" : MessageLookupByLibrary.simpleMessage("Light"),
    "settingsThemeSystem" : MessageLookupByLibrary.simpleMessage("System"),
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Tracking error notifications"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 minutes"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 minutes"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Tracking frequency limit"),
    "settingsTrackingFreqLimitSummary" : m30,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 hour"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 minutes"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Tracking history size"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Specifies the maximum number of keep entries in the package tracking history"),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Package tracking notifications"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Tracking settings"),
    "share" : MessageLookupByLibrary.simpleMessage("Share"),
    "shareFailed" : MessageLookupByLibrary.simpleMessage("Unable to share"),
    "shipmentAdditionalRateFee" : MessageLookupByLibrary.simpleMessage("Additional rate fee"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("Alternate tracking number"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Cash on delivery"),
    "shipmentCustomDuty" : MessageLookupByLibrary.simpleMessage("Custom duty"),
    "shipmentDeclaredValue" : MessageLookupByLibrary.simpleMessage("Declared value"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Delivery date"),
    "shipmentDimensions" : MessageLookupByLibrary.simpleMessage("Dimensions [(L) x (W) x (H)]"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Estimated delivery date"),
    "shipmentInsuranceRateFee" : MessageLookupByLibrary.simpleMessage("Insurance rate fee"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Pickup date"),
    "shipmentReceiver" : MessageLookupByLibrary.simpleMessage("Receiver"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Receiver address"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Scheduled delivery date"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Service"),
    "shipmentShipper" : MessageLookupByLibrary.simpleMessage("Shipper"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Shipper address"),
    "shipmentShippingRateFee" : MessageLookupByLibrary.simpleMessage("Shipping rate fee"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Signed by"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Shipment type"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Volume"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Weight"),
    "show" : MessageLookupByLibrary.simpleMessage("Show"),
    "showError" : MessageLookupByLibrary.simpleMessage("Show error"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Show errors"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Show more"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Activity date (newest first)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Activity date (oldest first)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("A - Z"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Z - A"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Date added (newest first)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Date added (oldest first)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Sorting"),
    "squareFeetUnitShort" : m31,
    "squareMeterUnitShort" : m32,
    "squareYardUnitShort" : m33,
    "status" : MessageLookupByLibrary.simpleMessage("Status"),
    "statusArrivedAtCustoms" : MessageLookupByLibrary.simpleMessage("Arrived at customs"),
    "statusCustomsClearanceComplete" : MessageLookupByLibrary.simpleMessage("Customs clearance complete"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Delivered"),
    "statusExportedFromDepartureCountry" : MessageLookupByLibrary.simpleMessage("Exported from the departure country"),
    "statusImportedToDestinationCountry" : MessageLookupByLibrary.simpleMessage("Imported to the destination country"),
    "statusInStorage" : MessageLookupByLibrary.simpleMessage("In storage"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("In transit"),
    "statusInTransitArrivedWaypoint" : MessageLookupByLibrary.simpleMessage("Arrived at the waypoint"),
    "statusInTransitDepartedWaypoint" : MessageLookupByLibrary.simpleMessage("Departed from the waypoint"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Info received"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("No tracking info yet"),
    "statusNotDelivered" : MessageLookupByLibrary.simpleMessage("Not delivered"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("Out for delivery"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Pickup"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Returned to shipper"),
    "track" : MessageLookupByLibrary.simpleMessage("Track"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Tracking error"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Authorization error. Please check your account data"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Code"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Invalid tracking number"),
    "trackingErrorMissingAccount" : MessageLookupByLibrary.simpleMessage("Account is missing. Check if the account has been added and that it supports the selected postal service"),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Authorization data missing. Check if you have an account and the data is correct"),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Network error"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("No tracking info available"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications of the packages tracking error"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Tracking error"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("Error occurred while tracking the following packages:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Reason"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("Service returned an error"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Stack trace"),
    "trackingErrorUnknown" : MessageLookupByLibrary.simpleMessage("Unknown error"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Tracking failed"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("Tracking history"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("Tracking numbers"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("One per line"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Error"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("No info"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Successfully"),
    "trackingStartedDate" : m34,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Tracking stopped. Tracking stops if there was a hard error, or the postal service reported that further statuses are not provided"),
    "unreadParcels" : MessageLookupByLibrary.simpleMessage("Unread"),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "upsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("You need to enter your UPS account authorization information. You can register it here: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US"),
    "username" : MessageLookupByLibrary.simpleMessage("Username"),
    "usps" : MessageLookupByLibrary.simpleMessage("USPS"),
    "uspsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1. Register on the USPS Web Tools API Portal website: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. During registration, to the question \"How will you be using the USPS Web Tools?\" please answer \"Exclusively on my Web site\".\n3. After registration, the authorization data will be sent to the specified e-mail. Copy \"Username\" and \"Company\" (which was specified during registration strings."),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Who delivers the package"),
    "yes" : MessageLookupByLibrary.simpleMessage("Yes")
  };
}
