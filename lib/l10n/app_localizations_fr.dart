// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Simplifie la comparaison de photos de scellés inviolables et de motifs à l\'\'aide de vos yeux.\nPlus d\'\'informations et aussi pour aider le projet: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack est one logiciel libre et gratuit (FOSS), publié selon les termes de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get cancel => 'Annuler';

  @override
  String get accounts => 'Accounts';

  @override
  String get add => 'Ajouter';

  @override
  String get delete => 'Supprimer';

  @override
  String get apply => 'Appliquer';

  @override
  String get close => 'Fermer';

  @override
  String get hide => 'Cacher';

  @override
  String get show => 'Afficher';

  @override
  String get all => 'Tout';

  @override
  String get edit => 'Modifier';

  @override
  String get name => 'Nom';

  @override
  String get open => 'Ouvrir';

  @override
  String get optionalField => 'Optionnel';

  @override
  String get selectAll => 'Sélectionner tout';

  @override
  String selectedCounter(Object count) {
    return 'Sélectionné: $count';
  }

  @override
  String get noAccounts => 'No accounts';

  @override
  String get selectAccountType => 'Please select account type';

  @override
  String get enterAuthData => 'Entrez vos données d\'\'autorisation';

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
  String get openLinkFailed => 'Impossible d\'\'ouvrir le lien';

  @override
  String get login => 'Connexion';

  @override
  String get password => 'Mot de passe';

  @override
  String get accessKey => 'Clé d\'\'accès';

  @override
  String get username => 'Nom d\'\'utilisateur';

  @override
  String get companyName => 'Nom de la société';

  @override
  String get fieldRequiredError => 'Ce champ est obligatoire';

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
  String get archiveParcels => 'Archives';

  @override
  String get filtersAndSorting => 'Filtres et tri';

  @override
  String get filters => 'Filtres';

  @override
  String get sorting => 'Triage';

  @override
  String get noParcels => 'Aucone paquet';

  @override
  String get addAccountTip =>
      'Before tracking packages, you need to add an account';

  @override
  String get addParcels => 'Ajouter des paquets';

  @override
  String get track => 'Trace';

  @override
  String get trackingNumbers => 'tracage des nombres';

  @override
  String get trackingNumbersFieldHint => 'one par ligne';

  @override
  String get parcelNames => 'Noms des paquets';

  @override
  String get parcelNamesFieldHint => 'Optionnel. one par ligne';

  @override
  String get addParcelsFailed => 'Échec de l\'\'ajout de paquets';

  @override
  String get statusNotAvailable => 'Pas encore d\'\'informations sur le suivi';

  @override
  String get statusInfoReceived => 'Infos reçues';

  @override
  String get statusPickup => 'Pickup';

  @override
  String get statusInTransit => 'En transit';

  @override
  String get statusOutForDelivery => 'En attente de livraison';

  @override
  String get statusDelivered => 'Livré';

  @override
  String get statusReturnedToShipper => 'Renvoyé à l\'\'expéditeur';

  @override
  String get statusNotDelivered => 'Non livré';

  @override
  String get statusInStorage => 'En stock';

  @override
  String get statusInTransitArrivedWaypoint => 'Arrivé au point de passage';

  @override
  String get statusInTransitDepartedWaypoint => 'Départ du point de passage';

  @override
  String get statusExportedFromDepartureCountry =>
      'Exported from the departure country';

  @override
  String get statusImportedToDestinationCountry =>
      'Imported to the destination country';

  @override
  String get statusArrivedAtCustoms => 'Arrivée aux douanes';

  @override
  String get statusCustomsClearanceComplete => 'Dédouanement terminé';

  @override
  String get trackingErrorNoInfo => 'Auconee information de suivi disponible';

  @override
  String get trackingErrorUnknown => 'Unknown error';

  @override
  String get trackingErrorNetwork => 'Erreur de réseau';

  @override
  String get trackingErrorService => 'Le service a renvoyé onee erreur';

  @override
  String get trackingErrorAuth =>
      'Erreur d\'\'autorisation. Veuillez vérifier les données de votre compte';

  @override
  String get trackingErrorInvalidTrackNumber => 'Numéro de suivi non valide';

  @override
  String get trackingErrorMissingAuthData =>
      'Données d\'\'autorisation manquantes. Vérifiez si vous avez one compte et si les données sont correctes.';

  @override
  String get trackingErrorMissingAccount =>
      'Account is missing. Check if the account has been added and that it supports the selected postal service';

  @override
  String get parcelsListHardErrorOccurred =>
      'onee erreur matérielle s\'\'est produite, le suivi s\'\'est arrêté. Veuillez vérifier les détails à l\'\'intérieur';

  @override
  String get moveToArchive => 'Déplacer vers les archives';

  @override
  String get moveToReceiver => 'Move to incoming list';

  @override
  String get moveToShipper => 'Move to outgoing list';

  @override
  String get moveToActive => 'Passer à l\'\'actif';

  @override
  String get markAsRead => 'Marquer comme lu';

  @override
  String get markAllAsRead => 'Marquer tout comme lu';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Etes-vous sûr de vouloir supprimer le paquet sélectionné?',
      one: 'Etes-vous sûr de vouloir supprimer le paquet sélectionné?',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Rafraîchir';

  @override
  String get refreshAll => 'Rafraîchir tout';

  @override
  String get dataIsSecured => 'Les données sont stockées en toute sécurité';

  @override
  String get secureStorageIsNotSupported =>
      'Le stockage sécurisé n\'\'est pas pris en charge. Les données sont stockées sans protection';

  @override
  String get copyTrackNumber => 'Copie du numéro de suivi';

  @override
  String get share => 'Partager';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get status => 'Statut';

  @override
  String get unreadParcels => 'Unread';

  @override
  String get error => 'Erreur';

  @override
  String get postalService => 'Service postal';

  @override
  String get sortActivityDateAsc =>
      'Date d\'\'activité (la plus récente en premier)';

  @override
  String get sortActivityDateDesc =>
      'Date d\'\'activité (la plus ancienne en premier)';

  @override
  String get sortDateAddedAsc => 'Date d\'\'ajout (la plus récente en premier)';

  @override
  String get sortDateAddedDesc =>
      'Date d\'\'ajout (la plus ancienne en premier)';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => 'Scanner de code-barres';

  @override
  String get barcodeScanFailed => 'Impossible de scanner le code-barres';

  @override
  String get loadPageFailed => 'Impossible de charger la page';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Échec du rafraîchissement du paquet',
      one: 'Échec du rafraîchissement du paquet',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Échec de la suppression du paquet',
      one: 'Échec de la suppression du paquet',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Échec du déplacement du paquet',
      one: 'Échec du déplacement du paquet',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Impossible de marquer le paquet comme lu',
      one: 'Impossible de marquer le paquet comme lu',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Package not found';

  @override
  String get addToMyParcels => 'Ajouter à mes forfaits';

  @override
  String trackingStartedDate(Object date) {
    return 'Début du suivi: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Dernier suivi: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Votre colis est actuellement suivi. Veuillez patienter quelques minutes';

  @override
  String get invalidTrackingNumberStatus =>
      'Numéro de suivi non valide ou service postal non pris en charge';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Paquet en transit $days jours',
      many: 'Package in transit $days days',
      few: 'Paquet en transit $days jours',
      one: 'Paquet en transit $days jour',
      zero: 'Paquet en transit $days jours',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Paquet livré le $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Package was out for delivery on $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'Il n\'\'y a pas encore d\'\'informations sur le colis. Après l\'\'envoi d\'\'one paquet, il peut s\'\'écouler plusieurs jours avant que l\'\'on puisse le suivre.';

  @override
  String get trackingStoppedStatus =>
      'Suivi arrêté. Le suivi s\'\'arrête s\'\'il y a eu onee erreur matérielle, ou si le service postal a signalé que les others statuts ne sont pas fournis.';

  @override
  String get activateAndRefresh => 'Activer et rafraîchir';

  @override
  String get activateTrackingFailed => 'Échec de l\'\'activation du suivi';

  @override
  String get generateBarcode => 'Générer one code-barres';

  @override
  String generateBarcodFailed(Object error) {
    return 'Impossible de générer one code-barres: $error';
  }

  @override
  String get editParcelFailed => 'Échec de l\'\'édition du paquet';

  @override
  String get whoDeliveresParcel => 'Qui livre le colis';

  @override
  String get details => 'Détails';

  @override
  String get trackingHistory => 'Historique de suivi';

  @override
  String get activateTracking => 'Activer le suivi';

  @override
  String get noTrackingHistory => 'Pas d\'\'historique de suivi';

  @override
  String get showError => 'Afficher l\'\'erreur';

  @override
  String get trackingResponseSuccess => 'Avec succès';

  @override
  String get trackingResponseError => 'Erreur';

  @override
  String get trackingResponseNoInfo => 'Auconee information';

  @override
  String get trackingResponseStopped => 'Tracking stopped';

  @override
  String get trackingErrorReason => 'Raison';

  @override
  String get trackingErrorCode => 'Code';

  @override
  String get trackingErrorStackTrace => 'Trace de pile';

  @override
  String get errors => 'Erreurs';

  @override
  String get showErrors => 'Afficher les erreurs';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'onee erreur matérielle s\'\'est produite, le suivi de certains services s\'\'est arrêté. Vérifiez les erreurs avant d\'\'activer le suivi';

  @override
  String get deleteAccountFailed => 'Failed to delete account';

  @override
  String get activityHistory => 'Historique des activités';

  @override
  String get parcelInfo => 'Informations sur le paquet';

  @override
  String parcelSignedBy(Object name) {
    return 'Signé par: $name';
  }

  @override
  String get showMore => 'Afficher plus';

  @override
  String get shipmentServiceDescription => 'Service';

  @override
  String get shipmentDeliveryDate => 'Date de livraison';

  @override
  String get shipmentSignedBy => 'Signé par';

  @override
  String get shipmentScheduledDeliveryDate => 'Date de livraison prévue';

  @override
  String get shipmentEstimatedDeliveryDate => 'Date de livraison estimée';

  @override
  String get shipmentPickupDate => 'Date d\'\'enlèvement';

  @override
  String get shipmentWeight => 'Poids';

  @override
  String get shipmentDimensions => 'Dimensions [(L) x (W) x (H)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Volume';

  @override
  String get shipmentCashOnDelivery => 'Paiement à la livraison';

  @override
  String get shipmentDeclaredValue => 'Valeur déclarée';

  @override
  String get shipmentCustomDuty => 'Droit de douane';

  @override
  String get shipmentAdditionalRateFee => 'Tarif supplémentaire';

  @override
  String get shipmentShippingRateFee => 'Frais d\'\'expédition';

  @override
  String get shipmentInsuranceRateFee => 'Frais de taux d\'\'assurance';

  @override
  String get shipmentTypeDescription => 'Type d\'\'expédition';

  @override
  String get shipmentReceiverAddress => 'Adresse du destinataire';

  @override
  String get shipmentShipperAddress => 'Adresse de l\'\'expéditeur';

  @override
  String get shipmentShipper => 'Expéditeur';

  @override
  String get shipmentReceiver => 'Récepteur';

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
  String get shipmentAlternateTrackingNumber => 'other numéro de suivi';

  @override
  String get parcelMovedToActiveSuccess =>
      'Passé à l\'\'état actif avec succès';

  @override
  String get parcelMovedToArchiveSuccess =>
      'Déplacé vers les archives avec succès';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Suivi des paquets';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Notifications de l\'\'activité des paquets';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Suivi des colis';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'L\'\'état des paquets est mis à jour';

  @override
  String get settings => 'Paramètres';

  @override
  String get settingsAppearance => 'Apparition';

  @override
  String get settingsBehavior => 'Comportement';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get settingsThemeSystem => 'Système';

  @override
  String get settingsThemeLight => 'Lumineux';

  @override
  String get settingsThemeDark => 'Sombre';

  @override
  String get settingsNotificationsSection => 'Paramètres des notifications';

  @override
  String get settingsTrackingNotifications =>
      'Notifications de suivi des coliss';

  @override
  String get settingsLanguage => 'Langage';

  @override
  String get settingsSystemLanguageOption => 'Système';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'Le suivi n\'\'est pas disponible, car one peu de temps s\'\'est écoulé depuis le dernier suivi. Veuillez réessayer après $time';
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
  String get settingsTrackingSection => 'Paramètres de suivi';

  @override
  String get settingsTrackingFreqLimit => 'Limite de la fréquence de poursuite';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'Pas plus d\'\'onee fois tous les $time';
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
  String get settingsAutoTracking => 'Suivi automatique';

  @override
  String get settingsAutoTrackingFreq => 'Fréquence de suivi';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Spécifie l\'\'intervalle minimum de suivi. Cet intervalle n\'\'est pas précis et peut être augmenté en raison des limitations du système (pas de connexion Internet, mode économie d\'\'énergie, etc.).';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Toutes les 6 heures';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Toutes les 12 heures';

  @override
  String get settingsAutoTrackingFreqOneDay => 'onee fois par jour';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Tous les 3 jours';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'onee fois par semaine';

  @override
  String get settingsTrackingHistorySize =>
      'Taille de l\'\'historique de suivi';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Spécifie le nombre maximum d\'\'entrées à conserver dans l\'\'historique de suivi des colis.';

  @override
  String get settingsTrackingErrorNotifications =>
      'Notifications d\'\'erreurs de suivi';

  @override
  String get trackingErrorNotifyChannelTitle => 'Erreur de suivi';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Notifications d\'\'erreur de suivi des colis';

  @override
  String get trackingError => 'Erreur de suivi';

  @override
  String get trackingFailed => 'Le suivi a échoué';

  @override
  String get trackingErrorOccured =>
      'onee erreur s\'\'est produite lors du suivi des paquets suivants:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary =>
      'onee erreur d\'\'application s\'\'est produite. Vous pouvez le signaler aux développeurs';

  @override
  String get crashDialogExtraInfo =>
      'Ajoutez des infos supplémentaires et des commentaires ici:';

  @override
  String get crashDialogReport => 'Report';

  @override
  String get crashDialogMoreDetails => 'Plus de détails';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Auconee application de messagerie trouvée. Vous pouvez copier manuellement l\'\'erreur et l\'\'envoyer à $email\nou envoyer sur la page du projet $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'Défaut';

  @override
  String get defaultNotifyChannelDescription =>
      'Toutes les notifications qui ne conviennent pas aux others catégories';

  @override
  String get aboutApp => 'À propos';

  @override
  String get changelog => 'Historique des modifications';

  @override
  String get settingsDesktopSection => 'Poste de travail';

  @override
  String get settingsSystemTrayIcon => 'Icône de barre de système';

  @override
  String get openDetails => 'Ouvrir les détails';

  @override
  String get shareFailed => 'Impossible de partager';

  @override
  String get linuxTrayIconWarning =>
      'Certains environnements peuvent ne pas prendre en charge la barre d\'\'état système par défaut. Par exemple, pour travailler dans GNOME, installez cette extension (ou similaire): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Page précédente';

  @override
  String get nextPage => 'Page suivante';

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
