// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk_SK locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'sk_SK';

  static String m0(value) => "${value} bbl";

  static String m1(email, pageUrl) =>
      "Nenašiel sa email. Môžete chybu manuálne skopírovať a poslať na ${email}\nalebo na stránku projektu ${pageUrl}";

  static String m2(howMany) =>
      "${Intl.plural(howMany, one: 'Naozaj chcete zmazať tento balík?', other: 'Naozaj chcete zmazať tieto balíky?')}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'Nepodarilo sa zmazať balík', other: 'FNepodarilo sa zmazať balík')}";

  static String m4(value) => "${value} gal";

  static String m5(error) => "Neporarilo sa vygenerovať čiarový kód: ${error}";

  static String m6(value) => "${value} h.";

  static String m7(value) => "${value} kg";

  static String m8(date) => "Posledné sledovanie: ${date}";

  static String m9(value) => "${value} L";

  static String m10(howMany) =>
      "${Intl.plural(howMany, one: 'Nepodarilo sa označiť ako prečítané', other: 'Nepodarilo sa označiť ako prečítané')}";

  static String m11(value) => "${value} min.";

  static String m12(howMany) =>
      "${Intl.plural(howMany, one: 'Nepodarilo sa presunúť balík', other: 'Nepodarilo sa presunúť balík')}";

  static String m13(value) => "${value} oz";

  static String m14(date) => "Balík doručený ${date}";

  static String m15(days) =>
      "${Intl.plural(days, zero: 'Balík v preprave ${days} dní', one: 'Balík v preprave ${days} deň', few: 'Balík v preprave ${days} dni', many: 'Balík v preprave ${days} dní', other: 'Balík v preprave ${days} dní')}";

  static String m16(name) => "Podpísal: ${name}";

  static String m17(time) =>
      "Sledovanie nie je dostupné, lebo od posledného sledovania neuplynulo dosť času. Skúste znova po ${time}";

  static String m18(parcelName) => "• ${parcelName}";

  static String m19(title, body) => "${title}: ${body}";

  static String m20(value) => "${value} lb";

  static String m21(howMany) =>
      "${Intl.plural(howMany, one: 'Nepodarilo sa obnoviť balík', other: 'Nepodarilo sa obnoviť balíky')}";

  static String m22(value) => "${value} sek.";

  static String m23(count) => "Vybraté: ${count}";

  static String m24(time) => "Nie častejšie ako ${time}";

  static String m25(value) => "${value} ft²";

  static String m26(value) => "${value} m²";

  static String m27(value) => "${value} yd²";

  static String m28(date) => "Sledovanie začalo: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("O aplikácii"),
        "accessKey": MessageLookupByLibrary.simpleMessage("Prístupový kľúč"),
        "accounts": MessageLookupByLibrary.simpleMessage("Účty"),
        "activateAndRefresh":
            MessageLookupByLibrary.simpleMessage("Aktivovať a obnoviť"),
        "activateTracking":
            MessageLookupByLibrary.simpleMessage("Aktivovať sledovanie"),
        "activateTrackingFailed": MessageLookupByLibrary.simpleMessage(
            "Aktivácia sledovania zlyhala"),
        "activeParcels": MessageLookupByLibrary.simpleMessage("Aktívne"),
        "activityHistory":
            MessageLookupByLibrary.simpleMessage("História aktivít"),
        "add": MessageLookupByLibrary.simpleMessage("Pridať"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Pridať účet"),
        "addAccountFailed":
            MessageLookupByLibrary.simpleMessage("Pridanie účtu zlyhalo"),
        "addAccountTip": MessageLookupByLibrary.simpleMessage(
            "Pred sledovaním balíkov musíte pridať účet"),
        "addParcels": MessageLookupByLibrary.simpleMessage("Pridať balík"),
        "addParcelsFailed":
            MessageLookupByLibrary.simpleMessage("Pridanie balíkov zlyhalo"),
        "addToMyParcels":
            MessageLookupByLibrary.simpleMessage("Pridať do mojich balíkov"),
        "all": MessageLookupByLibrary.simpleMessage("Všetky"),
        "allAccountsAlreadyAdded":
            MessageLookupByLibrary.simpleMessage("Všetky účty boli pridané"),
        "appChangelogUrl": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
        "appDescription": MessageLookupByLibrary.simpleMessage(
            "Cross-platformová apka na sledovanie balíkov.\nTu nájdete viac informácii a môžete prispieť: https://github.com/proninyaroslav/libretrack"),
        "appLicense": MessageLookupByLibrary.simpleMessage(
            "LibreTrack is Free And Open Source software (FOSS), released under the terms of the GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
        "apply": MessageLookupByLibrary.simpleMessage("Použiť"),
        "archiveParcels": MessageLookupByLibrary.simpleMessage("Archív"),
        "barcodeScanFailed":
            MessageLookupByLibrary.simpleMessage("Čítanie kódu zlyhalo"),
        "barcodeScanner":
            MessageLookupByLibrary.simpleMessage("Skener čiarových kódov"),
        "barrelUnitShort": m0,
        "cancel": MessageLookupByLibrary.simpleMessage("Zrušiť"),
        "changelog": MessageLookupByLibrary.simpleMessage("Zoznam zmien"),
        "close": MessageLookupByLibrary.simpleMessage("Zatvoriť"),
        "companyName": MessageLookupByLibrary.simpleMessage("Názov firmy"),
        "copiedToClipboard":
            MessageLookupByLibrary.simpleMessage("Skopírované do schránky"),
        "copyTrackNumber":
            MessageLookupByLibrary.simpleMessage("Kopírovať sledovacie číslo"),
        "crashDialogExtraInfo": MessageLookupByLibrary.simpleMessage(
            "Pridajte dalšie informácie a komentáre tu:"),
        "crashDialogMoreDetails":
            MessageLookupByLibrary.simpleMessage("Viac detailov"),
        "crashDialogNoEmailApp": m1,
        "crashDialogReport": MessageLookupByLibrary.simpleMessage("Nahlásiť"),
        "crashDialogSummary": MessageLookupByLibrary.simpleMessage(
            "Chyba aplikácie. Nahláste ju vývojárom"),
        "dataIsSecured":
            MessageLookupByLibrary.simpleMessage("Údaje sú bezpečne uložené"),
        "defaultNotifyChannelDescription": MessageLookupByLibrary.simpleMessage(
            "Všetky upozornenia, ktoré nespadajú do iných kategórií"),
        "defaultNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Predvolené"),
        "delete": MessageLookupByLibrary.simpleMessage("Zmazať"),
        "deleteAccountDialogMsg": MessageLookupByLibrary.simpleMessage(
            "Ste si istí, že chcete zmazať tento účet?"),
        "deleteAccountFailed":
            MessageLookupByLibrary.simpleMessage("Nepodarilo sa zmazať účet"),
        "deleteParcelDialogMsg": m2,
        "deleteParcelsFailed": m3,
        "details": MessageLookupByLibrary.simpleMessage("Detaily"),
        "edit": MessageLookupByLibrary.simpleMessage("Upraviť"),
        "editAccount": MessageLookupByLibrary.simpleMessage("Upraviť účet"),
        "editAccountFailed":
            MessageLookupByLibrary.simpleMessage("Úprava účtu zlyhala"),
        "editParcelFailed":
            MessageLookupByLibrary.simpleMessage("Nepodarilo sa upraviť balík"),
        "enterAuthData":
            MessageLookupByLibrary.simpleMessage("Zadajte autorizačné údaje"),
        "error": MessageLookupByLibrary.simpleMessage("Chyba"),
        "errors": MessageLookupByLibrary.simpleMessage("Chyby"),
        "fieldRequiredError":
            MessageLookupByLibrary.simpleMessage("Toto pole je povinné"),
        "filters": MessageLookupByLibrary.simpleMessage("Filtre"),
        "filtersAndSorting":
            MessageLookupByLibrary.simpleMessage("Filtre a triedenie"),
        "gallonUnitShort": m4,
        "generateBarcodFailed": m5,
        "generateBarcode":
            MessageLookupByLibrary.simpleMessage("Vygenerovať čiarový kód"),
        "hide": MessageLookupByLibrary.simpleMessage("Schovať"),
        "hoursShortFormat": m6,
        "invalidTrackingNumberStatus": MessageLookupByLibrary.simpleMessage(
            "Neplatné alebo nepodporované sledovacie číslo"),
        "kilogramUnitShort": m7,
        "lastTrackingDate": m8,
        "literUnitShort": m9,
        "loadPageFailed": MessageLookupByLibrary.simpleMessage(
            "Nepodarilo sa načítať stránku"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "markAllAsRead": MessageLookupByLibrary.simpleMessage(
            "Označiť všetko ako prečítané"),
        "markAsRead":
            MessageLookupByLibrary.simpleMessage("Označiť ako prečítané"),
        "markAsReadParcelFailed": m10,
        "minutesShortFormat": m11,
        "moveParcelFailed": m12,
        "moveToActive":
            MessageLookupByLibrary.simpleMessage("Presnunúť do aktívnych"),
        "moveToArchive":
            MessageLookupByLibrary.simpleMessage("Presunúť do archívu"),
        "name": MessageLookupByLibrary.simpleMessage("Meno"),
        "no": MessageLookupByLibrary.simpleMessage("Nie"),
        "noAccounts": MessageLookupByLibrary.simpleMessage("Žiadne účty"),
        "noParcels": MessageLookupByLibrary.simpleMessage("Žiadne balíky"),
        "noTrackingHistory":
            MessageLookupByLibrary.simpleMessage("Žiadna história"),
        "open": MessageLookupByLibrary.simpleMessage("Otvoriť"),
        "openDetails": MessageLookupByLibrary.simpleMessage("Otvoriť detaily"),
        "openLinkFailed":
            MessageLookupByLibrary.simpleMessage("Nie je možné otvoriť odkaz"),
        "optionalField": MessageLookupByLibrary.simpleMessage("Voliteľné"),
        "ounceUnitShort": m13,
        "pageNotFound":
            MessageLookupByLibrary.simpleMessage("Stránka nenájdená"),
        "parcelDeliveredStatus": m14,
        "parcelDetailsHardErrorOccurred": MessageLookupByLibrary.simpleMessage(
            "Nastala chyba, sledovanie niektorých služieb bolo zastavené. Skontrolujte chyby pred aktiváciou sledovania"),
        "parcelInTransitStatus": m15,
        "parcelInfo": MessageLookupByLibrary.simpleMessage("Info o balíku"),
        "parcelInfoNotAvailableStatus": MessageLookupByLibrary.simpleMessage(
            "O balíku nie sú informácie. Po odoslaní balíka možno treba počkať kým ho bude možné sledovať"),
        "parcelMovedToActiveSuccess": MessageLookupByLibrary.simpleMessage(
            "Úspešne presunuté do aktívnych"),
        "parcelMovedToArchiveSuccess": MessageLookupByLibrary.simpleMessage(
            "Úspešne presunuté do archívu"),
        "parcelNames": MessageLookupByLibrary.simpleMessage("Mená balíkov"),
        "parcelNamesFieldHint":
            MessageLookupByLibrary.simpleMessage("Voliteľné. Jeden na riadok."),
        "parcelNotFound":
            MessageLookupByLibrary.simpleMessage("Balík sa nenašiel"),
        "parcelSignedBy": m16,
        "parcelTrackingLimitedError": m17,
        "parcelTrackingStatus": MessageLookupByLibrary.simpleMessage(
            "Prebieha sledovanie balíka. Prosím počkajte pár minút"),
        "parcels": MessageLookupByLibrary.simpleMessage("Balíky"),
        "parcelsListHardErrorOccurred": MessageLookupByLibrary.simpleMessage(
            "Vyskytla sa chyba, sledovanie zastavené. Detaily nájdete vnútri"),
        "parcelsTrackingFailedInboxStyleLine": m18,
        "parcelsTrackingNotifyChannelDescription":
            MessageLookupByLibrary.simpleMessage(
                "Upozornenie na aktivitu balíka"),
        "parcelsTrackingNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Sledovanie balíkov"),
        "parcelsTrackingNotifyInboxStyleDescription":
            MessageLookupByLibrary.simpleMessage(
                "Stav balíka bol aktualizovaný"),
        "parcelsTrackingNotifyInboxStyleLine": m19,
        "parcelsTrackingNotifyInboxStyleTitle":
            MessageLookupByLibrary.simpleMessage("Sledovanie balíka"),
        "password": MessageLookupByLibrary.simpleMessage("Heslo"),
        "postalService": MessageLookupByLibrary.simpleMessage("Poštová služba"),
        "poundUnitShort": m20,
        "projectIssuesPage": MessageLookupByLibrary.simpleMessage(
            "https://github.com/proninyaroslav/libretrack/issues"),
        "refresh": MessageLookupByLibrary.simpleMessage("Obnoviť"),
        "refreshAll": MessageLookupByLibrary.simpleMessage("Obnoviť všetko"),
        "refreshParcelsFailed": m21,
        "russianPost": MessageLookupByLibrary.simpleMessage("Ruská pošta"),
        "russianPostAddAccountDescription": MessageLookupByLibrary.simpleMessage(
            "1. Registrujte sa na stránke Ruskej pošty: https://www.pochta.ru/\n2. Choďte do nastavení prístupu, povoľte sledovacie API a odsúhlaste podmienky: https://tracking.pochta.ru/access-settings\n3. Skopírujte login z nastavení prístupu (generovaný automaticky). Heslo dostanete na e-mail zadaný pri registrácii."),
        "secondsShortFormat": m22,
        "secureStorageIsNotSupported": MessageLookupByLibrary.simpleMessage(
            "Šifrovanie nie je podporované. Údaje nie sú bezpečne uložené"),
        "selectAccountType":
            MessageLookupByLibrary.simpleMessage("Prosím vyberte typ účtu"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Vybrať všetko"),
        "selectedCounter": m23,
        "settings": MessageLookupByLibrary.simpleMessage("Nastavenia"),
        "settingsAppearance": MessageLookupByLibrary.simpleMessage("Vzhľad"),
        "settingsAutoTracking":
            MessageLookupByLibrary.simpleMessage("Automatické sledovanie"),
        "settingsAutoTrackingFreq":
            MessageLookupByLibrary.simpleMessage("Frekvencia sledovania"),
        "settingsAutoTrackingFreqDescr": MessageLookupByLibrary.simpleMessage(
            "Mininálny sledovací interval. Môže sa líšiť kvôli limitom systému (pripojenie na internet, režim spánku, a pod.)"),
        "settingsAutoTrackingFreqOneDay":
            MessageLookupByLibrary.simpleMessage("Raz za deň"),
        "settingsAutoTrackingFreqOneWeek":
            MessageLookupByLibrary.simpleMessage("Raz za týždeň"),
        "settingsAutoTrackingFreqSixHours":
            MessageLookupByLibrary.simpleMessage("Každých 6 hodín"),
        "settingsAutoTrackingFreqThreeDays":
            MessageLookupByLibrary.simpleMessage("Každé 3 dni"),
        "settingsAutoTrackingFreqTwelveHours":
            MessageLookupByLibrary.simpleMessage("Každých 12 hodín"),
        "settingsBehavior": MessageLookupByLibrary.simpleMessage("Správanie"),
        "settingsDesktopSection":
            MessageLookupByLibrary.simpleMessage("Pracovná plocha"),
        "settingsLanguage": MessageLookupByLibrary.simpleMessage("Jazyk"),
        "settingsNotificationsSection":
            MessageLookupByLibrary.simpleMessage("Nastavenia upozornení"),
        "settingsSystemLanguageOption":
            MessageLookupByLibrary.simpleMessage("Systémový"),
        "settingsSystemTrayIcon":
            MessageLookupByLibrary.simpleMessage("Ikona v systémovom paneli"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Téma"),
        "settingsThemeDark": MessageLookupByLibrary.simpleMessage("Tmavá"),
        "settingsThemeLight": MessageLookupByLibrary.simpleMessage("Svetlá"),
        "settingsThemeSystem":
            MessageLookupByLibrary.simpleMessage("Systémová"),
        "settingsTrackingErrorNotifications":
            MessageLookupByLibrary.simpleMessage(
                "Upozornenia na chyby sledovania"),
        "settingsTrackingFreqFifteenMin":
            MessageLookupByLibrary.simpleMessage("15 minút"),
        "settingsTrackingFreqFortyFiveMin":
            MessageLookupByLibrary.simpleMessage("45 minút"),
        "settingsTrackingFreqLimit":
            MessageLookupByLibrary.simpleMessage("Limit frekvencie sledovania"),
        "settingsTrackingFreqLimitSummary": m24,
        "settingsTrackingFreqOneHour":
            MessageLookupByLibrary.simpleMessage("1 hodina"),
        "settingsTrackingFreqThirtyMin":
            MessageLookupByLibrary.simpleMessage("30 minút"),
        "settingsTrackingHistorySize":
            MessageLookupByLibrary.simpleMessage("Dĺžka histórie sledovania"),
        "settingsTrackingHistorySizeDescr":
            MessageLookupByLibrary.simpleMessage(
                "Maximum záznamov v histórii sledovania"),
        "settingsTrackingNotifications": MessageLookupByLibrary.simpleMessage(
            "Upozornenia sledovania balíkov"),
        "settingsTrackingSection":
            MessageLookupByLibrary.simpleMessage("Nastavenie sledovania"),
        "share": MessageLookupByLibrary.simpleMessage("Zdieľať"),
        "shareFailed":
            MessageLookupByLibrary.simpleMessage("Nie je možné zdieľať"),
        "shipmentAdditionalRateFee":
            MessageLookupByLibrary.simpleMessage("Dodatočný poplatok"),
        "shipmentAlternateTrackingNumber": MessageLookupByLibrary.simpleMessage(
            "Alternatívne sledovacie číslo"),
        "shipmentCashOnDelivery":
            MessageLookupByLibrary.simpleMessage("Dobierka"),
        "shipmentCustomDuty":
            MessageLookupByLibrary.simpleMessage("Colný poplatok"),
        "shipmentDeclaredValue":
            MessageLookupByLibrary.simpleMessage("Deklarovaná hodnota"),
        "shipmentDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Dátum doručenia"),
        "shipmentEstimatedDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Odhadovaný dátum doručenia"),
        "shipmentInsuranceRateFee":
            MessageLookupByLibrary.simpleMessage("Poistenie"),
        "shipmentPickupDate":
            MessageLookupByLibrary.simpleMessage("Dátum prevzatia"),
        "shipmentReceiver": MessageLookupByLibrary.simpleMessage("Prijímateľ"),
        "shipmentReceiverAddress":
            MessageLookupByLibrary.simpleMessage("Adresa prijímateľa"),
        "shipmentScheduledDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Plánovaný dátum doručenia"),
        "shipmentServiceDescription":
            MessageLookupByLibrary.simpleMessage("Služba"),
        "shipmentShipper": MessageLookupByLibrary.simpleMessage("Odosielateľ"),
        "shipmentShipperAddress":
            MessageLookupByLibrary.simpleMessage("Adresa odosielateľa"),
        "shipmentShippingRateFee":
            MessageLookupByLibrary.simpleMessage("Poštovné"),
        "shipmentSignedBy": MessageLookupByLibrary.simpleMessage("Podpísal"),
        "shipmentTypeDescription":
            MessageLookupByLibrary.simpleMessage("Typ zásielky"),
        "shipmentVolume": MessageLookupByLibrary.simpleMessage("Objem"),
        "shipmentWeight": MessageLookupByLibrary.simpleMessage("Váha"),
        "show": MessageLookupByLibrary.simpleMessage("Ukázať"),
        "showError": MessageLookupByLibrary.simpleMessage("Ukázať chybu"),
        "showErrors": MessageLookupByLibrary.simpleMessage("Ukázať chyby"),
        "showMore": MessageLookupByLibrary.simpleMessage("Ukázať viac"),
        "sortActivityDateAsc": MessageLookupByLibrary.simpleMessage(
            "Dátum aktivity (od najnovších)"),
        "sortActivityDateDesc": MessageLookupByLibrary.simpleMessage(
            "Dátum aktivity (od najstarších)"),
        "sortAlphabeticallyAsc": MessageLookupByLibrary.simpleMessage("A - Z"),
        "sortAlphabeticallyDesc": MessageLookupByLibrary.simpleMessage("Z - A"),
        "sortDateAddedAsc": MessageLookupByLibrary.simpleMessage(
            "Dátum pridania (nod najnovších)"),
        "sortDateAddedDesc": MessageLookupByLibrary.simpleMessage(
            "Dátum pridania (od najnovších)"),
        "sorting": MessageLookupByLibrary.simpleMessage("Triedenie"),
        "squareFeetUnitShort": m25,
        "squareMeterUnitShort": m26,
        "squareYardUnitShort": m27,
        "status": MessageLookupByLibrary.simpleMessage("Stav"),
        "statusArrivedAtCustoms":
            MessageLookupByLibrary.simpleMessage("Príchod na colnicu"),
        "statusCustomsClearanceComplete":
            MessageLookupByLibrary.simpleMessage("Colný proces dokončený"),
        "statusDelivered": MessageLookupByLibrary.simpleMessage("Doručená"),
        "statusExportedFromDepartureCountry":
            MessageLookupByLibrary.simpleMessage(
                "Exportovaná z krajiny pôvodu"),
        "statusImportedToDestinationCountry":
            MessageLookupByLibrary.simpleMessage(
                "Importovaná do krajiny určenia"),
        "statusInStorage": MessageLookupByLibrary.simpleMessage("Uložená"),
        "statusInTransit": MessageLookupByLibrary.simpleMessage("V preprave"),
        "statusInTransitArrivedWaypoint": MessageLookupByLibrary.simpleMessage(
            "Dorazila do kontrolného bodu"),
        "statusInTransitDepartedWaypoint":
            MessageLookupByLibrary.simpleMessage("Vyrazila z kontrolného bodu"),
        "statusInfoReceived":
            MessageLookupByLibrary.simpleMessage("Informácie prijaté"),
        "statusNotAvailable":
            MessageLookupByLibrary.simpleMessage("Zatiaľ žiadne informácie"),
        "statusNotDelivered":
            MessageLookupByLibrary.simpleMessage("Nedoručená"),
        "statusOutForDelivery":
            MessageLookupByLibrary.simpleMessage("Na doručení"),
        "statusPickup": MessageLookupByLibrary.simpleMessage("Prevzatá"),
        "statusReturnedToShipper":
            MessageLookupByLibrary.simpleMessage("Vrátená odosielateľovi"),
        "track": MessageLookupByLibrary.simpleMessage("Sledovať"),
        "trackingError":
            MessageLookupByLibrary.simpleMessage("Chyba sledovania"),
        "trackingErrorAuth": MessageLookupByLibrary.simpleMessage(
            "Chyba autorizácie. Skotrolujte si vaše údaje"),
        "trackingErrorCode": MessageLookupByLibrary.simpleMessage("Kód"),
        "trackingErrorInvalidTrackNumber":
            MessageLookupByLibrary.simpleMessage("Neplatné sledovacie číslo"),
        "trackingErrorMissingAccount": MessageLookupByLibrary.simpleMessage(
            "Chýba účet. Skontrolujte či bol pridaný a či podporuje túto poštovú službu"),
        "trackingErrorMissingAuthData": MessageLookupByLibrary.simpleMessage(
            "Chýbajú autorizačné dáta. Skontrolujte či máte pridaný účet a či sú údaje v poriadku"),
        "trackingErrorNetwork":
            MessageLookupByLibrary.simpleMessage("Chyba siete"),
        "trackingErrorNoInfo": MessageLookupByLibrary.simpleMessage(
            "Informácie o sledovaní nedostupné"),
        "trackingErrorNotifyChannelDescription":
            MessageLookupByLibrary.simpleMessage(
                "Upozornenia o chybách sledovania balíkov"),
        "trackingErrorNotifyChannelTitle":
            MessageLookupByLibrary.simpleMessage("Chyba sledovania"),
        "trackingErrorOccured": MessageLookupByLibrary.simpleMessage(
            "Nastala chyba pro sledovaní týchto balíkov:"),
        "trackingErrorReason": MessageLookupByLibrary.simpleMessage("Dôvod"),
        "trackingErrorService":
            MessageLookupByLibrary.simpleMessage("Služba vrátila chybu"),
        "trackingErrorStackTrace":
            MessageLookupByLibrary.simpleMessage("Záznam stacku"),
        "trackingErrorUnknown":
            MessageLookupByLibrary.simpleMessage("Neznáma chyba"),
        "trackingFailed":
            MessageLookupByLibrary.simpleMessage("Sledovanie zlyhalo"),
        "trackingHistory":
            MessageLookupByLibrary.simpleMessage("História sledovania"),
        "trackingNumbers":
            MessageLookupByLibrary.simpleMessage("Sledovacie čisla"),
        "trackingNumbersFieldHint":
            MessageLookupByLibrary.simpleMessage("Jedno na riadok."),
        "trackingResponseError": MessageLookupByLibrary.simpleMessage("Chyba"),
        "trackingResponseNoInfo":
            MessageLookupByLibrary.simpleMessage("Žiadne informácie"),
        "trackingResponseSuccess":
            MessageLookupByLibrary.simpleMessage("Úspešne"),
        "trackingStartedDate": m28,
        "trackingStoppedStatus": MessageLookupByLibrary.simpleMessage(
            "Sledovanie zastavené. Toto sa stáva ked je problém s balíkom alebo keď poštová služba nahlási koniec sledovania"),
        "unreadParcels": MessageLookupByLibrary.simpleMessage("Neprečítané"),
        "ups": MessageLookupByLibrary.simpleMessage("UPS"),
        "upsAddAccountDescription": MessageLookupByLibrary.simpleMessage(
            "Musíte zadať autorizačné údaje vášho UPS účtu. Získate ich registráciou tu: https://www.ups.com/doapp/signup?loc=sk_SK\nPre získanie prístupového kľúča navštívte tento odkaz: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=sk_SK"),
        "username": MessageLookupByLibrary.simpleMessage("Meno používateľa"),
        "usps": MessageLookupByLibrary.simpleMessage("USPS"),
        "uspsAddAccountDescription": MessageLookupByLibrary.simpleMessage(
            "1. Registujte sa na USPS Web Tools API Portal stránke: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. Počas registrácie, na otázku \"How will you be using the USPS Web Tools?\" odpovedzte \"Exclusively on my Web site\".\n3. Po registrácii dostanete autorizačné údaje na e-mail."),
        "whoDeliveresParcel":
            MessageLookupByLibrary.simpleMessage("Kto balík doručuje"),
        "yes": MessageLookupByLibrary.simpleMessage("Áno")
      };
}
