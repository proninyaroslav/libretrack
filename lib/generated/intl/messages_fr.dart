// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static m0(value) => "${value} bbl";

  static m1(email, pageUrl) => "Aucune application de messagerie trouvée. Vous pouvez copier manuellement l\'erreur et l\'envoyer à ${email}\nou envoyer sur la page du projet ${pageUrl}";

  static m2(howMany) => "{combien, pluriel, un {Etes-vous sûr de vouloir supprimer le paquet sélectionné?} autre {Etes-vous sûr de vouloir supprimer le paquet sélectionné?}}";

  static m3(howMany) => "{combien, pluriel, un {Échec de la suppression du paquet} autre {Échec de la suppression du paquet}}";

  static m4(value) => "${value} gal";

  static m5(error) => "Impossible de générer un code-barres: ${error}";

  static m6(value) => "${value} h.";

  static m7(value) => "${value} kg";

  static m8(date) => "Dernier suivi: ${date}";

  static m9(value) => "${value} L";

  static m10(howMany) => "{combien, pluriel, un {Impossible de marquer le paquet comme lu} autre {Impossible de marquer le paquet comme lu}}";

  static m11(value) => "${value} min.";

  static m12(howMany) => "{combien, pluriel, un {Échec du déplacement du paquet} autre {Échec du déplacement du paquet}}";

  static m13(value) => "${value} oz";

  static m14(date) => "Paquet livré le ${date}";

  static m15(days) => "{jours, pluriel, zéro {Paquet en transit ${days} jours} un {Paquet en transit ${days} jour} quelques {Paquet en transit ${days} jours} beaucoup de {Package in transit ${days} days} other {Paquet en transit ${days} jours}}";

  static m16(name) => "Signé par: ${name}";

  static m17(time) => "Le suivi n\'est pas disponible, car un peu de temps s\'est écoulé depuis le dernier suivi. Veuillez réessayer après ${time}";

  static m18(parcelName) => "• ${parcelName}";

  static m19(title, body) => "${title}: ${body}";

  static m20(value) => "${value} lb";

  static m21(howMany) => "{combien, pluriel, un {Échec du rafraîchissement du paquet} autre {Échec du rafraîchissement du paquet}}";

  static m22(value) => "${value} sec.";

  static m23(count) => "Sélectionné: ${count}";

  static m24(time) => "Pas plus d\'une fois tous les ${time}";

  static m25(value) => "${value} ft²";

  static m26(value) => "${value} m²";

  static m27(value) => "${value} yd²";

  static m28(date) => "Début du suivi: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("À propos"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Clé d\'accès"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Comptes"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Activer et rafraîchir"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Activer le suivi"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'activation du suivi"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Actif"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("Historique des activités"),
    "add" : MessageLookupByLibrary.simpleMessage("Ajouter"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Ajouter un compte"),
    "addAccountFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'ajout d\'un compte"),
    "addAccountTip" : MessageLookupByLibrary.simpleMessage("Avant de tracer les paquets, vous devez ajouter un compte"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Ajouter des paquets"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'ajout de paquets"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Ajouter à mes forfaits"),
    "all" : MessageLookupByLibrary.simpleMessage("Tout"),
    "allAccountsAlreadyAdded" : MessageLookupByLibrary.simpleMessage("Tous les comptes ont déjà été ajoutés"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("Simplifie la comparaison de photos de scellés inviolables et de motifs à l\'aide de vos yeux.\nPlus d\'informations et aussi pour aider le projet: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack est un logiciel libre et gratuit (FOSS), publié selon les termes de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Appliquer"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Archives"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Impossible de scanner le code-barres"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Scanner de code-barres"),
    "barrelUnitShort" : m0,
    "cancel" : MessageLookupByLibrary.simpleMessage("Annuler"),
    "changelog" : MessageLookupByLibrary.simpleMessage("Historique des modifications"),
    "close" : MessageLookupByLibrary.simpleMessage("Fermer"),
    "companyName" : MessageLookupByLibrary.simpleMessage("Nom de la société"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Copié dans le presse-papiers"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Copie du numéro de suivi"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Ajoutez des infos supplémentaires et des commentaires ici:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("Plus de détails"),
    "crashDialogNoEmailApp" : m1,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Report"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("Une erreur d\'application s\'est produite. Vous pouvez le signaler aux développeurs"),
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("Les données sont stockées en toute sécurité"),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Toutes les notifications qui ne conviennent pas aux autres catégories"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Défaut"),
    "delete" : MessageLookupByLibrary.simpleMessage("Supprimer"),
    "deleteAccountDialogMsg" : MessageLookupByLibrary.simpleMessage("Etes-vous sûr de vouloir supprimer le compte sélectionné?"),
    "deleteAccountFailed" : MessageLookupByLibrary.simpleMessage("Échec de la suppression du compte"),
    "deleteParcelDialogMsg" : m2,
    "deleteParcelsFailed" : m3,
    "details" : MessageLookupByLibrary.simpleMessage("Détails"),
    "edit" : MessageLookupByLibrary.simpleMessage("Modifier"),
    "editAccount" : MessageLookupByLibrary.simpleMessage("Modifier le compte"),
    "editAccountFailed" : MessageLookupByLibrary.simpleMessage("Échec de la modification du compte"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'édition du paquet"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Entrez vos données d\'autorisation"),
    "error" : MessageLookupByLibrary.simpleMessage("Erreur"),
    "errors" : MessageLookupByLibrary.simpleMessage("Erreurs"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Ce champ est obligatoire"),
    "filters" : MessageLookupByLibrary.simpleMessage("Filtres"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Filtres et tri"),
    "gallonUnitShort" : m4,
    "generateBarcodFailed" : m5,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Générer un code-barres"),
    "hide" : MessageLookupByLibrary.simpleMessage("Cacher"),
    "hoursShortFormat" : m6,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Numéro de suivi non valide ou service postal non pris en charge"),
    "kilogramUnitShort" : m7,
    "lastTrackingDate" : m8,
    "linuxTrayIconWarning" : MessageLookupByLibrary.simpleMessage("Certains environnements peuvent ne pas prendre en charge la barre d\'état système par défaut. Par exemple, pour travailler dans GNOME, installez cette extension (ou similaire): https://extensions.gnome.org/extension/615/appindicator-support/"),
    "literUnitShort" : m9,
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Impossible de charger la page"),
    "login" : MessageLookupByLibrary.simpleMessage("Connexion"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Marquer tout comme lu"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Marquer comme lu"),
    "markAsReadParcelFailed" : m10,
    "minutesShortFormat" : m11,
    "moveParcelFailed" : m12,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Passer à l\'actif"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Déplacer vers les archives"),
    "name" : MessageLookupByLibrary.simpleMessage("Nom"),
    "nextPage" : MessageLookupByLibrary.simpleMessage("Page suivante"),
    "no" : MessageLookupByLibrary.simpleMessage("Non"),
    "noAccounts" : MessageLookupByLibrary.simpleMessage("Aucun compte"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("Aucun paquet"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("Pas d\'historique de suivi"),
    "open" : MessageLookupByLibrary.simpleMessage("Ouvrir"),
    "openDetails" : MessageLookupByLibrary.simpleMessage("Ouvrir les détails"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("Impossible d\'ouvrir le lien"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Optionnel"),
    "ounceUnitShort" : m13,
    "pageNotFound" : MessageLookupByLibrary.simpleMessage("Page non trouvée"),
    "parcelDeliveredStatus" : m14,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Une erreur matérielle s\'est produite, le suivi de certains services s\'est arrêté. Vérifiez les erreurs avant d\'activer le suivi"),
    "parcelInTransitStatus" : m15,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Informations sur le paquet"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("Il n\'y a pas encore d\'informations sur le colis. Après l\'envoi d\'un paquet, il peut s\'écouler plusieurs jours avant que l\'on puisse le suivre."),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Passé à l\'état actif avec succès"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Déplacé vers les archives avec succès"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Noms des paquets"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Optionnel. Un par ligne"),
    "parcelNotFound" : MessageLookupByLibrary.simpleMessage("Paquet non trouvé"),
    "parcelSignedBy" : m16,
    "parcelTrackingLimitedError" : m17,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Votre colis est actuellement suivi. Veuillez patienter quelques minutes"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Packages"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Une erreur matérielle s\'est produite, le suivi s\'est arrêté. Veuillez vérifier les détails à l\'intérieur"),
    "parcelsTrackingFailedInboxStyleLine" : m18,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications de l\'activité des paquets"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Suivi des paquets"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("L\'état des paquets est mis à jour"),
    "parcelsTrackingNotifyInboxStyleLine" : m19,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Suivi des colis"),
    "password" : MessageLookupByLibrary.simpleMessage("Mot de passe"),
    "postalService" : MessageLookupByLibrary.simpleMessage("Service postal"),
    "poundUnitShort" : m20,
    "previousPage" : MessageLookupByLibrary.simpleMessage("Page précédente"),
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Rafraîchir"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Rafraîchir tout"),
    "refreshParcelsFailed" : m21,
    "russianPost" : MessageLookupByLibrary.simpleMessage("Russian Post"),
    "russianPostAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1. Inscrivez-vous sur le site web de Russian Post: https://www.pochta.ru/\n2. Allez dans les paramètres d\'accès, activez l\'API de suivi et acceptez les conditions de service.: https://tracking.pochta.ru/access-settings\n3. Dans les paramètres d\'accès, copiez le login (généré automatiquement). Le mot de passe sera envoyé à l\'adresse électronique fournie lors de l\'inscription."),
    "secondsShortFormat" : m22,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("Le stockage sécurisé n\'est pas pris en charge. Les données sont stockées sans protection"),
    "selectAccountType" : MessageLookupByLibrary.simpleMessage("Veuillez sélectionner le type de compte"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Sélectionner tout"),
    "selectedCounter" : m23,
    "settings" : MessageLookupByLibrary.simpleMessage("Paramètres"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Apparition"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Suivi automatique"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Fréquence de suivi"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Spécifie l\'intervalle minimum de suivi. Cet intervalle n\'est pas précis et peut être augmenté en raison des limitations du système (pas de connexion Internet, mode économie d\'énergie, etc.)."),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("Une fois par jour"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("Une fois par semaine"),
    "settingsAutoTrackingFreqSixHours" : MessageLookupByLibrary.simpleMessage("Toutes les 6 heures"),
    "settingsAutoTrackingFreqThreeDays" : MessageLookupByLibrary.simpleMessage("Tous les 3 jours"),
    "settingsAutoTrackingFreqTwelveHours" : MessageLookupByLibrary.simpleMessage("Toutes les 12 heures"),
    "settingsBehavior" : MessageLookupByLibrary.simpleMessage("Comportement"),
    "settingsDesktopSection" : MessageLookupByLibrary.simpleMessage("Poste de travail"),
    "settingsLanguage" : MessageLookupByLibrary.simpleMessage("Langage"),
    "settingsNotificationsSection" : MessageLookupByLibrary.simpleMessage("Paramètres des notifications"),
    "settingsSystemLanguageOption" : MessageLookupByLibrary.simpleMessage("Système"),
    "settingsSystemTrayIcon" : MessageLookupByLibrary.simpleMessage("Icône de barre de système"),
    "settingsTheme" : MessageLookupByLibrary.simpleMessage("Thème"),
    "settingsThemeDark" : MessageLookupByLibrary.simpleMessage("Sombre"),
    "settingsThemeLight" : MessageLookupByLibrary.simpleMessage("Lumineux"),
    "settingsThemeSystem" : MessageLookupByLibrary.simpleMessage("Système"),
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Notifications d\'erreurs de suivi"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 minutes"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 minutes"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Limite de la fréquence de poursuite"),
    "settingsTrackingFreqLimitSummary" : m24,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 hour"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 minutes"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Taille de l\'historique de suivi"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Spécifie le nombre maximum d\'entrées à conserver dans l\'historique de suivi des colis."),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Notifications de suivi des coliss"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Paramètres de suivi"),
    "share" : MessageLookupByLibrary.simpleMessage("Partager"),
    "shareFailed" : MessageLookupByLibrary.simpleMessage("Impossible de partager"),
    "shipmentAdditionalRateFee" : MessageLookupByLibrary.simpleMessage("Tarif supplémentaire"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("Autre numéro de suivi"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Paiement à la livraison"),
    "shipmentCustomDuty" : MessageLookupByLibrary.simpleMessage("Droit de douane"),
    "shipmentDeclaredValue" : MessageLookupByLibrary.simpleMessage("Valeur déclarée"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison estimée"),
    "shipmentInsuranceRateFee" : MessageLookupByLibrary.simpleMessage("Frais de taux d\'assurance"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Date d\'enlèvement"),
    "shipmentReceiver" : MessageLookupByLibrary.simpleMessage("Récepteur"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Adresse du destinataire"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison prévue"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Service"),
    "shipmentShipper" : MessageLookupByLibrary.simpleMessage("Expéditeur"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Adresse de l\'expéditeur"),
    "shipmentShippingRateFee" : MessageLookupByLibrary.simpleMessage("Frais d\'expédition"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Signé par"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Type d\'expédition"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Volume"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Poids"),
    "show" : MessageLookupByLibrary.simpleMessage("Afficher"),
    "showError" : MessageLookupByLibrary.simpleMessage("Afficher l\'erreur"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Afficher les erreurs"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Afficher plus"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Date d\'activité (la plus récente en premier)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Date d\'activité (la plus ancienne en premier)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("A - Z"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Z - A"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Date d\'ajout (la plus récente en premier)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Date d\'ajout (la plus ancienne en premier)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Triage"),
    "squareFeetUnitShort" : m25,
    "squareMeterUnitShort" : m26,
    "squareYardUnitShort" : m27,
    "status" : MessageLookupByLibrary.simpleMessage("Statut"),
    "statusArrivedAtCustoms" : MessageLookupByLibrary.simpleMessage("Arrivée aux douanes"),
    "statusCustomsClearanceComplete" : MessageLookupByLibrary.simpleMessage("Dédouanement terminé"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Livré"),
    "statusExportedFromDepartureCountry" : MessageLookupByLibrary.simpleMessage("Exporté du pays de départ"),
    "statusImportedToDestinationCountry" : MessageLookupByLibrary.simpleMessage("Importé dans le pays de destination"),
    "statusInStorage" : MessageLookupByLibrary.simpleMessage("En stock"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("En transit"),
    "statusInTransitArrivedWaypoint" : MessageLookupByLibrary.simpleMessage("Arrivé au point de passage"),
    "statusInTransitDepartedWaypoint" : MessageLookupByLibrary.simpleMessage("Départ du point de passage"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Infos reçues"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("Pas encore d\'informations sur le suivi"),
    "statusNotDelivered" : MessageLookupByLibrary.simpleMessage("Non livré"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("En attente de livraison"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Pickup"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Renvoyé à l\'expéditeur"),
    "track" : MessageLookupByLibrary.simpleMessage("Trace"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Erreur de suivi"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Erreur d\'autorisation. Veuillez vérifier les données de votre compte"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Code"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Numéro de suivi non valide"),
    "trackingErrorMissingAccount" : MessageLookupByLibrary.simpleMessage("Le compte est absent. Vérifiez si le compte a été ajouté et s\'il prend en charge le service postal sélectionné."),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Données d\'autorisation manquantes. Vérifiez si vous avez un compte et si les données sont correctes."),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Erreur de réseau"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("Aucune information de suivi disponible"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications d\'erreur de suivi des colis"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Erreur de suivi"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("Une erreur s\'est produite lors du suivi des paquets suivants:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Raison"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("Le service a renvoyé une erreur"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Trace de pile"),
    "trackingErrorUnknown" : MessageLookupByLibrary.simpleMessage("Erreur inconnue"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Le suivi a échoué"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("Historique de suivi"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("tracage des nombres"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("Un par ligne"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Erreur"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("Aucune information"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Avec succès"),
    "trackingStartedDate" : m28,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Suivi arrêté. Le suivi s\'arrête s\'il y a eu une erreur matérielle, ou si le service postal a signalé que les autres statuts ne sont pas fournis."),
    "unreadParcels" : MessageLookupByLibrary.simpleMessage("Non lu"),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "upsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("Vous devez saisir les informations d\'autorisation de votre compte UPS. Vous pouvez l\'enregistrer ici: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US"),
    "username" : MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
    "usps" : MessageLookupByLibrary.simpleMessage("USPS"),
    "uspsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1. Inscrivez-vous sur le site web de USPS Web Tools API Portal: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. Lors de l\'inscription, à la question \"Comment utiliserez-vous les outils Web d\'USPS ?\", veuillez répondre \"Exclusivement sur mon site Web\".\n3. Après l\'inscription, les données d\'autorisation seront envoyées à l\'e-mail spécifié. Copier \"Username\" et \"Company\" (qui a été spécifié pendant les chaînes d\'enregistrement)."),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Qui livre le colis"),
    "yes" : MessageLookupByLibrary.simpleMessage("Oui")
  };
}
