// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru_RU locale. All the
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
  String get localeName => 'ru_RU';

  static m0(value) => "${value} bbl";

  static m2(email, pageUrl) => "Приложение для отправки email не найдено. Вы можете вручную скопировать ошибку и и отправить её по адресу ${email}, или отправить на странице проекта ${pageUrl}";

  static m5(howMany) => "${Intl.plural(howMany, one: 'Вы действительно хотите удалить выбранную посылку?', other: 'Вы действительно хотите удалить выбранные посылки?')}";

  static m6(howMany) => "${Intl.plural(howMany, one: 'Не удалось удалить посылку', other: 'Не удалось удалить посылки')}";

  static m8(value) => "${value} gal";

  static m9(error) => "Не удалось сгенерировать штрих-код: ${error}";

  static m10(value) => "${value} ч.";

  static m11(value) => "${value} кг";

  static m12(date) => "Последнее отслеживание: ${date}";

  static m13(value) => "${value} л";

  static m14(howMany) => "${Intl.plural(howMany, one: 'Не удалось отметить посылку как прочитанную', other: 'Не удалось отметить посылки как прочитанные')}";

  static m16(value) => "${value} мин.";

  static m17(howMany) => "${Intl.plural(howMany, one: 'Не удалось переместить посылку', other: 'Не удалось переместить посылки')}";

  static m18(value) => "${value} oz";

  static m19(date) => "Посылка доставлена ${date}";

  static m20(days) => "${Intl.plural(days, zero: 'Посылка в пути ${days} дней', one: 'Посылка в пути ${days} день', few: 'Посылка в пути ${days} дня', many: 'Посылка в пути ${days} дней', other: 'Посылка в пути ${days} дней')}";

  static m22(name) => "Подписано: ${name}";

  static m23(time) => "Отслеживание недоступно, так как с момента последнего отслеживания прошло мало времени. Пожалуйста, повторите попытку через ${time}";

  static m24(parcelName) => "• ${parcelName}";

  static m25(title, body) => "${title}: ${body}";

  static m26(value) => "${value} lb";

  static m27(howMany) => "${Intl.plural(howMany, one: 'Не удалось обновить посылку', other: 'Не удалось обновить посылки')}";

  static m28(value) => "${value} сек.";

  static m29(count) => "Выбрано: ${count}";

  static m30(time) => "Не более одного раза в ${time}";

  static m31(value) => "${value} ft²";

  static m32(value) => "${value} м²";

  static m33(value) => "${value} yd²";

  static m34(date) => "Отслеживание начато: ${date}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "aboutApp" : MessageLookupByLibrary.simpleMessage("О программе"),
    "accessKey" : MessageLookupByLibrary.simpleMessage("Ключ доступа"),
    "accounts" : MessageLookupByLibrary.simpleMessage("Аккаунты"),
    "activateAndRefresh" : MessageLookupByLibrary.simpleMessage("Активировать и проверить"),
    "activateTracking" : MessageLookupByLibrary.simpleMessage("Активировать отслеживание"),
    "activateTrackingFailed" : MessageLookupByLibrary.simpleMessage("Не удалось активировать отслеживание"),
    "activeParcels" : MessageLookupByLibrary.simpleMessage("Активные"),
    "activityHistory" : MessageLookupByLibrary.simpleMessage("История активности"),
    "add" : MessageLookupByLibrary.simpleMessage("Добавить"),
    "addAccount" : MessageLookupByLibrary.simpleMessage("Добавить аккаунт"),
    "addAccountFailed" : MessageLookupByLibrary.simpleMessage("Не удалось добавить аккаунт"),
    "addAccountTip" : MessageLookupByLibrary.simpleMessage("Прежде чем отслеживать посылки, вам необходимо добавить аккаунт"),
    "addParcels" : MessageLookupByLibrary.simpleMessage("Добавить посылки"),
    "addParcelsFailed" : MessageLookupByLibrary.simpleMessage("Не удалось добавить посылки"),
    "addToMyParcels" : MessageLookupByLibrary.simpleMessage("Добавить в мои посылки"),
    "all" : MessageLookupByLibrary.simpleMessage("Все"),
    "allAccountsAlreadyAdded" : MessageLookupByLibrary.simpleMessage("Все аккаунты уже добавлены"),
    "appChangelogUrl" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md"),
    "appDescription" : MessageLookupByLibrary.simpleMessage("Приватное, кроссплатформенное приложение для отслеживания посылок.\nБольше информации, а также помочь проекту: https://github.com/proninyaroslav/libretrack"),
    "appLicense" : MessageLookupByLibrary.simpleMessage("LibreTrack является свободным программным обеспечением с открытым исходным кодом (FOSS), выпущенным в соответствии с условиями лицензии GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html"),
    "apply" : MessageLookupByLibrary.simpleMessage("Применить"),
    "archiveParcels" : MessageLookupByLibrary.simpleMessage("Архив"),
    "barcodeScanFailed" : MessageLookupByLibrary.simpleMessage("Не удалось сканировать штрих-код"),
    "barcodeScanner" : MessageLookupByLibrary.simpleMessage("Сканер штрих-кода"),
    "barrelUnitShort" : m0,
    "cancel" : MessageLookupByLibrary.simpleMessage("Отменить"),
    "changelog" : MessageLookupByLibrary.simpleMessage("История изменений"),
    "close" : MessageLookupByLibrary.simpleMessage("Закрыть"),
    "companyName" : MessageLookupByLibrary.simpleMessage("Название организации"),
    "copiedToClipboard" : MessageLookupByLibrary.simpleMessage("Скопировано в буфер обмена"),
    "copyTrackNumber" : MessageLookupByLibrary.simpleMessage("Скопировать трек номер"),
    "crashDialogExtraInfo" : MessageLookupByLibrary.simpleMessage("Добавьте дополнительную информацию и комментарии сюда:"),
    "crashDialogMoreDetails" : MessageLookupByLibrary.simpleMessage("Подробнее"),
    "crashDialogNoEmailApp" : m2,
    "crashDialogReport" : MessageLookupByLibrary.simpleMessage("Сообщить"),
    "crashDialogSummary" : MessageLookupByLibrary.simpleMessage("В приложении произошла ошибка. Вы можете сообщить об этом разработчикам"),
    "dataIsSecured" : MessageLookupByLibrary.simpleMessage("Данные хранятся в защищённом виде"),
    "defaultNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Все уведомления, не подходящие для других категорий"),
    "defaultNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("По умолчанию"),
    "delete" : MessageLookupByLibrary.simpleMessage("Удалить"),
    "deleteAccountDialogMsg" : MessageLookupByLibrary.simpleMessage("Вы действительно хотите удалить выбранный аккаунт?"),
    "deleteAccountFailed" : MessageLookupByLibrary.simpleMessage("Не удалось удалить аккаунт"),
    "deleteParcelDialogMsg" : m5,
    "deleteParcelsFailed" : m6,
    "details" : MessageLookupByLibrary.simpleMessage("Детали"),
    "edit" : MessageLookupByLibrary.simpleMessage("Редактировать"),
    "editAccount" : MessageLookupByLibrary.simpleMessage("Редактировать аккаунт"),
    "editAccountFailed" : MessageLookupByLibrary.simpleMessage("Не удалось изменить аккаунт"),
    "editParcelFailed" : MessageLookupByLibrary.simpleMessage("Не удалось отредактировать посылку"),
    "enterAuthData" : MessageLookupByLibrary.simpleMessage("Введите данные авторизации"),
    "error" : MessageLookupByLibrary.simpleMessage("Ошибка"),
    "errors" : MessageLookupByLibrary.simpleMessage("Ошибки"),
    "fieldRequiredError" : MessageLookupByLibrary.simpleMessage("Это поле обязательно"),
    "filters" : MessageLookupByLibrary.simpleMessage("Фильтры"),
    "filtersAndSorting" : MessageLookupByLibrary.simpleMessage("Фильтры и сортировка"),
    "gallonUnitShort" : m8,
    "generateBarcodFailed" : m9,
    "generateBarcode" : MessageLookupByLibrary.simpleMessage("Сгенерировать штрих-код"),
    "hide" : MessageLookupByLibrary.simpleMessage("Скрыть"),
    "hoursShortFormat" : m10,
    "invalidTrackingNumberStatus" : MessageLookupByLibrary.simpleMessage("Неверный трек номер или почтовая служба не поддерживается"),
    "kilogramUnitShort" : m11,
    "lastTrackingDate" : m12,
    "linuxTrayIconWarning" : MessageLookupByLibrary.simpleMessage("В некоторых средах системный трей может не поддерживаться по умолчанию. Например, для работы в GNOME установите это расширение (или аналогичное): https://extensions.gnome.org/extension/615/appindicator-support/"),
    "literUnitShort" : m13,
    "loadPageFailed" : MessageLookupByLibrary.simpleMessage("Не удалось загрузить страницу"),
    "login" : MessageLookupByLibrary.simpleMessage("Логин"),
    "markAllAsRead" : MessageLookupByLibrary.simpleMessage("Отметить все как прочитанное"),
    "markAsRead" : MessageLookupByLibrary.simpleMessage("Отметить как прочитанное"),
    "markAsReadParcelFailed" : m14,
    "minutesShortFormat" : m16,
    "moveParcelFailed" : m17,
    "moveToActive" : MessageLookupByLibrary.simpleMessage("Переместить в активные"),
    "moveToArchive" : MessageLookupByLibrary.simpleMessage("Переместить в архив"),
    "name" : MessageLookupByLibrary.simpleMessage("Имя"),
    "nextPage" : MessageLookupByLibrary.simpleMessage("Следующая страница"),
    "no" : MessageLookupByLibrary.simpleMessage("Нет"),
    "noAccounts" : MessageLookupByLibrary.simpleMessage("Нет аккаунтов"),
    "noParcels" : MessageLookupByLibrary.simpleMessage("Нет посылок"),
    "noTrackingHistory" : MessageLookupByLibrary.simpleMessage("Нет истории отслеживания"),
    "open" : MessageLookupByLibrary.simpleMessage("Открыть"),
    "openDetails" : MessageLookupByLibrary.simpleMessage("Открыть подробности"),
    "openLinkFailed" : MessageLookupByLibrary.simpleMessage("Невозможно открыть ссылку"),
    "optionalField" : MessageLookupByLibrary.simpleMessage("Опционально"),
    "ounceUnitShort" : m18,
    "pageNotFound" : MessageLookupByLibrary.simpleMessage("Страница не найдена"),
    "parcelDeliveredStatus" : m19,
    "parcelDetailsHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Произошла серьёзная ошибка, прекращено отслеживание некоторых сервисов. Проверьте ошибки перед активацией отслеживания"),
    "parcelInTransitStatus" : m20,
    "parcelInfo" : MessageLookupByLibrary.simpleMessage("Информация о посылке"),
    "parcelInfoNotAvailableStatus" : MessageLookupByLibrary.simpleMessage("Информации о посылки пока нет. После отправки посылки может пройти несколько дней, прежде чем она начнет отслеживаться"),
    "parcelMovedToActiveSuccess" : MessageLookupByLibrary.simpleMessage("Успешно перемещено в активные"),
    "parcelMovedToArchiveSuccess" : MessageLookupByLibrary.simpleMessage("Успешно перемещено в архив"),
    "parcelNames" : MessageLookupByLibrary.simpleMessage("Названия посылок"),
    "parcelNamesFieldHint" : MessageLookupByLibrary.simpleMessage("Опционально. По одному на строку"),
    "parcelNotFound" : MessageLookupByLibrary.simpleMessage("Посылка не найдена"),
    "parcelSignedBy" : m22,
    "parcelTrackingLimitedError" : m23,
    "parcelTrackingStatus" : MessageLookupByLibrary.simpleMessage("Ваша посылка отслеживается. Пожалуйста, подождите несколько минут"),
    "parcels" : MessageLookupByLibrary.simpleMessage("Посылки"),
    "parcelsListHardErrorOccurred" : MessageLookupByLibrary.simpleMessage("Произошла серьёзная ошибка, отслеживание остановлено. Пожалуйста, проверьте подробности внутри"),
    "parcelsTrackingFailedInboxStyleLine" : m24,
    "parcelsTrackingNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Уведомления активности посылок"),
    "parcelsTrackingNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Отслеживание посылок"),
    "parcelsTrackingNotifyInboxStyleDescription" : MessageLookupByLibrary.simpleMessage("Статус посылок обновлён"),
    "parcelsTrackingNotifyInboxStyleLine" : m25,
    "parcelsTrackingNotifyInboxStyleTitle" : MessageLookupByLibrary.simpleMessage("Отслеживание посылок"),
    "password" : MessageLookupByLibrary.simpleMessage("Пароль"),
    "postalService" : MessageLookupByLibrary.simpleMessage("Почтовый сервис"),
    "poundUnitShort" : m26,
    "previousPage" : MessageLookupByLibrary.simpleMessage("Предыдущая страница"),
    "projectIssuesPage" : MessageLookupByLibrary.simpleMessage("https://github.com/proninyaroslav/libretrack/issues"),
    "refresh" : MessageLookupByLibrary.simpleMessage("Обновить"),
    "refreshAll" : MessageLookupByLibrary.simpleMessage("Обновить все"),
    "refreshParcelsFailed" : m27,
    "russianPost" : MessageLookupByLibrary.simpleMessage("Почта России"),
    "russianPostAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1) Зарегистрируйтесь на сайте Почты России: https://www.pochta.ru/\n2) Перейдите в Настройки доступа, включите API отслеживания и согласитесь с условиями сервиса: https://tracking.pochta.ru/access-settings\n3) Скопируйте в Настройках доступа логин (сгенерирован автоматически). Пароль будет отправлен на e-mail, указанный при регистрации."),
    "secondsShortFormat" : m28,
    "secureStorageIsNotSupported" : MessageLookupByLibrary.simpleMessage("Защищённое хранилище не поддерживается. Данные хранятся в незащищённом виде"),
    "selectAccountType" : MessageLookupByLibrary.simpleMessage("Выберите тип аккаунта"),
    "selectAll" : MessageLookupByLibrary.simpleMessage("Выбрать все"),
    "selectedCounter" : m29,
    "settings" : MessageLookupByLibrary.simpleMessage("Настройки"),
    "settingsAppearance" : MessageLookupByLibrary.simpleMessage("Внешний вид"),
    "settingsAutoTracking" : MessageLookupByLibrary.simpleMessage("Автоматическое отслеживание"),
    "settingsAutoTrackingFreq" : MessageLookupByLibrary.simpleMessage("Частота отслеживания"),
    "settingsAutoTrackingFreqDescr" : MessageLookupByLibrary.simpleMessage("Задаёт желаемый интервал отслеживания. Этот интервал не точен и может быть увеличен в связи с ограничениями системы (отсутствие интернет-соединения, режим экономии энергии и прочее)"),
    "settingsAutoTrackingFreqOneDay" : MessageLookupByLibrary.simpleMessage("Раз в день"),
    "settingsAutoTrackingFreqOneWeek" : MessageLookupByLibrary.simpleMessage("Раз в неделю"),
    "settingsAutoTrackingFreqSixHours" : MessageLookupByLibrary.simpleMessage("Раз в 6 часов"),
    "settingsAutoTrackingFreqThreeDays" : MessageLookupByLibrary.simpleMessage("Раз в 3 дня"),
    "settingsAutoTrackingFreqTwelveHours" : MessageLookupByLibrary.simpleMessage("Раз в 12 часов"),
    "settingsBehavior" : MessageLookupByLibrary.simpleMessage("Поведение"),
    "settingsDesktopSection" : MessageLookupByLibrary.simpleMessage("Десктоп"),
    "settingsLanguage" : MessageLookupByLibrary.simpleMessage("Язык"),
    "settingsNotificationsSection" : MessageLookupByLibrary.simpleMessage("Настройки уведомлений"),
    "settingsSystemLanguageOption" : MessageLookupByLibrary.simpleMessage("Системный"),
    "settingsSystemTrayIcon" : MessageLookupByLibrary.simpleMessage("Иконка системного трея"),
    "settingsTheme" : MessageLookupByLibrary.simpleMessage("Тема"),
    "settingsThemeDark" : MessageLookupByLibrary.simpleMessage("Тёмная"),
    "settingsThemeLight" : MessageLookupByLibrary.simpleMessage("Светлая"),
    "settingsThemeSystem" : MessageLookupByLibrary.simpleMessage("Системная"),
    "settingsTrackingErrorNotifications" : MessageLookupByLibrary.simpleMessage("Уведомления об ошибках отслеживания"),
    "settingsTrackingFreqFifteenMin" : MessageLookupByLibrary.simpleMessage("15 минут"),
    "settingsTrackingFreqFortyFiveMin" : MessageLookupByLibrary.simpleMessage("45 минут"),
    "settingsTrackingFreqLimit" : MessageLookupByLibrary.simpleMessage("Ограничение частоты отслеживания"),
    "settingsTrackingFreqLimitSummary" : m30,
    "settingsTrackingFreqOneHour" : MessageLookupByLibrary.simpleMessage("1 час"),
    "settingsTrackingFreqThirtyMin" : MessageLookupByLibrary.simpleMessage("30 минут"),
    "settingsTrackingHistorySize" : MessageLookupByLibrary.simpleMessage("Размер истории отслеживания"),
    "settingsTrackingHistorySizeDescr" : MessageLookupByLibrary.simpleMessage("Задаёт максимальное количество хранимых записей в истории отслеживания посылки"),
    "settingsTrackingNotifications" : MessageLookupByLibrary.simpleMessage("Уведомления об отслеживании посылок"),
    "settingsTrackingSection" : MessageLookupByLibrary.simpleMessage("Настройки отслеживания"),
    "share" : MessageLookupByLibrary.simpleMessage("Поделиться"),
    "shareFailed" : MessageLookupByLibrary.simpleMessage("Не удалось поделиться"),
    "shipmentAdditionalRateFee" : MessageLookupByLibrary.simpleMessage("Дополнительный тарифный сбор"),
    "shipmentAlternateTrackingNumber" : MessageLookupByLibrary.simpleMessage("Альтернативный трек номер"),
    "shipmentCashOnDelivery" : MessageLookupByLibrary.simpleMessage("Наложенный платёж"),
    "shipmentCustomDuty" : MessageLookupByLibrary.simpleMessage("Таможенная пошлина"),
    "shipmentDeclaredValue" : MessageLookupByLibrary.simpleMessage("Объявленная ценность"),
    "shipmentDeliveryDate" : MessageLookupByLibrary.simpleMessage("Дата доставки"),
    "shipmentEstimatedDeliveryDate" : MessageLookupByLibrary.simpleMessage("Предполагаемая дата доставки"),
    "shipmentInsuranceRateFee" : MessageLookupByLibrary.simpleMessage("Страховой сбор"),
    "shipmentPickupDate" : MessageLookupByLibrary.simpleMessage("Дата приёма"),
    "shipmentReceiver" : MessageLookupByLibrary.simpleMessage("Получатель"),
    "shipmentReceiverAddress" : MessageLookupByLibrary.simpleMessage("Адрес получателя"),
    "shipmentScheduledDeliveryDate" : MessageLookupByLibrary.simpleMessage("Запланированная дата доставки"),
    "shipmentServiceDescription" : MessageLookupByLibrary.simpleMessage("Услуга"),
    "shipmentShipper" : MessageLookupByLibrary.simpleMessage("Отправитель"),
    "shipmentShipperAddress" : MessageLookupByLibrary.simpleMessage("Адрес отправителя"),
    "shipmentShippingRateFee" : MessageLookupByLibrary.simpleMessage("Стоимость доставки"),
    "shipmentSignedBy" : MessageLookupByLibrary.simpleMessage("Подписано"),
    "shipmentTypeDescription" : MessageLookupByLibrary.simpleMessage("Тип отправления"),
    "shipmentVolume" : MessageLookupByLibrary.simpleMessage("Объём"),
    "shipmentWeight" : MessageLookupByLibrary.simpleMessage("Вес"),
    "show" : MessageLookupByLibrary.simpleMessage("Показать"),
    "showError" : MessageLookupByLibrary.simpleMessage("Показать ошибку"),
    "showErrors" : MessageLookupByLibrary.simpleMessage("Показать ошибки"),
    "showMore" : MessageLookupByLibrary.simpleMessage("Показать больше"),
    "sortActivityDateAsc" : MessageLookupByLibrary.simpleMessage("Дата активности (сначала новые)"),
    "sortActivityDateDesc" : MessageLookupByLibrary.simpleMessage("Дата активности (сначала старые)"),
    "sortAlphabeticallyAsc" : MessageLookupByLibrary.simpleMessage("А - Я"),
    "sortAlphabeticallyDesc" : MessageLookupByLibrary.simpleMessage("Я - А"),
    "sortDateAddedAsc" : MessageLookupByLibrary.simpleMessage("Дата добавления (сначала новые)"),
    "sortDateAddedDesc" : MessageLookupByLibrary.simpleMessage("Дата добавления (сначала старые)"),
    "sorting" : MessageLookupByLibrary.simpleMessage("Сортировка"),
    "squareFeetUnitShort" : m31,
    "squareMeterUnitShort" : m32,
    "squareYardUnitShort" : m33,
    "status" : MessageLookupByLibrary.simpleMessage("Статус"),
    "statusArrivedAtCustoms" : MessageLookupByLibrary.simpleMessage("Прибыло на таможню"),
    "statusCustomsClearanceComplete" : MessageLookupByLibrary.simpleMessage("Покинуло таможню"),
    "statusDelivered" : MessageLookupByLibrary.simpleMessage("Доставлено"),
    "statusExportedFromDepartureCountry" : MessageLookupByLibrary.simpleMessage("Экспорт из страны отправления"),
    "statusImportedToDestinationCountry" : MessageLookupByLibrary.simpleMessage("Импорт в страну назначения"),
    "statusInStorage" : MessageLookupByLibrary.simpleMessage("В хранении"),
    "statusInTransit" : MessageLookupByLibrary.simpleMessage("В пути"),
    "statusInTransitArrivedWaypoint" : MessageLookupByLibrary.simpleMessage("Прибыло в промежуточный пункт"),
    "statusInTransitDepartedWaypoint" : MessageLookupByLibrary.simpleMessage("Покинуло промежуточный пункт"),
    "statusInfoReceived" : MessageLookupByLibrary.simpleMessage("Информация получена"),
    "statusNotAvailable" : MessageLookupByLibrary.simpleMessage("Информации об отслеживании пока нет"),
    "statusNotDelivered" : MessageLookupByLibrary.simpleMessage("Не доставлено"),
    "statusOutForDelivery" : MessageLookupByLibrary.simpleMessage("Выдано для доставки"),
    "statusPickup" : MessageLookupByLibrary.simpleMessage("Посылка принята"),
    "statusReturnedToShipper" : MessageLookupByLibrary.simpleMessage("Возвращено отправителю"),
    "track" : MessageLookupByLibrary.simpleMessage("Отследить"),
    "trackingError" : MessageLookupByLibrary.simpleMessage("Ошибка отслеживания"),
    "trackingErrorAuth" : MessageLookupByLibrary.simpleMessage("Ошибка авторизации. Пожалуйста, проверьте данные вашего аккаунта"),
    "trackingErrorCode" : MessageLookupByLibrary.simpleMessage("Код"),
    "trackingErrorInvalidTrackNumber" : MessageLookupByLibrary.simpleMessage("Неверный трек номер"),
    "trackingErrorMissingAccount" : MessageLookupByLibrary.simpleMessage("Аккаунт отсутствует. Проверьте, добавлен ли аккаунт и поддерживает ли он выбранную почтовую службу"),
    "trackingErrorMissingAuthData" : MessageLookupByLibrary.simpleMessage("Данные авторизации отсутствуют. Проверьте, есть ли у вас аккаунт и верны ли данные"),
    "trackingErrorNetwork" : MessageLookupByLibrary.simpleMessage("Сетевая ошибка"),
    "trackingErrorNoInfo" : MessageLookupByLibrary.simpleMessage("Информация об отслеживании недоступна"),
    "trackingErrorNotifyChannelDescription" : MessageLookupByLibrary.simpleMessage("Уведомления об ошибках отслеживания"),
    "trackingErrorNotifyChannelTitle" : MessageLookupByLibrary.simpleMessage("Ошибка отслеживания"),
    "trackingErrorOccured" : MessageLookupByLibrary.simpleMessage("Ошибка при отслеживании следующих посылок:"),
    "trackingErrorReason" : MessageLookupByLibrary.simpleMessage("Причина"),
    "trackingErrorService" : MessageLookupByLibrary.simpleMessage("Сервис вернул ошибку"),
    "trackingErrorStackTrace" : MessageLookupByLibrary.simpleMessage("Трассировка стека"),
    "trackingErrorUnknown" : MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
    "trackingFailed" : MessageLookupByLibrary.simpleMessage("Отслеживание не удалось"),
    "trackingHistory" : MessageLookupByLibrary.simpleMessage("История отслеживания"),
    "trackingNumbers" : MessageLookupByLibrary.simpleMessage("Трек номера"),
    "trackingNumbersFieldHint" : MessageLookupByLibrary.simpleMessage("По одному на строку"),
    "trackingResponseError" : MessageLookupByLibrary.simpleMessage("Ошибка"),
    "trackingResponseNoInfo" : MessageLookupByLibrary.simpleMessage("Нет информации"),
    "trackingResponseSuccess" : MessageLookupByLibrary.simpleMessage("Успешно"),
    "trackingStartedDate" : m34,
    "trackingStoppedStatus" : MessageLookupByLibrary.simpleMessage("Отслеживание остановлено. Остлеживание останавливается, если произошла серьёзная ошибка, либо почтовая служба сообщила, что дальнейшие статусы не предоставляются"),
    "unreadParcels" : MessageLookupByLibrary.simpleMessage("Непрочитанные"),
    "ups" : MessageLookupByLibrary.simpleMessage("UPS"),
    "upsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("Необходимо ввести данные авторизации аккаунта UPS. Вы можете зарегистрировать его здесь: https://www.ups.com/doapp/signup?loc=ru_RU\nДля получения ключа доступа перейдите по ссылке и следуйте инструкциям: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=ru_RU"),
    "username" : MessageLookupByLibrary.simpleMessage("Имя пользователя"),
    "usps" : MessageLookupByLibrary.simpleMessage("USPS"),
    "uspsAddAccountDescription" : MessageLookupByLibrary.simpleMessage("1) Зарегистрируйтесь на сайте USPS Web Tools API Portal: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2) Во время регистрации, на вопрос «How will you be using the USPS Web Tools?» ответьте «Exclusively on my Web site».\n3) После регистрации данные для авторизации будут отправлены на указанный e-mail. Скопируйте строки «Username» и «Company» (которая была указана при регистрации)."),
    "whoDeliveresParcel" : MessageLookupByLibrary.simpleMessage("Кто доставляет посылку"),
    "yes" : MessageLookupByLibrary.simpleMessage("Да")
  };
}
