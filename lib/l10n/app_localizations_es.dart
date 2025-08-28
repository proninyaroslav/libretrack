// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Una app para seguir paquetes multiplataforma y privada.\nMás información y consutas en el proyecto: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack es un software libre y de código abierto (FOSS), liberado bajo los términos de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get cancel => 'Cancelar';

  @override
  String get accounts => 'Cuentas';

  @override
  String get add => 'Añadir';

  @override
  String get delete => 'Borrar';

  @override
  String get apply => 'Aplicar';

  @override
  String get close => 'Cerrar';

  @override
  String get hide => 'Ocultar';

  @override
  String get show => 'Mostrar';

  @override
  String get all => 'Todo';

  @override
  String get edit => 'Editar';

  @override
  String get name => 'Nombre';

  @override
  String get open => 'Open';

  @override
  String get optionalField => 'Opcional';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String selectedCounter(Object count) {
    return 'Seleccionado: $count';
  }

  @override
  String get noAccounts => 'Sin cuentas';

  @override
  String get selectAccountType => 'Por favor, selecciona su tipo de cuenta';

  @override
  String get enterAuthData => 'Ingrese su fecha de autorización';

  @override
  String get allAccountsAlreadyAdded => 'Ya se han añadido todas las cuentas';

  @override
  String get addAccount => 'Añadir cuenta';

  @override
  String get editAccount => 'Editar cuenta';

  @override
  String get deleteAccountDialogMsg =>
      '¿Está seguro de borrar la cuenta seleccionada?';

  @override
  String get pageNotFound => 'Página no encontrada';

  @override
  String get openLinkFailed => 'No se pudo abrir el enlace';

  @override
  String get login => 'Iniciar';

  @override
  String get password => 'Contraseña';

  @override
  String get accessKey => 'Clave de acceso';

  @override
  String get username => 'Username';

  @override
  String get companyName => 'Company name';

  @override
  String get fieldRequiredError => 'Este campo es obligatorio';

  @override
  String get addAccountFailed => 'Error al añadir cuenta';

  @override
  String get editAccountFailed => 'Error al editar cuenta';

  @override
  String get parcels => 'Paquetes';

  @override
  String get receiverParcels => 'I\'m receiver';

  @override
  String get shipperParcels => 'I\'m shipper';

  @override
  String get archiveParcels => 'Archivado';

  @override
  String get filtersAndSorting => 'Filtrado y ordenado';

  @override
  String get filters => 'Filtros';

  @override
  String get sorting => 'Ordenado';

  @override
  String get noParcels => 'Sin paquetes';

  @override
  String get addAccountTip =>
      'Antes de realizar el seguimiento de los paquetes, es necesario añadir una cuenta';

  @override
  String get addParcels => 'Añadir paquetes';

  @override
  String get track => 'Seguir';

  @override
  String get trackingNumbers => 'Números de seguimiento';

  @override
  String get trackingNumbersFieldHint => 'Una por línea';

  @override
  String get parcelNames => 'Nombres de los paquetes';

  @override
  String get parcelNamesFieldHint => 'Opcional. Uno por línea';

  @override
  String get addParcelsFailed => 'Error al añadir paquetes';

  @override
  String get statusNotAvailable => 'Sin información de seguimiento aún';

  @override
  String get statusInfoReceived => 'Info recibido';

  @override
  String get statusPickup => 'Recogida';

  @override
  String get statusInTransit => 'En tránsito';

  @override
  String get statusOutForDelivery => 'En espera de la entrega';

  @override
  String get statusDelivered => 'Entregado';

  @override
  String get statusReturnedToShipper => 'Devuelto al remitente';

  @override
  String get statusNotDelivered => 'Not delivered';

  @override
  String get statusInStorage => 'In storage';

  @override
  String get statusInTransitArrivedWaypoint => 'Arrived at the waypoint';

  @override
  String get statusInTransitDepartedWaypoint => 'Departed from the waypoint';

  @override
  String get statusExportedFromDepartureCountry =>
      'Exported from the departure country';

  @override
  String get statusImportedToDestinationCountry =>
      'Imported to the destination country';

  @override
  String get statusArrivedAtCustoms => 'Arrived at customs';

  @override
  String get statusCustomsClearanceComplete => 'Customs clearance complete';

  @override
  String get trackingErrorNoInfo => 'Sin información de seguimiento disponible';

  @override
  String get trackingErrorUnknown => 'Error desconocido';

  @override
  String get trackingErrorNetwork => 'Error de red';

  @override
  String get trackingErrorService => 'El servicio devolvió un error';

  @override
  String get trackingErrorAuth =>
      'Error de autorización. Por favor, revise sus datos de cuenta';

  @override
  String get trackingErrorInvalidTrackNumber =>
      'Número de seguimiento inválido';

  @override
  String get trackingErrorMissingAuthData =>
      'Faltan datos de autorización. Compruebe si tiene una cuenta y los datos son correctos';

  @override
  String get trackingErrorMissingAccount =>
      'Falta la cuenta. Compruebe si la cuenta se ha añadido y si es compatible con el servicio postal seleccionado';

  @override
  String get parcelsListHardErrorOccurred =>
      'Se ha producido un error grave, el seguimiento se ha detenido. Por favor, compruebe los detalles en el interior';

  @override
  String get moveToArchive => 'Pasar a archivo';

  @override
  String get moveToReceiver => 'Move to incoming list';

  @override
  String get moveToShipper => 'Move to outgoing list';

  @override
  String get moveToActive => 'Pasar a activo';

  @override
  String get markAsRead => 'Marcar como leído';

  @override
  String get markAllAsRead => 'Marcar todo como leído';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '¿Está seguro de borrar los paquetes seleccionados?',
      one: '¿Está seguro de borrar el paquete seleccionado?',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Actualizar';

  @override
  String get refreshAll => 'Actualizar todo';

  @override
  String get dataIsSecured => 'Los datos se almacenan de forma segura';

  @override
  String get secureStorageIsNotSupported =>
      'No se admite el almacenamiento seguro. Los datos se almacenan sin protección';

  @override
  String get copyTrackNumber => 'Copiando número de seguimiento';

  @override
  String get share => 'Compartir';

  @override
  String get copiedToClipboard => 'Copiado en el portapapeles';

  @override
  String get status => 'Estado';

  @override
  String get unreadParcels => 'Sin leer';

  @override
  String get error => 'Error';

  @override
  String get postalService => 'Servicio postal';

  @override
  String get sortActivityDateAsc =>
      'Fecha de actividad (desde el más reciente)';

  @override
  String get sortActivityDateDesc =>
      'Fecha de actividad (desde el más antiguo)';

  @override
  String get sortDateAddedAsc => 'Fecha añadida (desde el más reciente)';

  @override
  String get sortDateAddedDesc => 'Fecha añadida (desde el más antiguo)';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => 'Escáner de código de barras';

  @override
  String get barcodeScanFailed => 'Error al escanear código de barras';

  @override
  String get loadPageFailed => 'Error al cargar página';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Error al actualiza los paquetes',
      one: 'Error al actualizar el paquete',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Error al borrar los paquetes',
      one: 'Error al borrar el paquete',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Error al mover los paquetes',
      one: 'Error al mover el paquete',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Error al marcar los paquetes como leídos',
      one: 'Error al marcar el paquete como leído',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Paquete no encontrado';

  @override
  String get addToMyParcels => 'Añadir a mis paquetes';

  @override
  String trackingStartedDate(Object date) {
    return 'Seguimiento iniciado: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Último seguimiento: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Su paquete está siendo rastreado. Por favor, espere unos minutos';

  @override
  String get invalidTrackingNumberStatus =>
      'Número de seguimiento inválido o servicio postal no compatible';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Páquete en transito $days días',
      many: 'Páquete en transito $days días',
      few: 'Páquete en transito $days días',
      one: 'Páquete en transito $days día',
      zero: 'Páquete en transito $days días',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Paquete llevado el $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Package was out for delivery on $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'Todavía sin información sobre el paquete. Después de que se haya enviado un paquete, pueden pasar varios días hasta que se pueda hacer un seguimiento del mismo';

  @override
  String get trackingStoppedStatus =>
      'Seguimiento detenido. El seguimiento se detiene si se ha producido un error grave, o el servicio postal ha informado de que no se proporcionan más estados';

  @override
  String get activateAndRefresh => 'Activar y refrescar';

  @override
  String get activateTrackingFailed => 'Error al activar el seguimiento';

  @override
  String get generateBarcode => 'Generar código de barras';

  @override
  String generateBarcodFailed(Object error) {
    return 'Error al generar el código de barras: $error';
  }

  @override
  String get editParcelFailed => 'Error al editar el paquete';

  @override
  String get whoDeliveresParcel => 'Quién lleva el paquete';

  @override
  String get details => 'Detalles';

  @override
  String get trackingHistory => 'Historial de seguimiento';

  @override
  String get activateTracking => 'Activar seguimiento';

  @override
  String get noTrackingHistory => 'Sin historial de seguimiento';

  @override
  String get showError => 'Error de seguimiento';

  @override
  String get trackingResponseSuccess => 'Completado';

  @override
  String get trackingResponseError => 'Error';

  @override
  String get trackingResponseNoInfo => 'Sin info';

  @override
  String get trackingResponseStopped => 'Tracking stopped';

  @override
  String get trackingErrorReason => 'Razón';

  @override
  String get trackingErrorCode => 'Código';

  @override
  String get trackingErrorStackTrace => 'Seguimiento de pila';

  @override
  String get errors => 'Errores';

  @override
  String get showErrors => 'Mostrar errores';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'Se produjo un error grave, el seguimiento de algunos servicios se ha detenido. Compruebe los errores antes de activar el seguimiento';

  @override
  String get deleteAccountFailed => 'Error al eliminar la cuenta';

  @override
  String get activityHistory => 'Historial de actividad';

  @override
  String get parcelInfo => 'Info de paquete';

  @override
  String parcelSignedBy(Object name) {
    return 'Firmado por: $name';
  }

  @override
  String get showMore => 'Mostrar más';

  @override
  String get shipmentServiceDescription => 'Servicio';

  @override
  String get shipmentDeliveryDate => 'Fecha de entrega';

  @override
  String get shipmentSignedBy => 'Firmado por';

  @override
  String get shipmentScheduledDeliveryDate => 'Fecha de entrega programado';

  @override
  String get shipmentEstimatedDeliveryDate => 'Fecha de entrega planificado';

  @override
  String get shipmentPickupDate => 'Fecha de recogida';

  @override
  String get shipmentWeight => 'Peso';

  @override
  String get shipmentDimensions => 'Dimensions [(L) x (W) x (H)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Volumen';

  @override
  String get shipmentCashOnDelivery => 'Efecivo en entrega';

  @override
  String get shipmentDeclaredValue => 'Declared value';

  @override
  String get shipmentCustomDuty => 'Custom duty';

  @override
  String get shipmentAdditionalRateFee => 'Additional rate fee';

  @override
  String get shipmentShippingRateFee => 'Shipping rate fee';

  @override
  String get shipmentInsuranceRateFee => 'Insurance rate fee';

  @override
  String get shipmentTypeDescription => 'Tipo de envío';

  @override
  String get shipmentReceiverAddress => 'Dirección del receptor';

  @override
  String get shipmentShipperAddress => 'Dirección del remitente';

  @override
  String get shipmentShipper => 'Shipper';

  @override
  String get shipmentReceiver => 'Receiver';

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
      'Número de seguimiento alternativo';

  @override
  String get parcelMovedToActiveSuccess => 'Pasado a activo con éxito';

  @override
  String get parcelMovedToArchiveSuccess => 'Pasado a archivo con éxito';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Seguimiento de paquetes';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Notificaciones de la actividad de los paquetes';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Seguimiento de paquetes';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'El estado de los paquetes se actualizó';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsBehavior => 'Comportamiento';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsNotificationsSection => 'Ajustes de las notificaciones';

  @override
  String get settingsTrackingNotifications =>
      'Notificaciones de seguimiento de paquetes';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsSystemLanguageOption => 'Sistema';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'El seguimiento no está disponible, porque ha pasado un poco de tiempo desde el último seguimiento. Por favor, inténtelo de nuevo después de $time';
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
  String get settingsTrackingSection => 'Ajustes de seguimiento';

  @override
  String get settingsTrackingFreqLimit => 'Límite de frecuencia de seguimiento';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'No más de una vez cada $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15 minutos';

  @override
  String get settingsTrackingFreqThirtyMin => '30 minutos';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45 minutos';

  @override
  String get settingsTrackingFreqOneHour => '1 hora';

  @override
  String get settingsTrackingFreqUnlimited => 'Unlimited';

  @override
  String get settingsAutoTracking => 'Auto-seguimiento';

  @override
  String get settingsAutoTrackingFreq => 'Frecuencia de seguimiento';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Especifica el intervalo mínimo de seguimiento. Este intervalo no es preciso y puede aumentar debido a las limitaciones del sistema (sin conexión a Internet, modo de ahorro de energía, etc.)';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Cada 6 horas';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Cada 12 horas';

  @override
  String get settingsAutoTrackingFreqOneDay => 'Una vez al día';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Cada 3 días';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'Una vez a la semana';

  @override
  String get settingsTrackingHistorySize =>
      'Tamaño del historial de seguimiento';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Especifica el número máximo de entradas guardadas en el historial de seguimiento de paquetes';

  @override
  String get settingsTrackingErrorNotifications =>
      'Notificaciones de errores de seguimiento';

  @override
  String get trackingErrorNotifyChannelTitle => 'Error de seguimiento';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Notifications of the packages tracking error';

  @override
  String get trackingError => 'Error de seguimiento';

  @override
  String get trackingFailed => 'Seguimiento fallido';

  @override
  String get trackingErrorOccured =>
      'Se ha producido un error en el seguimiento de los siguientes paquetes:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary =>
      'Se ha producido un error en la aplicación. Puedes informar a los desarrolladores';

  @override
  String get crashDialogExtraInfo =>
      'Añada información y comentarios adicionales aquí:';

  @override
  String get crashDialogReport => 'Reportar';

  @override
  String get crashDialogMoreDetails => 'Más detalles';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'No se ha encontrado ninguna aplicación de correo electrónico. Puedes copiar manualmente el error y enviarlo a $email\no enviar a la página del proyecto $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'Por defecto';

  @override
  String get defaultNotifyChannelDescription =>
      'Todas las notificaciones que no son adecuadas para las otras categorías';

  @override
  String get aboutApp => 'Acerca de';

  @override
  String get changelog => 'Lista de cambios';

  @override
  String get settingsDesktopSection => 'Desktop';

  @override
  String get settingsSystemTrayIcon => 'System tray icon';

  @override
  String get openDetails => 'Open details';

  @override
  String get shareFailed => 'Unable to share';

  @override
  String get linuxTrayIconWarning =>
      'Some environments may not support the system tray by default. For example, to work in GNOME, install this extension (or similar): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Previous page';

  @override
  String get nextPage => 'Next page';

  @override
  String get upsAddAccountDescription =>
      'Tiene que introducir la información de autorización de su cuenta UPS. Puede registrarla aquí: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US';

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
