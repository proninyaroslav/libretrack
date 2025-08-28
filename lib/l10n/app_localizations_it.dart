// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'App privata multipiattaforma per il monitoraggio dei pacchi.\nUlteriori informazioni e anche per aiutare il progetto: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack è un software gratuito e open source (FOSS), rilasciato sotto i termini della GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Si';

  @override
  String get no => 'No';

  @override
  String get cancel => 'Cancel';

  @override
  String get accounts => 'Account';

  @override
  String get add => 'Aggiungi';

  @override
  String get delete => 'Cancella';

  @override
  String get apply => 'Applica';

  @override
  String get close => 'Chiudi';

  @override
  String get hide => 'Nascondi';

  @override
  String get show => 'Mostra';

  @override
  String get all => 'Tutto';

  @override
  String get edit => 'Modifica';

  @override
  String get name => 'Nome';

  @override
  String get open => 'Opri';

  @override
  String get optionalField => 'Opzionale';

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String selectedCounter(Object count) {
    return 'Selezionato: $count';
  }

  @override
  String get noAccounts => 'Nessun account';

  @override
  String get selectAccountType => 'Seleziona il tipo di account';

  @override
  String get enterAuthData => 'Inserisci i tuoi dati di autorizzazione';

  @override
  String get allAccountsAlreadyAdded =>
      'Tutti gli account sono già stati aggiunti';

  @override
  String get addAccount => 'Aggiungi account';

  @override
  String get editAccount => 'Modifica account';

  @override
  String get deleteAccountDialogMsg =>
      'Sei sicuro di eliminare l\'\'account selezionato??';

  @override
  String get pageNotFound => 'Pagina non trovata';

  @override
  String get openLinkFailed => 'Impossibile aprire il collegamento';

  @override
  String get login => 'Login';

  @override
  String get password => 'Password';

  @override
  String get accessKey => 'Chiave di accesso';

  @override
  String get username => 'Username';

  @override
  String get companyName => 'Company name';

  @override
  String get fieldRequiredError => 'Questo campo è obbligatorio';

  @override
  String get addAccountFailed => 'Impossibile aggiungere l\'\'account';

  @override
  String get editAccountFailed => 'Impossibile modificare l\'\'account';

  @override
  String get parcels => 'Pacchi';

  @override
  String get receiverParcels => 'I\'m receiver';

  @override
  String get shipperParcels => 'I\'m shipper';

  @override
  String get archiveParcels => 'Archivio';

  @override
  String get filtersAndSorting => 'Filtri e ordinamento';

  @override
  String get filters => 'Filtri';

  @override
  String get sorting => 'Ordinamento';

  @override
  String get noParcels => 'Nessun pacco';

  @override
  String get addAccountTip =>
      'Prima di tracciare i pacchi, devi aggiungere un account';

  @override
  String get addParcels => 'Aggiungi pacchi';

  @override
  String get track => 'Traccia';

  @override
  String get trackingNumbers => 'Numeri di tracciamento';

  @override
  String get trackingNumbersFieldHint => 'Uno per riga';

  @override
  String get parcelNames => 'Nomi dei pacchetti';

  @override
  String get parcelNamesFieldHint => 'Opzionale. Uno per riga';

  @override
  String get addParcelsFailed => 'Impossibile aggiungere i pacchi';

  @override
  String get statusNotAvailable =>
      'Nessuna informazione di tracciamento ancora';

  @override
  String get statusInfoReceived => 'Informazioni ricevute';

  @override
  String get statusPickup => 'Pickup';

  @override
  String get statusInTransit => 'In transito';

  @override
  String get statusOutForDelivery => 'In consegna';

  @override
  String get statusDelivered => 'Consegnato';

  @override
  String get statusReturnedToShipper => 'Restituito allo spedizioniere';

  @override
  String get statusNotDelivered => 'Non consegnato';

  @override
  String get statusInStorage => 'In magazzino';

  @override
  String get statusInTransitArrivedWaypoint => 'Arrivato al punto di passaggio';

  @override
  String get statusInTransitDepartedWaypoint =>
      'Partito dal punto di passaggio';

  @override
  String get statusExportedFromDepartureCountry =>
      'Esportato dal paese di partenza';

  @override
  String get statusImportedToDestinationCountry =>
      'Importato nel paese di destinazione';

  @override
  String get statusArrivedAtCustoms => 'Arrivato in dogana';

  @override
  String get statusCustomsClearanceComplete => 'Sdoganamento completato';

  @override
  String get trackingErrorNoInfo =>
      'Nessuna informazione di tracciamento disponibile';

  @override
  String get trackingErrorUnknown => 'Errore sconosciuto';

  @override
  String get trackingErrorNetwork => 'Errore di rete';

  @override
  String get trackingErrorService => 'Il servizio ha restituito un errore';

  @override
  String get trackingErrorAuth =>
      'Errore di autorizzazione. Si prega di controllare i dati del tuo account';

  @override
  String get trackingErrorInvalidTrackNumber =>
      'Numero di tracciamento non valido';

  @override
  String get trackingErrorMissingAuthData =>
      'Dati di autorizzazione mancanti. Controlla se hai un account e i dati sono corretti';

  @override
  String get trackingErrorMissingAccount =>
      'L\'account è mancante. Controlla se l\'account è stato aggiunto e che supporta il servizio postale selezionato';

  @override
  String get parcelsListHardErrorOccurred =>
      'Si è verificato un errore hardware, il monitoraggio è stato interrotto. Si prega di controllare i dettagli all\'\'interno';

  @override
  String get moveToArchive => 'Sposta in archivio';

  @override
  String get moveToReceiver => 'Move to incoming list';

  @override
  String get moveToShipper => 'Move to outgoing list';

  @override
  String get moveToActive => 'Sposta in attivo';

  @override
  String get markAsRead => 'Segna come letto';

  @override
  String get markAllAsRead => 'Segna tutti come letti';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Sei sicuro di eliminare i pacchi selezionati??',
      one: 'Sei sicuro di eliminare il pacco selezionato??',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Aggiorna';

  @override
  String get refreshAll => 'Aggiorna tutto';

  @override
  String get dataIsSecured => 'I dati sono archiviati in modo sicuro ';

  @override
  String get secureStorageIsNotSupported =>
      'La archiviazione sicura non è supportata. I dati vengono archiviati non protetti';

  @override
  String get copyTrackNumber => 'Copia numero di tracciamento';

  @override
  String get share => 'Condividi';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get status => 'Stato';

  @override
  String get unreadParcels => 'Non letto';

  @override
  String get error => 'Errore';

  @override
  String get postalService => 'Servizio postale';

  @override
  String get sortActivityDateAsc =>
      'Data dell\'\'attività (prima la piu recente)';

  @override
  String get sortActivityDateDesc =>
      'Data dell\'\'attività (prima la piu recente)';

  @override
  String get sortDateAddedAsc => 'Data aggiunta (prima la più recente)';

  @override
  String get sortDateAddedDesc => 'Data aggiunta (prima la più vecchia)';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => 'Scanner di codici a barre';

  @override
  String get barcodeScanFailed =>
      'Impossibile eseguire la scansione del codice a barre';

  @override
  String get loadPageFailed => 'Impossibile caricare la pagina';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Impossibile aggiornare i pacchi',
      one: 'Impossibile aggiornare il pacco',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Impossibile eliminare i pacchi',
      one: 'Impossibile eliminare il pacco',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Impossibile spostare i pacchi',
      one: 'Impossibile spostare il pacco',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Impossibile contrassegnare i pacchi come letti',
      one: 'Impossibile contrassegnare il pacco come letto',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Pacco non trovato';

  @override
  String get addToMyParcels => 'Aggiungi ai miei pacchi';

  @override
  String trackingStartedDate(Object date) {
    return 'Monitoraggio iniziato: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Ultimo monitoraggio: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Il tuo pacco è attualmente tracciato. Si prega di attendere qualche minuto';

  @override
  String get invalidTrackingNumberStatus =>
      'Numero di tracciamento non valido o servizio postale non supportato';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Pacco in transito $days days',
      many: 'Pacco in transito $days days',
      few: 'Pacco in transito $days days',
      one: 'Pacco in transito $days day',
      zero: 'Pacco in transito $days days',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Pacco consegnato il $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Package was out for delivery on $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'Non ci sono ancora informazioni sul pacco. Dopo che un pacco è stato inviato, potrebbero essere necessari diversi giorni prima che possa essere rintracciato';

  @override
  String get trackingStoppedStatus =>
      'Monitoraggio interrotto. Il monitoraggio si interrompe se si è verificato un errore hardware o se il servizio postale ha segnalato che non vengono forniti ulteriori stati';

  @override
  String get activateAndRefresh => 'Attiva e aggiorna';

  @override
  String get activateTrackingFailed => 'Impossibile attivare il monitoraggio';

  @override
  String get generateBarcode => 'Genera codice a barre';

  @override
  String generateBarcodFailed(Object error) {
    return 'Impossibile generare il codice a barre: $error';
  }

  @override
  String get editParcelFailed => 'Impossibile modificare il pacco';

  @override
  String get whoDeliveresParcel => 'Chi consegna il pacco';

  @override
  String get details => 'Dettagli';

  @override
  String get trackingHistory => 'Cronologia di monitoraggio';

  @override
  String get activateTracking => 'Attiva il monitoraggio';

  @override
  String get noTrackingHistory => 'Nessuna cronologia di monitoraggio';

  @override
  String get showError => 'Mostra errore';

  @override
  String get trackingResponseSuccess => 'Con successo';

  @override
  String get trackingResponseError => 'Errore';

  @override
  String get trackingResponseNoInfo => 'Nessuna informazione';

  @override
  String get trackingResponseStopped => 'Tracking stopped';

  @override
  String get trackingErrorReason => 'Motivo';

  @override
  String get trackingErrorCode => 'Codice';

  @override
  String get trackingErrorStackTrace => 'Traccia dello stack';

  @override
  String get errors => 'Errori';

  @override
  String get showErrors => 'Mostra errori';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'Si è verificato un errore hardware, il monitoraggio di alcuni servizi è stato interrotto. Controlla gli errori prima di attivare il monitoraggio';

  @override
  String get deleteAccountFailed => 'Impossibile eliminare l\'\'account';

  @override
  String get activityHistory => 'Cronologia attività';

  @override
  String get parcelInfo => 'Informazioni sul pacco';

  @override
  String parcelSignedBy(Object name) {
    return 'Firmato da: $name';
  }

  @override
  String get showMore => 'Mostra di più';

  @override
  String get shipmentServiceDescription => 'Servizio';

  @override
  String get shipmentDeliveryDate => 'Data di consegna';

  @override
  String get shipmentSignedBy => 'Firmato da';

  @override
  String get shipmentScheduledDeliveryDate => 'Data di consegna prevista';

  @override
  String get shipmentEstimatedDeliveryDate => 'Data stimata di consegna';

  @override
  String get shipmentPickupDate => 'Data di ritiro';

  @override
  String get shipmentWeight => 'Peso';

  @override
  String get shipmentDimensions => 'Dimensions [(L) x (W) x (H)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Volume';

  @override
  String get shipmentCashOnDelivery => 'Pagamento alla consegna';

  @override
  String get shipmentDeclaredValue => 'Valore dichiarato';

  @override
  String get shipmentCustomDuty => 'Dazio doganale';

  @override
  String get shipmentAdditionalRateFee => 'Tariffa aggiuntiva';

  @override
  String get shipmentShippingRateFee => 'Tariffa di spedizione';

  @override
  String get shipmentInsuranceRateFee => 'Tariffa assicurativa';

  @override
  String get shipmentTypeDescription => 'Tipo di spedizione';

  @override
  String get shipmentReceiverAddress => 'Indirizzo del destinatario';

  @override
  String get shipmentShipperAddress => 'Indirizzo del mittente';

  @override
  String get shipmentShipper => 'Mittente';

  @override
  String get shipmentReceiver => 'Destinatario';

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
  String get shipmentAlternateTrackingNumber =>
      'Numero di tracciamento alternativo';

  @override
  String get parcelMovedToActiveSuccess => 'Spostato in attivo con successo';

  @override
  String get parcelMovedToArchiveSuccess =>
      'Spostato nell\'\'archivio con successo';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Tracciamento dei pacchi';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Notifiche dell\'\'attività dei pacchi';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Tracciamento del pacco';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'Lo stato dei pacchi è aggiornato';

  @override
  String get settings => 'Impostazioni';

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsBehavior => 'Comportamento';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Chiaro';

  @override
  String get settingsThemeDark => 'Scuro';

  @override
  String get settingsNotificationsSection => 'Impostazioni delle notifiche';

  @override
  String get settingsTrackingNotifications =>
      'Notifiche di tracciamento del pacco';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsSystemLanguageOption => 'Sistema';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'Il monitoraggio non è disponibile perché è trascorso un po\' di tempo dall\'ultimo monitoraggio. Riprova dopo $time';
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
  String get settingsTrackingSection => 'Impostazioni di monitoraggio';

  @override
  String get settingsTrackingFreqLimit => 'Limite di frequenza di monitoraggio';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'Non più di una volta ogni $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15 minuti';

  @override
  String get settingsTrackingFreqThirtyMin => '30 minuti';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45 minuti';

  @override
  String get settingsTrackingFreqOneHour => '1 ora';

  @override
  String get settingsTrackingFreqUnlimited => 'Unlimited';

  @override
  String get settingsAutoTracking => 'Tracciamento automatico';

  @override
  String get settingsAutoTrackingFreq => 'Frequenza di monitoraggio';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Specifica l\'\'intervallo di rilevamento minimo. Questo intervallo non è preciso e può essere aumentato a causa di limitazioni del sistema (nessuna connessione Internet, modalità di risparmio energetico, ecc.)';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Ogni 6 ore';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Ogni 12 ore';

  @override
  String get settingsAutoTrackingFreqOneDay => 'Una volta al giorno';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Ogni 3 giorni';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'Una volta a settimana';

  @override
  String get settingsTrackingHistorySize =>
      'Monitoraggio delle dimensioni della cronologia';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Specifica il numero massimo di voci da conservare nella cronologia di tracciabilità dei pacchi';

  @override
  String get settingsTrackingErrorNotifications =>
      'Notifiche di errore di tracciamento';

  @override
  String get trackingErrorNotifyChannelTitle => 'Errore di tracciamento';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Notifiche dell\'\'errore di tracciamento dei pacchi';

  @override
  String get trackingError => 'Errore di tracciamento';

  @override
  String get trackingFailed => 'Monitoraggio non riuscito';

  @override
  String get trackingErrorOccured =>
      'Si è verificato un errore durante il monitoraggio dei seguenti pacchetti:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary =>
      'Si è verificato un errore dell\'\'app. Puoi segnalarlo agli sviluppatori';

  @override
  String get crashDialogExtraInfo =>
      'Aggiungi ulteriori informazioni e commenti qui:';

  @override
  String get crashDialogReport => 'Report';

  @override
  String get crashDialogMoreDetails => 'Maggiori dettagli';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Nessuna app di posta elettronica trovata. Puoi copiare manualmente l\'\'errore e inviarlo a $email\non inviare nella pagina del progetto $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'Predefinito';

  @override
  String get defaultNotifyChannelDescription =>
      'Tutte le notifiche non adatte alle altre categorie';

  @override
  String get aboutApp => 'Informazioni';

  @override
  String get changelog => 'Changelog';

  @override
  String get settingsDesktopSection => 'Desktop';

  @override
  String get settingsSystemTrayIcon => 'Icona della barra delle applicazioni';

  @override
  String get openDetails => 'Apri dettagli';

  @override
  String get shareFailed => 'Impossibile condividere';

  @override
  String get linuxTrayIconWarning =>
      'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Previous page';

  @override
  String get nextPage => 'Next page';

  @override
  String get upsAddAccountDescription =>
      'Devi inserire le informazioni di autorizzazione del tuo account UPS. Puoi registrarlo qui: https://www.ups.com/doapp/signup?loc=en_US\nPer ottenere una chiave di accesso, vai al link e segui le istruzioni: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US';

  @override
  String get ups => 'UPS';

  @override
  String get russianPost => 'Posta russa';

  @override
  String get russianPostAddAccountDescription =>
      '1. Registrati sul sito web delle Poste Russe: https://www.pochta.ru/\n2. Vai su Impostazioni di accesso, abilita l\'API di tracciamento e accetta i termini di servizio: https://tracking.pochta.ru/access-settings\n3. Nelle Impostazioni di accesso, copia il login (generato automaticamente). La password verrà inviata all\'e-mail, fornita durante la registrazione.';

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
