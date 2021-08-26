// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `https://github.com/proninyaroslav/libretrack/issues`
  String get projectIssuesPage {
    return Intl.message(
      'https://github.com/proninyaroslav/libretrack/issues',
      name: 'projectIssuesPage',
      desc: '',
      args: [],
    );
  }

  /// `https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md`
  String get appChangelogUrl {
    return Intl.message(
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md',
      name: 'appChangelogUrl',
      desc: '',
      args: [],
    );
  }

  /// `Private, cross-platform package tracking app.\nMore information and also to help the project: https://github.com/proninyaroslav/libretrack`
  String get appDescription {
    return Intl.message(
      'Private, cross-platform package tracking app.\nMore information and also to help the project: https://github.com/proninyaroslav/libretrack',
      name: 'appDescription',
      desc: '',
      args: [],
    );
  }

  /// `LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html`
  String get appLicense {
    return Intl.message(
      'LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html',
      name: 'appLicense',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Accounts`
  String get accounts {
    return Intl.message(
      'Accounts',
      name: 'accounts',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message(
      'Hide',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optionalField {
    return Intl.message(
      'Optional',
      name: 'optionalField',
      desc: '',
      args: [],
    );
  }

  /// `Select all`
  String get selectAll {
    return Intl.message(
      'Select all',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Selected: {count}`
  String selectedCounter(Object count) {
    return Intl.message(
      'Selected: $count',
      name: 'selectedCounter',
      desc: '',
      args: [count],
    );
  }

  /// `No accounts`
  String get noAccounts {
    return Intl.message(
      'No accounts',
      name: 'noAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Please select account type`
  String get selectAccountType {
    return Intl.message(
      'Please select account type',
      name: 'selectAccountType',
      desc: '',
      args: [],
    );
  }

  /// `Enter your authorization data`
  String get enterAuthData {
    return Intl.message(
      'Enter your authorization data',
      name: 'enterAuthData',
      desc: '',
      args: [],
    );
  }

  /// `All accounts have already been added`
  String get allAccountsAlreadyAdded {
    return Intl.message(
      'All accounts have already been added',
      name: 'allAccountsAlreadyAdded',
      desc: '',
      args: [],
    );
  }

  /// `Add account`
  String get addAccount {
    return Intl.message(
      'Add account',
      name: 'addAccount',
      desc: '',
      args: [],
    );
  }

  /// `Edit account`
  String get editAccount {
    return Intl.message(
      'Edit account',
      name: 'editAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete the selected account?`
  String get deleteAccountDialogMsg {
    return Intl.message(
      'Are you sure to delete the selected account?',
      name: 'deleteAccountDialogMsg',
      desc: '',
      args: [],
    );
  }

  /// `Page Not Found`
  String get pageNotFound {
    return Intl.message(
      'Page Not Found',
      name: 'pageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Unable to open link`
  String get openLinkFailed {
    return Intl.message(
      'Unable to open link',
      name: 'openLinkFailed',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Access Key`
  String get accessKey {
    return Intl.message(
      'Access Key',
      name: 'accessKey',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Company name`
  String get companyName {
    return Intl.message(
      'Company name',
      name: 'companyName',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldRequiredError {
    return Intl.message(
      'This field is required',
      name: 'fieldRequiredError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add account`
  String get addAccountFailed {
    return Intl.message(
      'Failed to add account',
      name: 'addAccountFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to edit account`
  String get editAccountFailed {
    return Intl.message(
      'Failed to edit account',
      name: 'editAccountFailed',
      desc: '',
      args: [],
    );
  }

  /// `Packages`
  String get parcels {
    return Intl.message(
      'Packages',
      name: 'parcels',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get activeParcels {
    return Intl.message(
      'Active',
      name: 'activeParcels',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get archiveParcels {
    return Intl.message(
      'Archive',
      name: 'archiveParcels',
      desc: '',
      args: [],
    );
  }

  /// `Filters and sorting`
  String get filtersAndSorting {
    return Intl.message(
      'Filters and sorting',
      name: 'filtersAndSorting',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Sorting`
  String get sorting {
    return Intl.message(
      'Sorting',
      name: 'sorting',
      desc: '',
      args: [],
    );
  }

  /// `No packages`
  String get noParcels {
    return Intl.message(
      'No packages',
      name: 'noParcels',
      desc: '',
      args: [],
    );
  }

  /// `Before tracking packages, you need to add an account`
  String get addAccountTip {
    return Intl.message(
      'Before tracking packages, you need to add an account',
      name: 'addAccountTip',
      desc: '',
      args: [],
    );
  }

  /// `Add packages`
  String get addParcels {
    return Intl.message(
      'Add packages',
      name: 'addParcels',
      desc: '',
      args: [],
    );
  }

  /// `Track`
  String get track {
    return Intl.message(
      'Track',
      name: 'track',
      desc: '',
      args: [],
    );
  }

  /// `Tracking numbers`
  String get trackingNumbers {
    return Intl.message(
      'Tracking numbers',
      name: 'trackingNumbers',
      desc: '',
      args: [],
    );
  }

  /// `One per line`
  String get trackingNumbersFieldHint {
    return Intl.message(
      'One per line',
      name: 'trackingNumbersFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Package names`
  String get parcelNames {
    return Intl.message(
      'Package names',
      name: 'parcelNames',
      desc: '',
      args: [],
    );
  }

  /// `Optional. One per line`
  String get parcelNamesFieldHint {
    return Intl.message(
      'Optional. One per line',
      name: 'parcelNamesFieldHint',
      desc: '',
      args: [],
    );
  }

  /// `Failed to add packages`
  String get addParcelsFailed {
    return Intl.message(
      'Failed to add packages',
      name: 'addParcelsFailed',
      desc: '',
      args: [],
    );
  }

  /// `No tracking info yet`
  String get statusNotAvailable {
    return Intl.message(
      'No tracking info yet',
      name: 'statusNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Info received`
  String get statusInfoReceived {
    return Intl.message(
      'Info received',
      name: 'statusInfoReceived',
      desc: '',
      args: [],
    );
  }

  /// `Pickup`
  String get statusPickup {
    return Intl.message(
      'Pickup',
      name: 'statusPickup',
      desc: '',
      args: [],
    );
  }

  /// `In transit`
  String get statusInTransit {
    return Intl.message(
      'In transit',
      name: 'statusInTransit',
      desc: '',
      args: [],
    );
  }

  /// `Out for delivery`
  String get statusOutForDelivery {
    return Intl.message(
      'Out for delivery',
      name: 'statusOutForDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get statusDelivered {
    return Intl.message(
      'Delivered',
      name: 'statusDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Returned to shipper`
  String get statusReturnedToShipper {
    return Intl.message(
      'Returned to shipper',
      name: 'statusReturnedToShipper',
      desc: '',
      args: [],
    );
  }

  /// `Not delivered`
  String get statusNotDelivered {
    return Intl.message(
      'Not delivered',
      name: 'statusNotDelivered',
      desc: '',
      args: [],
    );
  }

  /// `In storage`
  String get statusInStorage {
    return Intl.message(
      'In storage',
      name: 'statusInStorage',
      desc: '',
      args: [],
    );
  }

  /// `Arrived at the waypoint`
  String get statusInTransitArrivedWaypoint {
    return Intl.message(
      'Arrived at the waypoint',
      name: 'statusInTransitArrivedWaypoint',
      desc: '',
      args: [],
    );
  }

  /// `Departed from the waypoint`
  String get statusInTransitDepartedWaypoint {
    return Intl.message(
      'Departed from the waypoint',
      name: 'statusInTransitDepartedWaypoint',
      desc: '',
      args: [],
    );
  }

  /// `Exported from the departure country`
  String get statusExportedFromDepartureCountry {
    return Intl.message(
      'Exported from the departure country',
      name: 'statusExportedFromDepartureCountry',
      desc: '',
      args: [],
    );
  }

  /// `Imported to the destination country`
  String get statusImportedToDestinationCountry {
    return Intl.message(
      'Imported to the destination country',
      name: 'statusImportedToDestinationCountry',
      desc: '',
      args: [],
    );
  }

  /// `Arrived at customs`
  String get statusArrivedAtCustoms {
    return Intl.message(
      'Arrived at customs',
      name: 'statusArrivedAtCustoms',
      desc: '',
      args: [],
    );
  }

  /// `Customs clearance complete`
  String get statusCustomsClearanceComplete {
    return Intl.message(
      'Customs clearance complete',
      name: 'statusCustomsClearanceComplete',
      desc: '',
      args: [],
    );
  }

  /// `No tracking info available`
  String get trackingErrorNoInfo {
    return Intl.message(
      'No tracking info available',
      name: 'trackingErrorNoInfo',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error`
  String get trackingErrorUnknown {
    return Intl.message(
      'Unknown error',
      name: 'trackingErrorUnknown',
      desc: '',
      args: [],
    );
  }

  /// `Network error`
  String get trackingErrorNetwork {
    return Intl.message(
      'Network error',
      name: 'trackingErrorNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Service returned an error`
  String get trackingErrorService {
    return Intl.message(
      'Service returned an error',
      name: 'trackingErrorService',
      desc: '',
      args: [],
    );
  }

  /// `Authorization error. Please check your account data`
  String get trackingErrorAuth {
    return Intl.message(
      'Authorization error. Please check your account data',
      name: 'trackingErrorAuth',
      desc: '',
      args: [],
    );
  }

  /// `Invalid tracking number`
  String get trackingErrorInvalidTrackNumber {
    return Intl.message(
      'Invalid tracking number',
      name: 'trackingErrorInvalidTrackNumber',
      desc: '',
      args: [],
    );
  }

  /// `Authorization data missing. Check if you have an account and the data is correct`
  String get trackingErrorMissingAuthData {
    return Intl.message(
      'Authorization data missing. Check if you have an account and the data is correct',
      name: 'trackingErrorMissingAuthData',
      desc: '',
      args: [],
    );
  }

  /// `Account is missing. Check if the account has been added and that it supports the selected postal service`
  String get trackingErrorMissingAccount {
    return Intl.message(
      'Account is missing. Check if the account has been added and that it supports the selected postal service',
      name: 'trackingErrorMissingAccount',
      desc: '',
      args: [],
    );
  }

  /// `A hard error has occurred, tracking stopped. Please check details inside`
  String get parcelsListHardErrorOccurred {
    return Intl.message(
      'A hard error has occurred, tracking stopped. Please check details inside',
      name: 'parcelsListHardErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Move to archive`
  String get moveToArchive {
    return Intl.message(
      'Move to archive',
      name: 'moveToArchive',
      desc: '',
      args: [],
    );
  }

  /// `Move to active`
  String get moveToActive {
    return Intl.message(
      'Move to active',
      name: 'moveToActive',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get markAsRead {
    return Intl.message(
      'Mark as read',
      name: 'markAsRead',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read`
  String get markAllAsRead {
    return Intl.message(
      'Mark all as read',
      name: 'markAllAsRead',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural, one {Are you sure to delete the selected package?} other {Are you sure to delete the selected packages?}}`
  String deleteParcelDialogMsg(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Are you sure to delete the selected package?',
      other: 'Are you sure to delete the selected packages?',
      name: 'deleteParcelDialogMsg',
      desc: '',
      args: [howMany],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Refresh all`
  String get refreshAll {
    return Intl.message(
      'Refresh all',
      name: 'refreshAll',
      desc: '',
      args: [],
    );
  }

  /// `Data is stored securely`
  String get dataIsSecured {
    return Intl.message(
      'Data is stored securely',
      name: 'dataIsSecured',
      desc: '',
      args: [],
    );
  }

  /// `Secure storage is not supported. Data is stored unprotected`
  String get secureStorageIsNotSupported {
    return Intl.message(
      'Secure storage is not supported. Data is stored unprotected',
      name: 'secureStorageIsNotSupported',
      desc: '',
      args: [],
    );
  }

  /// `Copy tracking number`
  String get copyTrackNumber {
    return Intl.message(
      'Copy tracking number',
      name: 'copyTrackNumber',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Unread`
  String get unreadParcels {
    return Intl.message(
      'Unread',
      name: 'unreadParcels',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Postal service`
  String get postalService {
    return Intl.message(
      'Postal service',
      name: 'postalService',
      desc: '',
      args: [],
    );
  }

  /// `Activity date (newest first)`
  String get sortActivityDateAsc {
    return Intl.message(
      'Activity date (newest first)',
      name: 'sortActivityDateAsc',
      desc: '',
      args: [],
    );
  }

  /// `Activity date (oldest first)`
  String get sortActivityDateDesc {
    return Intl.message(
      'Activity date (oldest first)',
      name: 'sortActivityDateDesc',
      desc: '',
      args: [],
    );
  }

  /// `Date added (newest first)`
  String get sortDateAddedAsc {
    return Intl.message(
      'Date added (newest first)',
      name: 'sortDateAddedAsc',
      desc: '',
      args: [],
    );
  }

  /// `Date added (oldest first)`
  String get sortDateAddedDesc {
    return Intl.message(
      'Date added (oldest first)',
      name: 'sortDateAddedDesc',
      desc: '',
      args: [],
    );
  }

  /// `A - Z`
  String get sortAlphabeticallyAsc {
    return Intl.message(
      'A - Z',
      name: 'sortAlphabeticallyAsc',
      desc: '',
      args: [],
    );
  }

  /// `Z - A`
  String get sortAlphabeticallyDesc {
    return Intl.message(
      'Z - A',
      name: 'sortAlphabeticallyDesc',
      desc: '',
      args: [],
    );
  }

  /// `Barcode scanner`
  String get barcodeScanner {
    return Intl.message(
      'Barcode scanner',
      name: 'barcodeScanner',
      desc: '',
      args: [],
    );
  }

  /// `Failed to scan barcode`
  String get barcodeScanFailed {
    return Intl.message(
      'Failed to scan barcode',
      name: 'barcodeScanFailed',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load page`
  String get loadPageFailed {
    return Intl.message(
      'Failed to load page',
      name: 'loadPageFailed',
      desc: '',
      args: [],
    );
  }

  /// `{howMany, plural, one {Failed to refresh package} other {Failed to refresh packages}}`
  String refreshParcelsFailed(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Failed to refresh package',
      other: 'Failed to refresh packages',
      name: 'refreshParcelsFailed',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, one {Failed to delete package} other {Failed to delete packages}}`
  String deleteParcelsFailed(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Failed to delete package',
      other: 'Failed to delete packages',
      name: 'deleteParcelsFailed',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, one {Failed to move package} other {Failed to move packages}}`
  String moveParcelFailed(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Failed to move package',
      other: 'Failed to move packages',
      name: 'moveParcelFailed',
      desc: '',
      args: [howMany],
    );
  }

  /// `{howMany, plural, one {Failed to mark package as read} other {Failed to mark packages as read}}`
  String markAsReadParcelFailed(num howMany) {
    return Intl.plural(
      howMany,
      one: 'Failed to mark package as read',
      other: 'Failed to mark packages as read',
      name: 'markAsReadParcelFailed',
      desc: '',
      args: [howMany],
    );
  }

  /// `Package not found`
  String get parcelNotFound {
    return Intl.message(
      'Package not found',
      name: 'parcelNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Add to my packages`
  String get addToMyParcels {
    return Intl.message(
      'Add to my packages',
      name: 'addToMyParcels',
      desc: '',
      args: [],
    );
  }

  /// `Tracking started: {date}`
  String trackingStartedDate(Object date) {
    return Intl.message(
      'Tracking started: $date',
      name: 'trackingStartedDate',
      desc: '',
      args: [date],
    );
  }

  /// `Last tracking: {date}`
  String lastTrackingDate(Object date) {
    return Intl.message(
      'Last tracking: $date',
      name: 'lastTrackingDate',
      desc: '',
      args: [date],
    );
  }

  /// `Your package is currently tracked. Please wait a few minutes`
  String get parcelTrackingStatus {
    return Intl.message(
      'Your package is currently tracked. Please wait a few minutes',
      name: 'parcelTrackingStatus',
      desc: '',
      args: [],
    );
  }

  /// `Invalid tracking number or postal service not supported`
  String get invalidTrackingNumberStatus {
    return Intl.message(
      'Invalid tracking number or postal service not supported',
      name: 'invalidTrackingNumberStatus',
      desc: '',
      args: [],
    );
  }

  /// `{days, plural, zero {Package in transit {days} days} one {Package in transit {days} day} few {Package in transit {days} days} many {Package in transit {days} days} other {Package in transit {days} days}}`
  String parcelInTransitStatus(num days) {
    return Intl.plural(
      days,
      zero: 'Package in transit $days days',
      one: 'Package in transit $days day',
      few: 'Package in transit $days days',
      many: 'Package in transit $days days',
      other: 'Package in transit $days days',
      name: 'parcelInTransitStatus',
      desc: '',
      args: [days],
    );
  }

  /// `Package delivered on {date}`
  String parcelDeliveredStatus(Object date) {
    return Intl.message(
      'Package delivered on $date',
      name: 'parcelDeliveredStatus',
      desc: '',
      args: [date],
    );
  }

  /// `There is no information about the package yet. After a package has been sent, it may take several days before it can be tracked`
  String get parcelInfoNotAvailableStatus {
    return Intl.message(
      'There is no information about the package yet. After a package has been sent, it may take several days before it can be tracked',
      name: 'parcelInfoNotAvailableStatus',
      desc: '',
      args: [],
    );
  }

  /// `Tracking stopped. Tracking stops if there was a hard error, or the postal service reported that further statuses are not provided`
  String get trackingStoppedStatus {
    return Intl.message(
      'Tracking stopped. Tracking stops if there was a hard error, or the postal service reported that further statuses are not provided',
      name: 'trackingStoppedStatus',
      desc: '',
      args: [],
    );
  }

  /// `Activate and refresh`
  String get activateAndRefresh {
    return Intl.message(
      'Activate and refresh',
      name: 'activateAndRefresh',
      desc: '',
      args: [],
    );
  }

  /// `Failed to activate tracking`
  String get activateTrackingFailed {
    return Intl.message(
      'Failed to activate tracking',
      name: 'activateTrackingFailed',
      desc: '',
      args: [],
    );
  }

  /// `Generate barcode`
  String get generateBarcode {
    return Intl.message(
      'Generate barcode',
      name: 'generateBarcode',
      desc: '',
      args: [],
    );
  }

  /// `Failed to generate barcode: {error}`
  String generateBarcodFailed(Object error) {
    return Intl.message(
      'Failed to generate barcode: $error',
      name: 'generateBarcodFailed',
      desc: '',
      args: [error],
    );
  }

  /// `Failed to edit package`
  String get editParcelFailed {
    return Intl.message(
      'Failed to edit package',
      name: 'editParcelFailed',
      desc: '',
      args: [],
    );
  }

  /// `Who delivers the package`
  String get whoDeliveresParcel {
    return Intl.message(
      'Who delivers the package',
      name: 'whoDeliveresParcel',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Tracking history`
  String get trackingHistory {
    return Intl.message(
      'Tracking history',
      name: 'trackingHistory',
      desc: '',
      args: [],
    );
  }

  /// `Activate tracking`
  String get activateTracking {
    return Intl.message(
      'Activate tracking',
      name: 'activateTracking',
      desc: '',
      args: [],
    );
  }

  /// `No tracking history`
  String get noTrackingHistory {
    return Intl.message(
      'No tracking history',
      name: 'noTrackingHistory',
      desc: '',
      args: [],
    );
  }

  /// `Show error`
  String get showError {
    return Intl.message(
      'Show error',
      name: 'showError',
      desc: '',
      args: [],
    );
  }

  /// `Successfully`
  String get trackingResponseSuccess {
    return Intl.message(
      'Successfully',
      name: 'trackingResponseSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get trackingResponseError {
    return Intl.message(
      'Error',
      name: 'trackingResponseError',
      desc: '',
      args: [],
    );
  }

  /// `No info`
  String get trackingResponseNoInfo {
    return Intl.message(
      'No info',
      name: 'trackingResponseNoInfo',
      desc: '',
      args: [],
    );
  }

  /// `Reason`
  String get trackingErrorReason {
    return Intl.message(
      'Reason',
      name: 'trackingErrorReason',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get trackingErrorCode {
    return Intl.message(
      'Code',
      name: 'trackingErrorCode',
      desc: '',
      args: [],
    );
  }

  /// `Stack trace`
  String get trackingErrorStackTrace {
    return Intl.message(
      'Stack trace',
      name: 'trackingErrorStackTrace',
      desc: '',
      args: [],
    );
  }

  /// `Errors`
  String get errors {
    return Intl.message(
      'Errors',
      name: 'errors',
      desc: '',
      args: [],
    );
  }

  /// `Show errors`
  String get showErrors {
    return Intl.message(
      'Show errors',
      name: 'showErrors',
      desc: '',
      args: [],
    );
  }

  /// `A hard error has occurred, tracking of some services has stopped. Check out the errors before activating tracking`
  String get parcelDetailsHardErrorOccurred {
    return Intl.message(
      'A hard error has occurred, tracking of some services has stopped. Check out the errors before activating tracking',
      name: 'parcelDetailsHardErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Failed to delete account`
  String get deleteAccountFailed {
    return Intl.message(
      'Failed to delete account',
      name: 'deleteAccountFailed',
      desc: '',
      args: [],
    );
  }

  /// `Activity history`
  String get activityHistory {
    return Intl.message(
      'Activity history',
      name: 'activityHistory',
      desc: '',
      args: [],
    );
  }

  /// `Package info`
  String get parcelInfo {
    return Intl.message(
      'Package info',
      name: 'parcelInfo',
      desc: '',
      args: [],
    );
  }

  /// `Signed by: {name}`
  String parcelSignedBy(Object name) {
    return Intl.message(
      'Signed by: $name',
      name: 'parcelSignedBy',
      desc: '',
      args: [name],
    );
  }

  /// `Show more`
  String get showMore {
    return Intl.message(
      'Show more',
      name: 'showMore',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get shipmentServiceDescription {
    return Intl.message(
      'Service',
      name: 'shipmentServiceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Delivery date`
  String get shipmentDeliveryDate {
    return Intl.message(
      'Delivery date',
      name: 'shipmentDeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Signed by`
  String get shipmentSignedBy {
    return Intl.message(
      'Signed by',
      name: 'shipmentSignedBy',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled delivery date`
  String get shipmentScheduledDeliveryDate {
    return Intl.message(
      'Scheduled delivery date',
      name: 'shipmentScheduledDeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Estimated delivery date`
  String get shipmentEstimatedDeliveryDate {
    return Intl.message(
      'Estimated delivery date',
      name: 'shipmentEstimatedDeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Pickup date`
  String get shipmentPickupDate {
    return Intl.message(
      'Pickup date',
      name: 'shipmentPickupDate',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get shipmentWeight {
    return Intl.message(
      'Weight',
      name: 'shipmentWeight',
      desc: '',
      args: [],
    );
  }

  /// `Volume`
  String get shipmentVolume {
    return Intl.message(
      'Volume',
      name: 'shipmentVolume',
      desc: 'Volume in cubic meters, liters, etc.',
      args: [],
    );
  }

  /// `Cash on delivery`
  String get shipmentCashOnDelivery {
    return Intl.message(
      'Cash on delivery',
      name: 'shipmentCashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Declared value`
  String get shipmentDeclaredValue {
    return Intl.message(
      'Declared value',
      name: 'shipmentDeclaredValue',
      desc: '',
      args: [],
    );
  }

  /// `Custom duty`
  String get shipmentCustomDuty {
    return Intl.message(
      'Custom duty',
      name: 'shipmentCustomDuty',
      desc: '',
      args: [],
    );
  }

  /// `Additional rate fee`
  String get shipmentAdditionalRateFee {
    return Intl.message(
      'Additional rate fee',
      name: 'shipmentAdditionalRateFee',
      desc: '',
      args: [],
    );
  }

  /// `Shipping rate fee`
  String get shipmentShippingRateFee {
    return Intl.message(
      'Shipping rate fee',
      name: 'shipmentShippingRateFee',
      desc: '',
      args: [],
    );
  }

  /// `Insurance rate fee`
  String get shipmentInsuranceRateFee {
    return Intl.message(
      'Insurance rate fee',
      name: 'shipmentInsuranceRateFee',
      desc: '',
      args: [],
    );
  }

  /// `Shipment type`
  String get shipmentTypeDescription {
    return Intl.message(
      'Shipment type',
      name: 'shipmentTypeDescription',
      desc: '',
      args: [],
    );
  }

  /// `Receiver address`
  String get shipmentReceiverAddress {
    return Intl.message(
      'Receiver address',
      name: 'shipmentReceiverAddress',
      desc: '',
      args: [],
    );
  }

  /// `Shipper address`
  String get shipmentShipperAddress {
    return Intl.message(
      'Shipper address',
      name: 'shipmentShipperAddress',
      desc: '',
      args: [],
    );
  }

  /// `Shipper`
  String get shipmentShipper {
    return Intl.message(
      'Shipper',
      name: 'shipmentShipper',
      desc: '',
      args: [],
    );
  }

  /// `Receiver`
  String get shipmentReceiver {
    return Intl.message(
      'Receiver',
      name: 'shipmentReceiver',
      desc: '',
      args: [],
    );
  }

  /// `{value} kg`
  String kilogramUnitShort(Object value) {
    return Intl.message(
      '$value kg',
      name: 'kilogramUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} lb`
  String poundUnitShort(Object value) {
    return Intl.message(
      '$value lb',
      name: 'poundUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} oz`
  String ounceUnitShort(Object value) {
    return Intl.message(
      '$value oz',
      name: 'ounceUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} L`
  String literUnitShort(Object value) {
    return Intl.message(
      '$value L',
      name: 'literUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} gal`
  String gallonUnitShort(Object value) {
    return Intl.message(
      '$value gal',
      name: 'gallonUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} bbl`
  String barrelUnitShort(Object value) {
    return Intl.message(
      '$value bbl',
      name: 'barrelUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} m²`
  String squareMeterUnitShort(Object value) {
    return Intl.message(
      '$value m²',
      name: 'squareMeterUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} ft²`
  String squareFeetUnitShort(Object value) {
    return Intl.message(
      '$value ft²',
      name: 'squareFeetUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `{value} yd²`
  String squareYardUnitShort(Object value) {
    return Intl.message(
      '$value yd²',
      name: 'squareYardUnitShort',
      desc: '',
      args: [value],
    );
  }

  /// `Alternate tracking number`
  String get shipmentAlternateTrackingNumber {
    return Intl.message(
      'Alternate tracking number',
      name: 'shipmentAlternateTrackingNumber',
      desc: '',
      args: [],
    );
  }

  /// `Moved to active successfully`
  String get parcelMovedToActiveSuccess {
    return Intl.message(
      'Moved to active successfully',
      name: 'parcelMovedToActiveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Moved to archive successfully`
  String get parcelMovedToArchiveSuccess {
    return Intl.message(
      'Moved to archive successfully',
      name: 'parcelMovedToArchiveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Packages tracking`
  String get parcelsTrackingNotifyChannelTitle {
    return Intl.message(
      'Packages tracking',
      name: 'parcelsTrackingNotifyChannelTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications of the packages activity`
  String get parcelsTrackingNotifyChannelDescription {
    return Intl.message(
      'Notifications of the packages activity',
      name: 'parcelsTrackingNotifyChannelDescription',
      desc: '',
      args: [],
    );
  }

  /// `{title}: {body}`
  String parcelsTrackingNotifyInboxStyleLine(Object title, Object body) {
    return Intl.message(
      '$title: $body',
      name: 'parcelsTrackingNotifyInboxStyleLine',
      desc: '',
      args: [title, body],
    );
  }

  /// `Package tracking`
  String get parcelsTrackingNotifyInboxStyleTitle {
    return Intl.message(
      'Package tracking',
      name: 'parcelsTrackingNotifyInboxStyleTitle',
      desc: '',
      args: [],
    );
  }

  /// `Packages status are updated`
  String get parcelsTrackingNotifyInboxStyleDescription {
    return Intl.message(
      'Packages status are updated',
      name: 'parcelsTrackingNotifyInboxStyleDescription',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get settingsAppearance {
    return Intl.message(
      'Appearance',
      name: 'settingsAppearance',
      desc: '',
      args: [],
    );
  }

  /// `Behavior`
  String get settingsBehavior {
    return Intl.message(
      'Behavior',
      name: 'settingsBehavior',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsTheme {
    return Intl.message(
      'Theme',
      name: 'settingsTheme',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settingsThemeSystem {
    return Intl.message(
      'System',
      name: 'settingsThemeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get settingsThemeLight {
    return Intl.message(
      'Light',
      name: 'settingsThemeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get settingsThemeDark {
    return Intl.message(
      'Dark',
      name: 'settingsThemeDark',
      desc: '',
      args: [],
    );
  }

  /// `Notifications settings`
  String get settingsNotificationsSection {
    return Intl.message(
      'Notifications settings',
      name: 'settingsNotificationsSection',
      desc: '',
      args: [],
    );
  }

  /// `Package tracking notifications`
  String get settingsTrackingNotifications {
    return Intl.message(
      'Package tracking notifications',
      name: 'settingsTrackingNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsLanguage {
    return Intl.message(
      'Language',
      name: 'settingsLanguage',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get settingsSystemLanguageOption {
    return Intl.message(
      'System',
      name: 'settingsSystemLanguageOption',
      desc: '',
      args: [],
    );
  }

  /// `Tracking is not available, because a little time has passed since the last tracking. Please try again after {time}`
  String parcelTrackingLimitedError(Object time) {
    return Intl.message(
      'Tracking is not available, because a little time has passed since the last tracking. Please try again after $time',
      name: 'parcelTrackingLimitedError',
      desc: '',
      args: [time],
    );
  }

  /// `{value} h.`
  String hoursShortFormat(Object value) {
    return Intl.message(
      '$value h.',
      name: 'hoursShortFormat',
      desc: '',
      args: [value],
    );
  }

  /// `{value} min.`
  String minutesShortFormat(Object value) {
    return Intl.message(
      '$value min.',
      name: 'minutesShortFormat',
      desc: '',
      args: [value],
    );
  }

  /// `{value} sec.`
  String secondsShortFormat(Object value) {
    return Intl.message(
      '$value sec.',
      name: 'secondsShortFormat',
      desc: '',
      args: [value],
    );
  }

  /// `Tracking settings`
  String get settingsTrackingSection {
    return Intl.message(
      'Tracking settings',
      name: 'settingsTrackingSection',
      desc: '',
      args: [],
    );
  }

  /// `Tracking frequency limit`
  String get settingsTrackingFreqLimit {
    return Intl.message(
      'Tracking frequency limit',
      name: 'settingsTrackingFreqLimit',
      desc: '',
      args: [],
    );
  }

  /// `No more than once every {time}`
  String settingsTrackingFreqLimitSummary(Object time) {
    return Intl.message(
      'No more than once every $time',
      name: 'settingsTrackingFreqLimitSummary',
      desc: '',
      args: [time],
    );
  }

  /// `15 minutes`
  String get settingsTrackingFreqFifteenMin {
    return Intl.message(
      '15 minutes',
      name: 'settingsTrackingFreqFifteenMin',
      desc: '',
      args: [],
    );
  }

  /// `30 minutes`
  String get settingsTrackingFreqThirtyMin {
    return Intl.message(
      '30 minutes',
      name: 'settingsTrackingFreqThirtyMin',
      desc: '',
      args: [],
    );
  }

  /// `45 minutes`
  String get settingsTrackingFreqFortyFiveMin {
    return Intl.message(
      '45 minutes',
      name: 'settingsTrackingFreqFortyFiveMin',
      desc: '',
      args: [],
    );
  }

  /// `1 hour`
  String get settingsTrackingFreqOneHour {
    return Intl.message(
      '1 hour',
      name: 'settingsTrackingFreqOneHour',
      desc: '',
      args: [],
    );
  }

  /// `Auto tracking`
  String get settingsAutoTracking {
    return Intl.message(
      'Auto tracking',
      name: 'settingsAutoTracking',
      desc: '',
      args: [],
    );
  }

  /// `Tracking frequency`
  String get settingsAutoTrackingFreq {
    return Intl.message(
      'Tracking frequency',
      name: 'settingsAutoTrackingFreq',
      desc: '',
      args: [],
    );
  }

  /// `Specifies the minimum tracking interval. This interval is not accurate and may be increased due to system limitations (no internet connection, power saving mode, etc)`
  String get settingsAutoTrackingFreqDescr {
    return Intl.message(
      'Specifies the minimum tracking interval. This interval is not accurate and may be increased due to system limitations (no internet connection, power saving mode, etc)',
      name: 'settingsAutoTrackingFreqDescr',
      desc: '',
      args: [],
    );
  }

  /// `Every 6 hours`
  String get settingsAutoTrackingFreqSixHours {
    return Intl.message(
      'Every 6 hours',
      name: 'settingsAutoTrackingFreqSixHours',
      desc: '',
      args: [],
    );
  }

  /// `Every 12 hours`
  String get settingsAutoTrackingFreqTwelveHours {
    return Intl.message(
      'Every 12 hours',
      name: 'settingsAutoTrackingFreqTwelveHours',
      desc: '',
      args: [],
    );
  }

  /// `Once a day`
  String get settingsAutoTrackingFreqOneDay {
    return Intl.message(
      'Once a day',
      name: 'settingsAutoTrackingFreqOneDay',
      desc: '',
      args: [],
    );
  }

  /// `Every 3 days`
  String get settingsAutoTrackingFreqThreeDays {
    return Intl.message(
      'Every 3 days',
      name: 'settingsAutoTrackingFreqThreeDays',
      desc: '',
      args: [],
    );
  }

  /// `Once a week`
  String get settingsAutoTrackingFreqOneWeek {
    return Intl.message(
      'Once a week',
      name: 'settingsAutoTrackingFreqOneWeek',
      desc: '',
      args: [],
    );
  }

  /// `Tracking history size`
  String get settingsTrackingHistorySize {
    return Intl.message(
      'Tracking history size',
      name: 'settingsTrackingHistorySize',
      desc: '',
      args: [],
    );
  }

  /// `Specifies the maximum number of keep entries in the package tracking history`
  String get settingsTrackingHistorySizeDescr {
    return Intl.message(
      'Specifies the maximum number of keep entries in the package tracking history',
      name: 'settingsTrackingHistorySizeDescr',
      desc: '',
      args: [],
    );
  }

  /// `Tracking error notifications`
  String get settingsTrackingErrorNotifications {
    return Intl.message(
      'Tracking error notifications',
      name: 'settingsTrackingErrorNotifications',
      desc: '',
      args: [],
    );
  }

  /// `Tracking error`
  String get trackingErrorNotifyChannelTitle {
    return Intl.message(
      'Tracking error',
      name: 'trackingErrorNotifyChannelTitle',
      desc: '',
      args: [],
    );
  }

  /// `Notifications of the packages tracking error`
  String get trackingErrorNotifyChannelDescription {
    return Intl.message(
      'Notifications of the packages tracking error',
      name: 'trackingErrorNotifyChannelDescription',
      desc: '',
      args: [],
    );
  }

  /// `Tracking error`
  String get trackingError {
    return Intl.message(
      'Tracking error',
      name: 'trackingError',
      desc: '',
      args: [],
    );
  }

  /// `Tracking failed`
  String get trackingFailed {
    return Intl.message(
      'Tracking failed',
      name: 'trackingFailed',
      desc: '',
      args: [],
    );
  }

  /// `Error occurred while tracking the following packages:`
  String get trackingErrorOccured {
    return Intl.message(
      'Error occurred while tracking the following packages:',
      name: 'trackingErrorOccured',
      desc: '',
      args: [],
    );
  }

  /// `• {parcelName}`
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return Intl.message(
      '• $parcelName',
      name: 'parcelsTrackingFailedInboxStyleLine',
      desc: '',
      args: [parcelName],
    );
  }

  /// `An app error occurred. You can report it to the developers`
  String get crashDialogSummary {
    return Intl.message(
      'An app error occurred. You can report it to the developers',
      name: 'crashDialogSummary',
      desc: '',
      args: [],
    );
  }

  /// `Add extra info and comments here:`
  String get crashDialogExtraInfo {
    return Intl.message(
      'Add extra info and comments here:',
      name: 'crashDialogExtraInfo',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get crashDialogReport {
    return Intl.message(
      'Report',
      name: 'crashDialogReport',
      desc: '',
      args: [],
    );
  }

  /// `More details`
  String get crashDialogMoreDetails {
    return Intl.message(
      'More details',
      name: 'crashDialogMoreDetails',
      desc: '',
      args: [],
    );
  }

  /// `No email app found. You can manually copy the error and send it to {email}\nor send on the project page {pageUrl}`
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return Intl.message(
      'No email app found. You can manually copy the error and send it to $email\nor send on the project page $pageUrl',
      name: 'crashDialogNoEmailApp',
      desc: '',
      args: [email, pageUrl],
    );
  }

  /// `Default`
  String get defaultNotifyChannelTitle {
    return Intl.message(
      'Default',
      name: 'defaultNotifyChannelTitle',
      desc: '',
      args: [],
    );
  }

  /// `All notifications that don't suitable for the other categories`
  String get defaultNotifyChannelDescription {
    return Intl.message(
      'All notifications that don\'t suitable for the other categories',
      name: 'defaultNotifyChannelDescription',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get aboutApp {
    return Intl.message(
      'About',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Changelog`
  String get changelog {
    return Intl.message(
      'Changelog',
      name: 'changelog',
      desc: '',
      args: [],
    );
  }

  /// `Desktop`
  String get settingsDesktopSection {
    return Intl.message(
      'Desktop',
      name: 'settingsDesktopSection',
      desc: '',
      args: [],
    );
  }

  /// `System tray icon`
  String get settingsSystemTrayIcon {
    return Intl.message(
      'System tray icon',
      name: 'settingsSystemTrayIcon',
      desc: '',
      args: [],
    );
  }

  /// `Open details`
  String get openDetails {
    return Intl.message(
      'Open details',
      name: 'openDetails',
      desc: '',
      args: [],
    );
  }

  /// `Unable to share`
  String get shareFailed {
    return Intl.message(
      'Unable to share',
      name: 'shareFailed',
      desc: '',
      args: [],
    );
  }

  /// `Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/`
  String get linuxTrayIconWarning {
    return Intl.message(
      'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/',
      name: 'linuxTrayIconWarning',
      desc: '',
      args: [],
    );
  }

  /// `You need to enter your UPS account authorization information. You can register it here: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US`
  String get upsAddAccountDescription {
    return Intl.message(
      'You need to enter your UPS account authorization information. You can register it here: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US',
      name: 'upsAddAccountDescription',
      desc: '',
      args: [],
    );
  }

  /// `UPS`
  String get ups {
    return Intl.message(
      'UPS',
      name: 'ups',
      desc: '',
      args: [],
    );
  }

  /// `Russian Post`
  String get russianPost {
    return Intl.message(
      'Russian Post',
      name: 'russianPost',
      desc: '',
      args: [],
    );
  }

  /// `1. Register on the Russian Post website: https://www.pochta.ru/\n2. Go to Access Settings, enable the tracking API and agree to the terms of service: https://tracking.pochta.ru/access-settings\n3. In the Access Settings, copy the login (generated automatically). The password will be sent to the e-mail, provided during registration.`
  String get russianPostAddAccountDescription {
    return Intl.message(
      '1. Register on the Russian Post website: https://www.pochta.ru/\n2. Go to Access Settings, enable the tracking API and agree to the terms of service: https://tracking.pochta.ru/access-settings\n3. In the Access Settings, copy the login (generated automatically). The password will be sent to the e-mail, provided during registration.',
      name: 'russianPostAddAccountDescription',
      desc: '',
      args: [],
    );
  }

  /// `USPS`
  String get usps {
    return Intl.message(
      'USPS',
      name: 'usps',
      desc: '',
      args: [],
    );
  }

  /// `1. Register on the USPS Web Tools API Portal website: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. During registration, to the question "How will you be using the USPS Web Tools?" please answer "Exclusively on my Web site".\n3. After registration, the authorization data will be sent to the specified e-mail. Copy "Username" and "Company" (which was specified during registration strings.`
  String get uspsAddAccountDescription {
    return Intl.message(
      '1. Register on the USPS Web Tools API Portal website: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. During registration, to the question "How will you be using the USPS Web Tools?" please answer "Exclusively on my Web site".\n3. After registration, the authorization data will be sent to the specified e-mail. Copy "Username" and "Company" (which was specified during registration strings.',
      name: 'uspsAddAccountDescription',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'it'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'sk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
