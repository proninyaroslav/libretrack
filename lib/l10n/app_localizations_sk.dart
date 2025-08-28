// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Cross-platformová apka na sledovanie balíkov.\nTu nájdete viac informácii a môžete prispieť: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Áno';

  @override
  String get no => 'Nie';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get accounts => 'Účty';

  @override
  String get add => 'Pridať';

  @override
  String get delete => 'Zmazať';

  @override
  String get apply => 'Použiť';

  @override
  String get close => 'Zatvoriť';

  @override
  String get hide => 'Schovať';

  @override
  String get show => 'Ukázať';

  @override
  String get all => 'Všetky';

  @override
  String get edit => 'Upraviť';

  @override
  String get name => 'Meno';

  @override
  String get open => 'Otvoriť';

  @override
  String get optionalField => 'Voliteľné';

  @override
  String get selectAll => 'Vybrať všetko';

  @override
  String selectedCounter(Object count) {
    return 'Vybraté: $count';
  }

  @override
  String get noAccounts => 'Žiadne účty';

  @override
  String get selectAccountType => 'Prosím vyberte typ účtu';

  @override
  String get enterAuthData => 'Zadajte autorizačné údaje';

  @override
  String get allAccountsAlreadyAdded => 'Všetky účty boli pridané';

  @override
  String get addAccount => 'Pridať účet';

  @override
  String get editAccount => 'Upraviť účet';

  @override
  String get deleteAccountDialogMsg =>
      'Ste si istí, že chcete zmazať tento účet?';

  @override
  String get pageNotFound => 'Stránka nenájdená';

  @override
  String get openLinkFailed => 'Nie je možné otvoriť odkaz';

  @override
  String get login => 'Login';

  @override
  String get password => 'Heslo';

  @override
  String get accessKey => 'Prístupový kľúč';

  @override
  String get username => 'Meno používateľa';

  @override
  String get companyName => 'Názov firmy';

  @override
  String get fieldRequiredError => 'Toto pole je povinné';

  @override
  String get addAccountFailed => 'Pridanie účtu zlyhalo';

  @override
  String get editAccountFailed => 'Úprava účtu zlyhala';

  @override
  String get parcels => 'Balíky';

  @override
  String get receiverParcels => 'I\'m receiver';

  @override
  String get shipperParcels => 'I\'m shipper';

  @override
  String get archiveParcels => 'Archív';

  @override
  String get filtersAndSorting => 'Filtre a triedenie';

  @override
  String get filters => 'Filtre';

  @override
  String get sorting => 'Triedenie';

  @override
  String get noParcels => 'Žiadne balíky';

  @override
  String get addAccountTip => 'Pred sledovaním balíkov musíte pridať účet';

  @override
  String get addParcels => 'Pridať balík';

  @override
  String get track => 'Sledovať';

  @override
  String get trackingNumbers => 'Sledovacie čisla';

  @override
  String get trackingNumbersFieldHint => 'Jedno na riadok.';

  @override
  String get parcelNames => 'Mená balíkov';

  @override
  String get parcelNamesFieldHint => 'Voliteľné. Jeden na riadok.';

  @override
  String get addParcelsFailed => 'Pridanie balíkov zlyhalo';

  @override
  String get statusNotAvailable => 'Zatiaľ žiadne informácie';

  @override
  String get statusInfoReceived => 'Informácie prijaté';

  @override
  String get statusPickup => 'Prevzatá';

  @override
  String get statusInTransit => 'V preprave';

  @override
  String get statusOutForDelivery => 'Na doručení';

  @override
  String get statusDelivered => 'Doručená';

  @override
  String get statusReturnedToShipper => 'Vrátená odosielateľovi';

  @override
  String get statusNotDelivered => 'Nedoručená';

  @override
  String get statusInStorage => 'Uložená';

  @override
  String get statusInTransitArrivedWaypoint => 'Dorazila do kontrolného bodu';

  @override
  String get statusInTransitDepartedWaypoint => 'Vyrazila z kontrolného bodu';

  @override
  String get statusExportedFromDepartureCountry =>
      'Exportovaná z krajiny pôvodu';

  @override
  String get statusImportedToDestinationCountry =>
      'Importovaná do krajiny určenia';

  @override
  String get statusArrivedAtCustoms => 'Príchod na colnicu';

  @override
  String get statusCustomsClearanceComplete => 'Colný proces dokončený';

  @override
  String get trackingErrorNoInfo => 'Informácie o sledovaní nedostupné';

  @override
  String get trackingErrorUnknown => 'Neznáma chyba';

  @override
  String get trackingErrorNetwork => 'Chyba siete';

  @override
  String get trackingErrorService => 'Služba vrátila chybu';

  @override
  String get trackingErrorAuth =>
      'Chyba autorizácie. Skotrolujte si vaše údaje';

  @override
  String get trackingErrorInvalidTrackNumber => 'Neplatné sledovacie číslo';

  @override
  String get trackingErrorMissingAuthData =>
      'Chýbajú autorizačné dáta. Skontrolujte či máte pridaný účet a či sú údaje v poriadku';

  @override
  String get trackingErrorMissingAccount =>
      'Chýba účet. Skontrolujte či bol pridaný a či podporuje túto poštovú službu';

  @override
  String get parcelsListHardErrorOccurred =>
      'Vyskytla sa chyba, sledovanie zastavené. Detaily nájdete vnútri';

  @override
  String get moveToArchive => 'Presunúť do archívu';

  @override
  String get moveToReceiver => 'Move to incoming list';

  @override
  String get moveToShipper => 'Move to outgoing list';

  @override
  String get moveToActive => 'Presnunúť do aktívnych';

  @override
  String get markAsRead => 'Označiť ako prečítané';

  @override
  String get markAllAsRead => 'Označiť všetko ako prečítané';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Naozaj chcete zmazať tieto balíky?',
      one: 'Naozaj chcete zmazať tento balík?',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Obnoviť';

  @override
  String get refreshAll => 'Obnoviť všetko';

  @override
  String get dataIsSecured => 'Údaje sú bezpečne uložené';

  @override
  String get secureStorageIsNotSupported =>
      'Šifrovanie nie je podporované. Údaje nie sú bezpečne uložené';

  @override
  String get copyTrackNumber => 'Kopírovať sledovacie číslo';

  @override
  String get share => 'Zdieľať';

  @override
  String get copiedToClipboard => 'Skopírované do schránky';

  @override
  String get status => 'Stav';

  @override
  String get unreadParcels => 'Neprečítané';

  @override
  String get error => 'Chyba';

  @override
  String get postalService => 'Poštová služba';

  @override
  String get sortActivityDateAsc => 'Dátum aktivity (od najnovších)';

  @override
  String get sortActivityDateDesc => 'Dátum aktivity (od najstarších)';

  @override
  String get sortDateAddedAsc => 'Dátum pridania (nod najnovších)';

  @override
  String get sortDateAddedDesc => 'Dátum pridania (od najnovších)';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => 'Skener čiarových kódov';

  @override
  String get barcodeScanFailed => 'Čítanie kódu zlyhalo';

  @override
  String get loadPageFailed => 'Nepodarilo sa načítať stránku';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Nepodarilo sa obnoviť balíky',
      one: 'Nepodarilo sa obnoviť balík',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'FNepodarilo sa zmazať balík',
      one: 'Nepodarilo sa zmazať balík',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Nepodarilo sa presunúť balík',
      one: 'Nepodarilo sa presunúť balík',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Nepodarilo sa označiť ako prečítané',
      one: 'Nepodarilo sa označiť ako prečítané',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Balík sa nenašiel';

  @override
  String get addToMyParcels => 'Pridať do mojich balíkov';

  @override
  String trackingStartedDate(Object date) {
    return 'Sledovanie začalo: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Posledné sledovanie: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Prebieha sledovanie balíka. Prosím počkajte pár minút';

  @override
  String get invalidTrackingNumberStatus =>
      'Neplatné alebo nepodporované sledovacie číslo';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Balík v preprave $days dní',
      many: 'Balík v preprave $days dní',
      few: 'Balík v preprave $days dni',
      one: 'Balík v preprave $days deň',
      zero: 'Balík v preprave $days dní',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Balík doručený $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Package was out for delivery on $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'O balíku nie sú informácie. Po odoslaní balíka možno treba počkať kým ho bude možné sledovať';

  @override
  String get trackingStoppedStatus =>
      'Sledovanie zastavené. Toto sa stáva ked je problém s balíkom alebo keď poštová služba nahlási koniec sledovania';

  @override
  String get activateAndRefresh => 'Aktivovať a obnoviť';

  @override
  String get activateTrackingFailed => 'Aktivácia sledovania zlyhala';

  @override
  String get generateBarcode => 'Vygenerovať čiarový kód';

  @override
  String generateBarcodFailed(Object error) {
    return 'Neporarilo sa vygenerovať čiarový kód: $error';
  }

  @override
  String get editParcelFailed => 'Nepodarilo sa upraviť balík';

  @override
  String get whoDeliveresParcel => 'Kto balík doručuje';

  @override
  String get details => 'Detaily';

  @override
  String get trackingHistory => 'História sledovania';

  @override
  String get activateTracking => 'Aktivovať sledovanie';

  @override
  String get noTrackingHistory => 'Žiadna história';

  @override
  String get showError => 'Ukázať chybu';

  @override
  String get trackingResponseSuccess => 'Úspešne';

  @override
  String get trackingResponseError => 'Chyba';

  @override
  String get trackingResponseNoInfo => 'Žiadne informácie';

  @override
  String get trackingResponseStopped => 'Tracking stopped';

  @override
  String get trackingErrorReason => 'Dôvod';

  @override
  String get trackingErrorCode => 'Kód';

  @override
  String get trackingErrorStackTrace => 'Záznam stacku';

  @override
  String get errors => 'Chyby';

  @override
  String get showErrors => 'Ukázať chyby';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'Nastala chyba, sledovanie niektorých služieb bolo zastavené. Skontrolujte chyby pred aktiváciou sledovania';

  @override
  String get deleteAccountFailed => 'Nepodarilo sa zmazať účet';

  @override
  String get activityHistory => 'História aktivít';

  @override
  String get parcelInfo => 'Info o balíku';

  @override
  String parcelSignedBy(Object name) {
    return 'Podpísal: $name';
  }

  @override
  String get showMore => 'Ukázať viac';

  @override
  String get shipmentServiceDescription => 'Služba';

  @override
  String get shipmentDeliveryDate => 'Dátum doručenia';

  @override
  String get shipmentSignedBy => 'Podpísal';

  @override
  String get shipmentScheduledDeliveryDate => 'Plánovaný dátum doručenia';

  @override
  String get shipmentEstimatedDeliveryDate => 'Odhadovaný dátum doručenia';

  @override
  String get shipmentPickupDate => 'Dátum prevzatia';

  @override
  String get shipmentWeight => 'Váha';

  @override
  String get shipmentDimensions => 'Dimensions [(L) x (W) x (H)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Objem';

  @override
  String get shipmentCashOnDelivery => 'Dobierka';

  @override
  String get shipmentDeclaredValue => 'Deklarovaná hodnota';

  @override
  String get shipmentCustomDuty => 'Colný poplatok';

  @override
  String get shipmentAdditionalRateFee => 'Dodatočný poplatok';

  @override
  String get shipmentShippingRateFee => 'Poštovné';

  @override
  String get shipmentInsuranceRateFee => 'Poistenie';

  @override
  String get shipmentTypeDescription => 'Typ zásielky';

  @override
  String get shipmentReceiverAddress => 'Adresa prijímateľa';

  @override
  String get shipmentShipperAddress => 'Adresa odosielateľa';

  @override
  String get shipmentShipper => 'Odosielateľ';

  @override
  String get shipmentReceiver => 'Prijímateľ';

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
  String get shipmentAlternateTrackingNumber => 'Alternatívne sledovacie číslo';

  @override
  String get parcelMovedToActiveSuccess => 'Úspešne presunuté do aktívnych';

  @override
  String get parcelMovedToArchiveSuccess => 'Úspešne presunuté do archívu';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Sledovanie balíkov';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Upozornenie na aktivitu balíka';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Sledovanie balíka';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'Stav balíka bol aktualizovaný';

  @override
  String get settings => 'Nastavenia';

  @override
  String get settingsAppearance => 'Vzhľad';

  @override
  String get settingsBehavior => 'Správanie';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get settingsThemeSystem => 'Systémová';

  @override
  String get settingsThemeLight => 'Svetlá';

  @override
  String get settingsThemeDark => 'Tmavá';

  @override
  String get settingsNotificationsSection => 'Nastavenia upozornení';

  @override
  String get settingsTrackingNotifications => 'Upozornenia sledovania balíkov';

  @override
  String get settingsLanguage => 'Jazyk';

  @override
  String get settingsSystemLanguageOption => 'Systémový';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'Sledovanie nie je dostupné, lebo od posledného sledovania neuplynulo dosť času. Skúste znova po $time';
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
    return '$value sek.';
  }

  @override
  String get settingsTrackingSection => 'Nastavenie sledovania';

  @override
  String get settingsTrackingFreqLimit => 'Limit frekvencie sledovania';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'Nie častejšie ako $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15 minút';

  @override
  String get settingsTrackingFreqThirtyMin => '30 minút';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45 minút';

  @override
  String get settingsTrackingFreqOneHour => '1 hodina';

  @override
  String get settingsTrackingFreqUnlimited => 'Unlimited';

  @override
  String get settingsAutoTracking => 'Automatické sledovanie';

  @override
  String get settingsAutoTrackingFreq => 'Frekvencia sledovania';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Mininálny sledovací interval. Môže sa líšiť kvôli limitom systému (pripojenie na internet, režim spánku, a pod.)';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Každých 6 hodín';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Každých 12 hodín';

  @override
  String get settingsAutoTrackingFreqOneDay => 'Raz za deň';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Každé 3 dni';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'Raz za týždeň';

  @override
  String get settingsTrackingHistorySize => 'Dĺžka histórie sledovania';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Maximum záznamov v histórii sledovania';

  @override
  String get settingsTrackingErrorNotifications =>
      'Upozornenia na chyby sledovania';

  @override
  String get trackingErrorNotifyChannelTitle => 'Chyba sledovania';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Upozornenia o chybách sledovania balíkov';

  @override
  String get trackingError => 'Chyba sledovania';

  @override
  String get trackingFailed => 'Sledovanie zlyhalo';

  @override
  String get trackingErrorOccured =>
      'Nastala chyba pro sledovaní týchto balíkov:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary => 'Chyba aplikácie. Nahláste ju vývojárom';

  @override
  String get crashDialogExtraInfo =>
      'Pridajte dalšie informácie a komentáre tu:';

  @override
  String get crashDialogReport => 'Nahlásiť';

  @override
  String get crashDialogMoreDetails => 'Viac detailov';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Nenašiel sa email. Môžete chybu manuálne skopírovať a poslať na $email\nalebo na stránku projektu $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'Predvolené';

  @override
  String get defaultNotifyChannelDescription =>
      'Všetky upozornenia, ktoré nespadajú do iných kategórií';

  @override
  String get aboutApp => 'O aplikácii';

  @override
  String get changelog => 'Zoznam zmien';

  @override
  String get settingsDesktopSection => 'Pracovná plocha';

  @override
  String get settingsSystemTrayIcon => 'Ikona v systémovom paneli';

  @override
  String get openDetails => 'Otvoriť detaily';

  @override
  String get shareFailed => 'Nie je možné zdieľať';

  @override
  String get linuxTrayIconWarning =>
      'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Previous page';

  @override
  String get nextPage => 'Next page';

  @override
  String get upsAddAccountDescription =>
      'Musíte zadať autorizačné údaje vášho UPS účtu. Získate ich registráciou tu: https://www.ups.com/doapp/signup?loc=sk_SK\nPre získanie prístupového kľúča navštívte tento odkaz: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=sk_SK';

  @override
  String get ups => 'UPS';

  @override
  String get russianPost => 'Ruská pošta';

  @override
  String get russianPostAddAccountDescription =>
      '1. Registrujte sa na stránke Ruskej pošty: https://www.pochta.ru/\n2. Choďte do nastavení prístupu, povoľte sledovacie API a odsúhlaste podmienky: https://tracking.pochta.ru/access-settings\n3. Skopírujte login z nastavení prístupu (generovaný automaticky). Heslo dostanete na e-mail zadaný pri registrácii.';

  @override
  String get usps => 'USPS';

  @override
  String get uspsAddAccountDescription =>
      '1. Registujte sa na USPS Web Tools API Portal stránke: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. Počas registrácie, na otázku \"How will you be using the USPS Web Tools?\" odpovedzte \"Exclusively on my Web site\".\n3. Po registrácii dostanete autorizačné údaje na e-mail.';

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
