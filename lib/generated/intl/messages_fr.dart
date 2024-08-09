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

  static m2(email, pageUrl) => "Auconee application de messagerie trouvée. Vous pouvez copier manuellement l\'\'erreur et l\'\'envoyer à ${email}\nou envoyer sur la page du projet ${pageUrl}";

  static m5(howMany) => "${Intl.plural(howMany, one: 'Etes-vous sûr de vouloir supprimer le paquet sélectionné?', other: 'Etes-vous sûr de vouloir supprimer le paquet sélectionné?')}";

  static m6(howMany) => "${Intl.plural(howMany, one: 'Échec de la suppression du paquet', other: 'Échec de la suppression du paquet')}";

  static m9(error) => "Impossible de générer one code-barres: ${error}";

  static m10(value) => "${value} h.";

  static m12(date) => "Dernier suivi: ${date}";

  static m14(howMany) => "${Intl.plural(howMany, one: 'Impossible de marquer le paquet comme lu', other: 'Impossible de marquer le paquet comme lu')}";

  static m16(value) => "${value} min.";

  static m17(howMany) => "${Intl.plural(howMany, one: 'Échec du déplacement du paquet', other: 'Échec du déplacement du paquet')}";

  static m19(date) => "Paquet livré le ${date}";

  static m20(days) => "{jours, plural, zéro {Paquet en transit ${days} jours} one {Paquet en transit ${days} jour} quelques {Paquet en transit ${days} jours} beaucoup de {Package in transit ${days} days} other {Paquet en transit ${days} jours}}";

  static m22(name) => "Signé par: ${name}";

  static m23(time) => "Le suivi n\'\'est pas disponible, car one peu de temps s\'\'est écoulé depuis le dernier suivi. Veuillez réessayer après ${time}";

  static m24(parcelName) => "• ${parcelName}";

  static m25(title, body) => "${title}: ${body}";

  static m27(howMany) => "${Intl.plural(howMany, one: 'Échec du rafraîchissement du paquet', other: 'Échec du rafraîchissement du paquet')}";

  static m28(value) => "${value} sec.";

  static m29(count) => "Sélectionné: ${count}";

  static m30(time) => "Pas plus d\'\'onee fois tous les ${time}";

  static m34(date) => "Début du suivi: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("À propos"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Clé d\'\'accès"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Activer et rafraîchir"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Activer le suivi"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'\'activation du suivi"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Actif"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("Historique des activités"),
    "add" : MessageLookupByLibrary.simpleMessage("Ajouter"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Ajouter des paquets"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'\'ajout de paquets"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Ajouter à mes forfaits"),
    "all" : MessageLookupByLibrary.simpleMessage("Tout"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("Simplifie la comparaison de photos de scellés inviolables et de motifs à l\'\'aide de vos yeux.\nPlus d\'\'informations et aussi pour aider le projet: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack est one logiciel libre et gratuit (FOSS), publié selon les termes de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Appliquer"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Archives"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Impossible de scanner le code-barres"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Scanner de code-barres"),
    "cancel" : MessageLookupByLibrary.simpleMessage("Annuler"),
    "changelog" : MessageLookupByLibrary.simpleMessage("Historique des modifications"),
    "close" : MessageLookupByLibrary.simpleMessage("Fermer"),
    "companyName" : MessageLookupByLibrary.simpleMessage("Nom de la société"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Copié dans le presse-papiers"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Copie du numéro de suivi"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Ajoutez des infos supplémentaires et des commentaires ici:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("Plus de détails"),
    "crashDialogNoEmailApp" : m2,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Report"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("onee erreur d\'\'application s\'\'est produite. Vous pouvez le signaler aux développeurs"),
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("Les données sont stockées en toute sécurité"),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Toutes les notifications qui ne conviennent pas aux others catégories"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Défaut"),
    "delete" : MessageLookupByLibrary.simpleMessage("Supprimer"),
    "deleteParcelDialogMsg" : m5,
    "deleteParcelsFailed" : m6,
    "details" : MessageLookupByLibrary.simpleMessage("Détails"),
    "edit" : MessageLookupByLibrary.simpleMessage("Modifier"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Échec de l\'\'édition du paquet"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Entrez vos données d\'\'autorisation"),
    "error" : MessageLookupByLibrary.simpleMessage("Erreur"),
    "errors" : MessageLookupByLibrary.simpleMessage("Erreurs"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Ce champ est obligatoire"),
    "filters" : MessageLookupByLibrary.simpleMessage("Filtres"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Filtres et tri"),
    "generateBarcodFailed" : m9,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Générer one code-barres"),
    "hide" : MessageLookupByLibrary.simpleMessage("Cacher"),
    "hoursShortFormat" : m10,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Numéro de suivi non valide ou service postal non pris en charge"),
    "lastTrackingDate" : m12,
    "linuxTrayIconWarning" : MessageLookupByLibrary.simpleMessage("Certains environnements peuvent ne pas prendre en charge la barre d\'\'état système par défaut. Par exemple, pour travailler dans GNOME, installez cette extension (ou similaire): https://extensions.gnome.org/extension/615/appindicator-support/"),
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Impossible de charger la page"),
    "login" : MessageLookupByLibrary.simpleMessage("Connexion"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Marquer tout comme lu"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Marquer comme lu"),
    "markAsReadParcelFailed" : m14,
    "minutesShortFormat" : m16,
    "moveParcelFailed" : m17,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Passer à l\'\'actif"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Déplacer vers les archives"),
    "name" : MessageLookupByLibrary.simpleMessage("Nom"),
    "nextPage" : MessageLookupByLibrary.simpleMessage("Page suivante"),
    "no" : MessageLookupByLibrary.simpleMessage("Non"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("Aucone paquet"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("Pas d\'\'historique de suivi"),
    "open" : MessageLookupByLibrary.simpleMessage("Ouvrir"),
    "openDetails" : MessageLookupByLibrary.simpleMessage("Ouvrir les détails"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("Impossible d\'\'ouvrir le lien"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Optionnel"),
    "parcelDeliveredStatus" : m19,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("onee erreur matérielle s\'\'est produite, le suivi de certains services s\'\'est arrêté. Vérifiez les erreurs avant d\'\'activer le suivi"),
    "parcelInTransitStatus" : m20,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Informations sur le paquet"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("Il n\'\'y a pas encore d\'\'informations sur le colis. Après l\'\'envoi d\'\'one paquet, il peut s\'\'écouler plusieurs jours avant que l\'\'on puisse le suivre."),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Passé à l\'\'état actif avec succès"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Déplacé vers les archives avec succès"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Noms des paquets"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Optionnel. one par ligne"),
    "parcelSignedBy" : m22,
    "parcelTrackingLimitedError" : m23,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Votre colis est actuellement suivi. Veuillez patienter quelques minutes"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Packages"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("onee erreur matérielle s\'\'est produite, le suivi s\'\'est arrêté. Veuillez vérifier les détails à l\'\'intérieur"),
    "parcelsTrackingFailedInboxStyleLine" : m24,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications de l\'\'activité des paquets"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Suivi des paquets"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("L\'\'état des paquets est mis à jour"),
    "parcelsTrackingNotifyInboxStyleLine" : m25,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Suivi des colis"),
    "password" : MessageLookupByLibrary.simpleMessage("Mot de passe"),
    "postalService" : MessageLookupByLibrary.simpleMessage("Service postal"),
    "previousPage" : MessageLookupByLibrary.simpleMessage("Page précédente"),
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Rafraîchir"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Rafraîchir tout"),
    "refreshParcelsFailed" : m27,
    "russianPost" : MessageLookupByLibrary.simpleMessage("Russian Post"),
    "secondsShortFormat" : m28,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("Le stockage sécurisé n\'\'est pas pris en charge. Les données sont stockées sans protection"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Sélectionner tout"),
    "selectedCounter" : m29,
    "settings" : MessageLookupByLibrary.simpleMessage("Paramètres"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Apparition"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Suivi automatique"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Fréquence de suivi"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Spécifie l\'\'intervalle minimum de suivi. Cet intervalle n\'\'est pas précis et peut être augmenté en raison des limitations du système (pas de connexion Internet, mode économie d\'\'énergie, etc.)."),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("onee fois par jour"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("onee fois par semaine"),
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
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Notifications d\'\'erreurs de suivi"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 minutes"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 minutes"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Limite de la fréquence de poursuite"),
    "settingsTrackingFreqLimitSummary" : m30,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 hour"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 minutes"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Taille de l\'\'historique de suivi"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Spécifie le nombre maximum d\'\'entrées à conserver dans l\'\'historique de suivi des colis."),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Notifications de suivi des coliss"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Paramètres de suivi"),
    "share" : MessageLookupByLibrary.simpleMessage("Partager"),
    "shareFailed" : MessageLookupByLibrary.simpleMessage("Impossible de partager"),
    "shipmentAdditionalRateFee" : MessageLookupByLibrary.simpleMessage("Tarif supplémentaire"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("other numéro de suivi"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Paiement à la livraison"),
    "shipmentCustomDuty" : MessageLookupByLibrary.simpleMessage("Droit de douane"),
    "shipmentDeclaredValue" : MessageLookupByLibrary.simpleMessage("Valeur déclarée"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison estimée"),
    "shipmentInsuranceRateFee" : MessageLookupByLibrary.simpleMessage("Frais de taux d\'\'assurance"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Date d\'\'enlèvement"),
    "shipmentReceiver" : MessageLookupByLibrary.simpleMessage("Récepteur"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Adresse du destinataire"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Date de livraison prévue"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Service"),
    "shipmentShipper" : MessageLookupByLibrary.simpleMessage("Expéditeur"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Adresse de l\'\'expéditeur"),
    "shipmentShippingRateFee" : MessageLookupByLibrary.simpleMessage("Frais d\'\'expédition"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Signé par"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Type d\'\'expédition"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Volume"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Poids"),
    "show" : MessageLookupByLibrary.simpleMessage("Afficher"),
    "showError" : MessageLookupByLibrary.simpleMessage("Afficher l\'\'erreur"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Afficher les erreurs"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Afficher plus"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Date d\'\'activité (la plus récente en premier)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Date d\'\'activité (la plus ancienne en premier)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("A - Z"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Z - A"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Date d\'\'ajout (la plus récente en premier)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Date d\'\'ajout (la plus ancienne en premier)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Triage"),
    "status" : MessageLookupByLibrary.simpleMessage("Statut"),
    "statusArrivedAtCustoms" : MessageLookupByLibrary.simpleMessage("Arrivée aux douanes"),
    "statusCustomsClearanceComplete" : MessageLookupByLibrary.simpleMessage("Dédouanement terminé"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Livré"),
    "statusInStorage" : MessageLookupByLibrary.simpleMessage("En stock"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("En transit"),
    "statusInTransitArrivedWaypoint" : MessageLookupByLibrary.simpleMessage("Arrivé au point de passage"),
    "statusInTransitDepartedWaypoint" : MessageLookupByLibrary.simpleMessage("Départ du point de passage"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Infos reçues"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("Pas encore d\'\'informations sur le suivi"),
    "statusNotDelivered" : MessageLookupByLibrary.simpleMessage("Non livré"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("En attente de livraison"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Pickup"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Renvoyé à l\'\'expéditeur"),
    "track" : MessageLookupByLibrary.simpleMessage("Trace"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Erreur de suivi"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Erreur d\'\'autorisation. Veuillez vérifier les données de votre compte"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Code"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Numéro de suivi non valide"),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Données d\'\'autorisation manquantes. Vérifiez si vous avez one compte et si les données sont correctes."),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Erreur de réseau"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("Auconee information de suivi disponible"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications d\'\'erreur de suivi des colis"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Erreur de suivi"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("onee erreur s\'\'est produite lors du suivi des paquets suivants:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Raison"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("Le service a renvoyé onee erreur"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Trace de pile"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Le suivi a échoué"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("Historique de suivi"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("tracage des nombres"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("one par ligne"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Erreur"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("Auconee information"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Avec succès"),
    "trackingStartedDate" : m34,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Suivi arrêté. Le suivi s\'\'arrête s\'\'il y a eu onee erreur matérielle, ou si le service postal a signalé que les others statuts ne sont pas fournis."),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "username" : MessageLookupByLibrary.simpleMessage("Nom d\'\'utilisateur"),
    "usps" : MessageLookupByLibrary.simpleMessage("USPS"),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Qui livre le colis"),
    "yes" : MessageLookupByLibrary.simpleMessage("Oui")
  };
}
