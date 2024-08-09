// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it_IT locale. All the
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
  String get localeName => 'it_IT';

  static m0(value) => "${value} bbl";

  static m2(email, pageUrl) => "Nessuna app di posta elettronica trovata. Puoi copiare manualmente l\'\'errore e inviarlo a ${email}\non inviare nella pagina del progetto ${pageUrl}";

  static m5(howMany) => "${Intl.plural(howMany, one: 'Sei sicuro di eliminare il pacco selezionato??', other: 'Sei sicuro di eliminare i pacchi selezionati??')}";

  static m6(howMany) => "${Intl.plural(howMany, one: 'Impossibile eliminare il pacco', other: 'Impossibile eliminare i pacchi')}";

  static m8(value) => "${value} gal";

  static m9(error) => "Impossibile generare il codice a barre: ${error}";

  static m10(value) => "${value} h.";

  static m11(value) => "${value} kg";

  static m12(date) => "Ultimo monitoraggio: ${date}";

  static m13(value) => "${value} L";

  static m14(howMany) => "${Intl.plural(howMany, one: 'Impossibile contrassegnare il pacco come letto', other: 'Impossibile contrassegnare i pacchi come letti')}";

  static m16(value) => "${value} min.";

  static m17(howMany) => "${Intl.plural(howMany, one: 'Impossibile spostare il pacco', other: 'Impossibile spostare i pacchi')}";

  static m18(value) => "${value} oz";

  static m19(date) => "Pacco consegnato il ${date}";

  static m20(days) => "${Intl.plural(days, zero: 'Pacco in transito ${days} days', one: 'Pacco in transito ${days} day', few: 'Pacco in transito ${days} days', many: 'Pacco in transito ${days} days', other: 'Pacco in transito ${days} days')}";

  static m22(name) => "Firmato da: ${name}";

  static m23(time) => "Il monitoraggio non è disponibile perché è trascorso un po\' di tempo dall\'ultimo monitoraggio. Riprova dopo ${time}";

  static m24(parcelName) => "• ${parcelName}";

  static m25(title, body) => "${title}: ${body}";

  static m26(value) => "${value} lb";

  static m27(howMany) => "${Intl.plural(howMany, one: 'Impossibile aggiornare il pacco', other: 'Impossibile aggiornare i pacchi')}";

  static m28(value) => "${value} sec.";

  static m29(count) => "Selezionato: ${count}";

  static m30(time) => "Non più di una volta ogni ${time}";

  static m31(value) => "${value} ft²";

  static m32(value) => "${value} m²";

  static m33(value) => "${value} yd²";

  static m34(date) => "Monitoraggio iniziato: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("Informazioni"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Chiave di accesso"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Account"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Attiva e aggiorna"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Attiva il monitoraggio"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Impossibile attivare il monitoraggio"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Attivo"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("Cronologia attività"),
    "add" : MessageLookupByLibrary.simpleMessage("Aggiungi"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Aggiungi account"),
    "addAccountFailed" : MessageLookupByLibrary.simpleMessage("Impossibile aggiungere l\'\'account"),
    "addAccountTip" : MessageLookupByLibrary.simpleMessage("Prima di tracciare i pacchi, devi aggiungere un account"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Aggiungi pacchi"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Impossibile aggiungere i pacchi"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Aggiungi ai miei pacchi"),
    "all" : MessageLookupByLibrary.simpleMessage("Tutto"),
    "allAccountsAlreadyAdded" : MessageLookupByLibrary.simpleMessage("Tutti gli account sono già stati aggiunti"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("App privata multipiattaforma per il monitoraggio dei pacchi.\nUlteriori informazioni e anche per aiutare il progetto: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack è un software gratuito e open source (FOSS), rilasciato sotto i termini della GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Applica"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Archivio"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Impossibile eseguire la scansione del codice a barre"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Scanner di codici a barre"),
    "barrelUnitShort" : m0,
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancel"),
    "changelog" : MessageLookupByLibrary.simpleMessage("Changelog"),
    "close" : MessageLookupByLibrary.simpleMessage("Chiudi"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Copiato negli appunti"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Copia numero di tracciamento"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Aggiungi ulteriori informazioni e commenti qui:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("Maggiori dettagli"),
    "crashDialogNoEmailApp" : m2,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Report"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("Si è verificato un errore dell\'\'app. Puoi segnalarlo agli sviluppatori"),
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("I dati sono archiviati in modo sicuro "),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Tutte le notifiche non adatte alle altre categorie"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Predefinito"),
    "delete" : MessageLookupByLibrary.simpleMessage("Cancella"),
    "deleteAccountDialogMsg" : MessageLookupByLibrary.simpleMessage("Sei sicuro di eliminare l\'\'account selezionato??"),
    "deleteAccountFailed" : MessageLookupByLibrary.simpleMessage("Impossibile eliminare l\'\'account"),
    "deleteParcelDialogMsg" : m5,
    "deleteParcelsFailed" : m6,
    "details" : MessageLookupByLibrary.simpleMessage("Dettagli"),
    "edit" : MessageLookupByLibrary.simpleMessage("Modifica"),
    "editAccount" : MessageLookupByLibrary.simpleMessage("Modifica account"),
    "editAccountFailed" : MessageLookupByLibrary.simpleMessage("Impossibile modificare l\'\'account"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Impossibile modificare il pacco"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Inserisci i tuoi dati di autorizzazione"),
    "error" : MessageLookupByLibrary.simpleMessage("Errore"),
    "errors" : MessageLookupByLibrary.simpleMessage("Errori"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Questo campo è obbligatorio"),
    "filters" : MessageLookupByLibrary.simpleMessage("Filtri"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Filtri e ordinamento"),
    "gallonUnitShort" : m8,
    "generateBarcodFailed" : m9,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Genera codice a barre"),
    "hide" : MessageLookupByLibrary.simpleMessage("Nascondi"),
    "hoursShortFormat" : m10,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Numero di tracciamento non valido o servizio postale non supportato"),
    "kilogramUnitShort" : m11,
    "lastTrackingDate" : m12,
    "literUnitShort" : m13,
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Impossibile caricare la pagina"),
    "login" : MessageLookupByLibrary.simpleMessage("Login"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Segna tutti come letti"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Segna come letto"),
    "markAsReadParcelFailed" : m14,
    "minutesShortFormat" : m16,
    "moveParcelFailed" : m17,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Sposta in attivo"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Sposta in archivio"),
    "name" : MessageLookupByLibrary.simpleMessage("Nome"),
    "no" : MessageLookupByLibrary.simpleMessage("No"),
    "noAccounts" : MessageLookupByLibrary.simpleMessage("Nessun account"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("Nessun pacco"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("Nessuna cronologia di monitoraggio"),
    "open" : MessageLookupByLibrary.simpleMessage("Opri"),
    "openDetails" : MessageLookupByLibrary.simpleMessage("Apri dettagli"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("Impossibile aprire il collegamento"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Opzionale"),
    "ounceUnitShort" : m18,
    "pageNotFound" : MessageLookupByLibrary.simpleMessage("Pagina non trovata"),
    "parcelDeliveredStatus" : m19,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Si è verificato un errore hardware, il monitoraggio di alcuni servizi è stato interrotto. Controlla gli errori prima di attivare il monitoraggio"),
    "parcelInTransitStatus" : m20,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Informazioni sul pacco"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("Non ci sono ancora informazioni sul pacco. Dopo che un pacco è stato inviato, potrebbero essere necessari diversi giorni prima che possa essere rintracciato"),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Spostato in attivo con successo"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Spostato nell\'\'archivio con successo"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Nomi dei pacchetti"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Opzionale. Uno per riga"),
    "parcelNotFound" : MessageLookupByLibrary.simpleMessage("Pacco non trovato"),
    "parcelSignedBy" : m22,
    "parcelTrackingLimitedError" : m23,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Il tuo pacco è attualmente tracciato. Si prega di attendere qualche minuto"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Pacchi"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Si è verificato un errore hardware, il monitoraggio è stato interrotto. Si prega di controllare i dettagli all\'\'interno"),
    "parcelsTrackingFailedInboxStyleLine" : m24,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifiche dell\'\'attività dei pacchi"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Tracciamento dei pacchi"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("Lo stato dei pacchi è aggiornato"),
    "parcelsTrackingNotifyInboxStyleLine" : m25,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Tracciamento del pacco"),
    "password" : MessageLookupByLibrary.simpleMessage("Password"),
    "postalService" : MessageLookupByLibrary.simpleMessage("Servizio postale"),
    "poundUnitShort" : m26,
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Aggiorna"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Aggiorna tutto"),
    "refreshParcelsFailed" : m27,
    "russianPost" : MessageLookupByLibrary.simpleMessage("Posta russa"),
    "russianPostAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1. Registrati sul sito web delle Poste Russe: https://www.pochta.ru/\n2. Vai su Impostazioni di accesso, abilita l\'API di tracciamento e accetta i termini di servizio: https://tracking.pochta.ru/access-settings\n3. Nelle Impostazioni di accesso, copia il login (generato automaticamente). La password verrà inviata all\'e-mail, fornita durante la registrazione."),
    "secondsShortFormat" : m28,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("La archiviazione sicura non è supportata. I dati vengono archiviati non protetti"),
    "selectAccountType" : MessageLookupByLibrary.simpleMessage("Seleziona il tipo di account"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Seleziona tutto"),
    "selectedCounter" : m29,
    "settings" : MessageLookupByLibrary.simpleMessage("Impostazioni"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Aspetto"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Tracciamento automatico"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Frequenza di monitoraggio"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Specifica l\'\'intervallo di rilevamento minimo. Questo intervallo non è preciso e può essere aumentato a causa di limitazioni del sistema (nessuna connessione Internet, modalità di risparmio energetico, ecc.)"),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("Una volta al giorno"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("Una volta a settimana"),
    "settingsAutoTrackingFreqSixHours" : MessageLookupByLibrary.simpleMessage("Ogni 6 ore"),
    "settingsAutoTrackingFreqThreeDays" : MessageLookupByLibrary.simpleMessage("Ogni 3 giorni"),
    "settingsAutoTrackingFreqTwelveHours" : MessageLookupByLibrary.simpleMessage("Ogni 12 ore"),
    "settingsBehavior" : MessageLookupByLibrary.simpleMessage("Comportamento"),
    "settingsDesktopSection" : MessageLookupByLibrary.simpleMessage("Desktop"),
    "settingsLanguage" : MessageLookupByLibrary.simpleMessage("Lingua"),
    "settingsNotificationsSection" : MessageLookupByLibrary.simpleMessage("Impostazioni delle notifiche"),
    "settingsSystemLanguageOption" : MessageLookupByLibrary.simpleMessage("Sistema"),
    "settingsSystemTrayIcon" : MessageLookupByLibrary.simpleMessage("Icona della barra delle applicazioni"),
    "settingsTheme" : MessageLookupByLibrary.simpleMessage("Tema"),
    "settingsThemeDark" : MessageLookupByLibrary.simpleMessage("Scuro"),
    "settingsThemeLight" : MessageLookupByLibrary.simpleMessage("Chiaro"),
    "settingsThemeSystem" : MessageLookupByLibrary.simpleMessage("Sistema"),
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Notifiche di errore di tracciamento"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 minuti"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 minuti"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Limite di frequenza di monitoraggio"),
    "settingsTrackingFreqLimitSummary" : m30,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 ora"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 minuti"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Monitoraggio delle dimensioni della cronologia"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Specifica il numero massimo di voci da conservare nella cronologia di tracciabilità dei pacchi"),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Notifiche di tracciamento del pacco"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Impostazioni di monitoraggio"),
    "share" : MessageLookupByLibrary.simpleMessage("Condividi"),
    "shareFailed" : MessageLookupByLibrary.simpleMessage("Impossibile condividere"),
    "shipmentAdditionalRateFee" : MessageLookupByLibrary.simpleMessage("Tariffa aggiuntiva"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("Numero di tracciamento alternativo"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Pagamento alla consegna"),
    "shipmentCustomDuty" : MessageLookupByLibrary.simpleMessage("Dazio doganale"),
    "shipmentDeclaredValue" : MessageLookupByLibrary.simpleMessage("Valore dichiarato"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Data di consegna"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Data stimata di consegna"),
    "shipmentInsuranceRateFee" : MessageLookupByLibrary.simpleMessage("Tariffa assicurativa"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Data di ritiro"),
    "shipmentReceiver" : MessageLookupByLibrary.simpleMessage("Destinatario"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Indirizzo del destinatario"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Data di consegna prevista"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Servizio"),
    "shipmentShipper" : MessageLookupByLibrary.simpleMessage("Mittente"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Indirizzo del mittente"),
    "shipmentShippingRateFee" : MessageLookupByLibrary.simpleMessage("Tariffa di spedizione"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Firmato da"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Tipo di spedizione"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Volume"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Peso"),
    "show" : MessageLookupByLibrary.simpleMessage("Mostra"),
    "showError" : MessageLookupByLibrary.simpleMessage("Mostra errore"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Mostra errori"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Mostra di più"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Data dell\'\'attività (prima la piu recente)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Data dell\'\'attività (prima la piu recente)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("A - Z"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Z - A"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Data aggiunta (prima la più recente)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Data aggiunta (prima la più vecchia)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Ordinamento"),
    "squareFeetUnitShort" : m31,
    "squareMeterUnitShort" : m32,
    "squareYardUnitShort" : m33,
    "status" : MessageLookupByLibrary.simpleMessage("Stato"),
    "statusArrivedAtCustoms" : MessageLookupByLibrary.simpleMessage("Arrivato in dogana"),
    "statusCustomsClearanceComplete" : MessageLookupByLibrary.simpleMessage("Sdoganamento completato"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Consegnato"),
    "statusExportedFromDepartureCountry" : MessageLookupByLibrary.simpleMessage("Esportato dal paese di partenza"),
    "statusImportedToDestinationCountry" : MessageLookupByLibrary.simpleMessage("Importato nel paese di destinazione"),
    "statusInStorage" : MessageLookupByLibrary.simpleMessage("In magazzino"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("In transito"),
    "statusInTransitArrivedWaypoint" : MessageLookupByLibrary.simpleMessage("Arrivato al punto di passaggio"),
    "statusInTransitDepartedWaypoint" : MessageLookupByLibrary.simpleMessage("Partito dal punto di passaggio"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Informazioni ricevute"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("Nessuna informazione di tracciamento ancora"),
    "statusNotDelivered" : MessageLookupByLibrary.simpleMessage("Non consegnato"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("In consegna"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Pickup"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Restituito allo spedizioniere"),
    "track" : MessageLookupByLibrary.simpleMessage("Traccia"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Errore di tracciamento"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Errore di autorizzazione. Si prega di controllare i dati del tuo account"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Codice"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Numero di tracciamento non valido"),
    "trackingErrorMissingAccount" : MessageLookupByLibrary.simpleMessage("L\'account è mancante. Controlla se l\'account è stato aggiunto e che supporta il servizio postale selezionato"),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Dati di autorizzazione mancanti. Controlla se hai un account e i dati sono corretti"),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Errore di rete"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("Nessuna informazione di tracciamento disponibile"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifiche dell\'\'errore di tracciamento dei pacchi"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Errore di tracciamento"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("Si è verificato un errore durante il monitoraggio dei seguenti pacchetti:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Motivo"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("Il servizio ha restituito un errore"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Traccia dello stack"),
    "trackingErrorUnknown" : MessageLookupByLibrary.simpleMessage("Errore sconosciuto"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Monitoraggio non riuscito"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("Cronologia di monitoraggio"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("Numeri di tracciamento"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("Uno per riga"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Errore"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("Nessuna informazione"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Con successo"),
    "trackingStartedDate" : m34,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Monitoraggio interrotto. Il monitoraggio si interrompe se si è verificato un errore hardware o se il servizio postale ha segnalato che non vengono forniti ulteriori stati"),
    "unreadParcels" : MessageLookupByLibrary.simpleMessage("Non letto"),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "upsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("Devi inserire le informazioni di autorizzazione del tuo account UPS. Puoi registrarlo qui: https://www.ups.com/doapp/signup?loc=en_US\nPer ottenere una chiave di accesso, vai al link e segui le istruzioni: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US"),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Chi consegna il pacco"),
    "yes" : MessageLookupByLibrary.simpleMessage("Si")
  };
}
