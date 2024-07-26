// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_ES locale. All the
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
  String get localeName => 'es_ES';

  static m0(value) => "${value} bbl";

  static m1(email, pageUrl) => "No se ha encontrado ninguna aplicación de correo electrónico. Puedes copiar manualmente el error y enviarlo a ${email}\no enviar a la página del proyecto ${pageUrl}";

  static m2(howMany) => "${Intl.plural(howMany, one: '¿Está seguro de borrar el paquete seleccionado?', other: '¿Está seguro de borrar los paquetes seleccionados?')}";

  static m3(howMany) => "${Intl.plural(howMany, one: 'Error al borrar el paquete', other: 'Error al borrar los paquetes')}";

  static m4(value) => "${value} gal";

  static m5(error) => "Error al generar el código de barras: ${error}";

  static m6(value) => "${value} h.";

  static m7(value) => "${value} kg";

  static m8(date) => "Último seguimiento: ${date}";

  static m9(value) => "${value} L";

  static m10(howMany) => "{howMany, plural, one {{Error al marcar el paquete como leído} other {Error al marcar los paquetes como leídos}}";

  static m11(value) => "${value} min.";

  static m12(howMany) => "${Intl.plural(howMany, one: 'Error al mover el paquete', other: 'Error al mover los paquetes')}";

  static m13(value) => "${value} oz";

  static m14(date) => "Paquete llevado el ${date}";

  static m15(days) => "${Intl.plural(days, zero: 'Páquete en transito ${days} días', one: 'Páquete en transito ${days} día', few: 'Páquete en transito ${days} días', many: 'Páquete en transito ${days} días', other: 'Páquete en transito ${days} días')}";

  static m16(name) => "Firmado por: ${name}";

  static m17(time) => "El seguimiento no está disponible, porque ha pasado un poco de tiempo desde el último seguimiento. Por favor, inténtelo de nuevo después de ${time}";

  static m18(parcelName) => "• ${parcelName}";

  static m19(title, body) => "${title}: ${body}";

  static m20(value) => "${value} lb";

  static m21(howMany) => "${Intl.plural(howMany, one: 'Error al actualizar el paquete', other: 'Error al actualiza los paquetes')}";

  static m22(value) => "${value} sec.";

  static m23(count) => "Seleccionado: ${count}";

  static m24(time) => "No más de una vez cada ${time}";

  static m25(value) => "${value} ft²";

  static m26(value) => "${value} m²";

  static m27(value) => "${value} yd²";

  static m28(date) => "Seguimiento iniciado: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("Acerca de"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Clave de acceso"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Cuentas"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Activar y refrescar"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Activar seguimiento"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Error al activar el seguimiento"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Activo"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("Historial de actividad"),
    "add" : MessageLookupByLibrary.simpleMessage("Añadir"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Añadir cuenta"),
    "addAccountFailed" : MessageLookupByLibrary.simpleMessage("Error al añadir cuenta"),
    "addAccountTip" : MessageLookupByLibrary.simpleMessage("Antes de realizar el seguimiento de los paquetes, es necesario añadir una cuenta"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Añadir paquetes"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Error al añadir paquetes"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Añadir a mis paquetes"),
    "all" : MessageLookupByLibrary.simpleMessage("Todo"),
    "allAccountsAlreadyAdded" : MessageLookupByLibrary.simpleMessage("Ya se han añadido todas las cuentas"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("Una app para seguir paquetes multiplataforma y privada.\nMás información y consutas en el proyecto: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack es un software libre y de código abierto (FOSS), liberado bajo los términos de la GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Aplicar"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Archivado"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Error al escanear código de barras"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Escáner de código de barras"),
    "barrelUnitShort" : m0,
    "cancel" : MessageLookupByLibrary.simpleMessage("Cancelar"),
    "changelog" : MessageLookupByLibrary.simpleMessage("Lista de cambios"),
    "close" : MessageLookupByLibrary.simpleMessage("Cerrar"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Copiado en el portapapeles"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Copiando número de seguimiento"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Añada información y comentarios adicionales aquí:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("Más detalles"),
    "crashDialogNoEmailApp" : m1,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Reportar"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("Se ha producido un error en la aplicación. Puedes informar a los desarrolladores"),
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("Los datos se almacenan de forma segura"),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Todas las notificaciones que no son adecuadas para las otras categorías"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Por defecto"),
    "delete" : MessageLookupByLibrary.simpleMessage("Borrar"),
    "deleteAccountDialogMsg" : MessageLookupByLibrary.simpleMessage("¿Está seguro de borrar la cuenta seleccionada?"),
    "deleteAccountFailed" : MessageLookupByLibrary.simpleMessage("Error al eliminar la cuenta"),
    "deleteParcelDialogMsg" : m2,
    "deleteParcelsFailed" : m3,
    "details" : MessageLookupByLibrary.simpleMessage("Detalles"),
    "edit" : MessageLookupByLibrary.simpleMessage("Editar"),
    "editAccount" : MessageLookupByLibrary.simpleMessage("Editar cuenta"),
    "editAccountFailed" : MessageLookupByLibrary.simpleMessage("Error al editar cuenta"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Error al editar el paquete"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Ingrese su fecha de autorización"),
    "error" : MessageLookupByLibrary.simpleMessage("Error"),
    "errors" : MessageLookupByLibrary.simpleMessage("Errores"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Este campo es obligatorio"),
    "filters" : MessageLookupByLibrary.simpleMessage("Filtros"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Filtrado y ordenado"),
    "gallonUnitShort" : m4,
    "generateBarcodFailed" : m5,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Generar código de barras"),
    "hide" : MessageLookupByLibrary.simpleMessage("Ocultar"),
    "hoursShortFormat" : m6,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Número de seguimiento inválido o servicio postal no compatible"),
    "kilogramUnitShort" : m7,
    "lastTrackingDate" : m8,
    "literUnitShort" : m9,
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Error al cargar página"),
    "login" : MessageLookupByLibrary.simpleMessage("Iniciar"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Marcar todo como leído"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Marcar como leído"),
    "markAsReadParcelFailed" : m10,
    "minutesShortFormat" : m11,
    "moveParcelFailed" : m12,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Pasar a activo"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Pasar a archivo"),
    "name" : MessageLookupByLibrary.simpleMessage("Nombre"),
    "no" : MessageLookupByLibrary.simpleMessage("No"),
    "noAccounts" : MessageLookupByLibrary.simpleMessage("Sin cuentas"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("Sin paquetes"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("Sin historial de seguimiento"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("No se pudo abrir el enlace"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Opcional"),
    "ounceUnitShort" : m13,
    "pageNotFound" : MessageLookupByLibrary.simpleMessage("Página no encontrada"),
    "parcelDeliveredStatus" : m14,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Se produjo un error grave, el seguimiento de algunos servicios se ha detenido. Compruebe los errores antes de activar el seguimiento"),
    "parcelInTransitStatus" : m15,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Info de paquete"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("Todavía sin información sobre el paquete. Después de que se haya enviado un paquete, pueden pasar varios días hasta que se pueda hacer un seguimiento del mismo"),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Pasado a activo con éxito"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Pasado a archivo con éxito"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Nombres de los paquetes"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Opcional. Uno por línea"),
    "parcelNotFound" : MessageLookupByLibrary.simpleMessage("Paquete no encontrado"),
    "parcelSignedBy" : m16,
    "parcelTrackingLimitedError" : m17,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Su paquete está siendo rastreado. Por favor, espere unos minutos"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Paquetes"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Se ha producido un error grave, el seguimiento se ha detenido. Por favor, compruebe los detalles en el interior"),
    "parcelsTrackingFailedInboxStyleLine" : m18,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notificaciones de la actividad de los paquetes"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Seguimiento de paquetes"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("El estado de los paquetes se actualizó"),
    "parcelsTrackingNotifyInboxStyleLine" : m19,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Seguimiento de paquetes"),
    "password" : MessageLookupByLibrary.simpleMessage("Contraseña"),
    "postalService" : MessageLookupByLibrary.simpleMessage("Servicio postal"),
    "poundUnitShort" : m20,
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Actualizar"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Actualizar todo"),
    "refreshParcelsFailed" : m21,
    "secondsShortFormat" : m22,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("No se admite el almacenamiento seguro. Los datos se almacenan sin protección"),
    "selectAccountType" : MessageLookupByLibrary.simpleMessage("Por favor, selecciona su tipo de cuenta"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Seleccionar todo"),
    "selectedCounter" : m23,
    "settings" : MessageLookupByLibrary.simpleMessage("Ajustes"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Apariencia"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Auto-seguimiento"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Frecuencia de seguimiento"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Especifica el intervalo mínimo de seguimiento. Este intervalo no es preciso y puede aumentar debido a las limitaciones del sistema (sin conexión a Internet, modo de ahorro de energía, etc.)"),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("Una vez al día"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("Una vez a la semana"),
    "settingsAutoTrackingFreqSixHours" : MessageLookupByLibrary.simpleMessage("Cada 6 horas"),
    "settingsAutoTrackingFreqThreeDays" : MessageLookupByLibrary.simpleMessage("Cada 3 días"),
    "settingsAutoTrackingFreqTwelveHours" : MessageLookupByLibrary.simpleMessage("Cada 12 horas"),
    "settingsBehavior" : MessageLookupByLibrary.simpleMessage("Comportamiento"),
    "settingsLanguage" : MessageLookupByLibrary.simpleMessage("Idioma"),
    "settingsNotificationsSection" : MessageLookupByLibrary.simpleMessage("Ajustes de las notificaciones"),
    "settingsSystemLanguageOption" : MessageLookupByLibrary.simpleMessage("Sistema"),
    "settingsTheme" : MessageLookupByLibrary.simpleMessage("Tema"),
    "settingsThemeDark" : MessageLookupByLibrary.simpleMessage("Oscuro"),
    "settingsThemeLight" : MessageLookupByLibrary.simpleMessage("Claro"),
    "settingsThemeSystem" : MessageLookupByLibrary.simpleMessage("Sistema"),
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Notificaciones de errores de seguimiento"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 minutos"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 minutos"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Límite de frecuencia de seguimiento"),
    "settingsTrackingFreqLimitSummary" : m24,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 hora"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 minutos"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Tamaño del historial de seguimiento"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Especifica el número máximo de entradas guardadas en el historial de seguimiento de paquetes"),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Notificaciones de seguimiento de paquetes"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Ajustes de seguimiento"),
    "share" : MessageLookupByLibrary.simpleMessage("Compartir"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("Número de seguimiento alternativo"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Efecivo en entrega"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Fecha de entrega"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Fecha de entrega planificado"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Fecha de recogida"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Dirección del receptor"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Fecha de entrega programado"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Servicio"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Dirección del remitente"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Firmado por"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Tipo de envío"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Volumen"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Peso"),
    "show" : MessageLookupByLibrary.simpleMessage("Mostrar"),
    "showError" : MessageLookupByLibrary.simpleMessage("Error de seguimiento"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Mostrar errores"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Mostrar más"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Fecha de actividad (desde el más reciente)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Fecha de actividad (desde el más antiguo)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("A - Z"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Z - A"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Fecha añadida (desde el más reciente)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Fecha añadida (desde el más antiguo)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Ordenado"),
    "squareFeetUnitShort" : m25,
    "squareMeterUnitShort" : m26,
    "squareYardUnitShort" : m27,
    "status" : MessageLookupByLibrary.simpleMessage("Estado"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Entregado"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("En tránsito"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Info recibido"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("Sin información de seguimiento aún"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("En espera de la entrega"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Recogida"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Devuelto al remitente"),
    "track" : MessageLookupByLibrary.simpleMessage("Seguir"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Error de seguimiento"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Error de autorización. Por favor, revise sus datos de cuenta"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Código"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Número de seguimiento inválido"),
    "trackingErrorMissingAccount" : MessageLookupByLibrary.simpleMessage("Falta la cuenta. Compruebe si la cuenta se ha añadido y si es compatible con el servicio postal seleccionado"),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Faltan datos de autorización. Compruebe si tiene una cuenta y los datos son correctos"),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Error de red"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("Sin información de seguimiento disponible"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Notifications of the packages tracking error"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Error de seguimiento"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("Se ha producido un error en el seguimiento de los siguientes paquetes:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Razón"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("El servicio devolvió un error"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Seguimiento de pila"),
    "trackingErrorUnknown" : MessageLookupByLibrary.simpleMessage("Error desconocido"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Seguimiento fallido"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("Historial de seguimiento"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("Números de seguimiento"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("Una por línea"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Error"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("Sin info"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Completado"),
    "trackingStartedDate" : m28,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Seguimiento detenido. El seguimiento se detiene si se ha producido un error grave, o el servicio postal ha informado de que no se proporcionan más estados"),
    "unreadParcels" : MessageLookupByLibrary.simpleMessage("Sin leer"),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "upsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("Tiene que introducir la información de autorización de su cuenta UPS. Puede registrarla aquí: https://www.ups.com/doapp/signup?loc=en_US\nTo obtain an Access Key, go the link and follow the instructions: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US"),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Quién lleva el paquete"),
    "yes" : MessageLookupByLibrary.simpleMessage("Sí")
  };
}
