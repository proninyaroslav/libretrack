// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      'Приватное, кроссплатформенное приложение для отслеживания посылок.\nБольше информации, а также помочь проекту: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack является свободным программным обеспечением с открытым исходным кодом (FOSS), выпущенным в соответствии с условиями лицензии GNU General Public License v3 (GPLv3) https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get cancel => 'Отменить';

  @override
  String get accounts => 'Аккаунты';

  @override
  String get add => 'Добавить';

  @override
  String get delete => 'Удалить';

  @override
  String get apply => 'Применить';

  @override
  String get close => 'Закрыть';

  @override
  String get hide => 'Скрыть';

  @override
  String get show => 'Показать';

  @override
  String get all => 'Все';

  @override
  String get edit => 'Редактировать';

  @override
  String get name => 'Имя';

  @override
  String get open => 'Открыть';

  @override
  String get optionalField => 'Опционально';

  @override
  String get selectAll => 'Выбрать все';

  @override
  String selectedCounter(Object count) {
    return 'Выбрано: $count';
  }

  @override
  String get noAccounts => 'Нет аккаунтов';

  @override
  String get selectAccountType => 'Выберите тип аккаунта';

  @override
  String get enterAuthData => 'Введите данные авторизации';

  @override
  String get allAccountsAlreadyAdded => 'Все аккаунты уже добавлены';

  @override
  String get addAccount => 'Добавить аккаунт';

  @override
  String get editAccount => 'Редактировать аккаунт';

  @override
  String get deleteAccountDialogMsg =>
      'Вы действительно хотите удалить выбранный аккаунт?';

  @override
  String get pageNotFound => 'Страница не найдена';

  @override
  String get openLinkFailed => 'Невозможно открыть ссылку';

  @override
  String get login => 'Логин';

  @override
  String get password => 'Пароль';

  @override
  String get accessKey => 'Ключ доступа';

  @override
  String get username => 'Имя пользователя';

  @override
  String get companyName => 'Название организации';

  @override
  String get fieldRequiredError => 'Это поле обязательно';

  @override
  String get addAccountFailed => 'Не удалось добавить аккаунт';

  @override
  String get editAccountFailed => 'Не удалось изменить аккаунт';

  @override
  String get parcels => 'Посылки';

  @override
  String get receiverParcels => 'Я получатель';

  @override
  String get shipperParcels => 'Я отправитель';

  @override
  String get archiveParcels => 'Архив';

  @override
  String get filtersAndSorting => 'Фильтры и сортировка';

  @override
  String get filters => 'Фильтры';

  @override
  String get sorting => 'Сортировка';

  @override
  String get noParcels => 'Нет посылок';

  @override
  String get addAccountTip =>
      'Прежде чем отслеживать посылки, вам необходимо добавить аккаунт';

  @override
  String get addParcels => 'Добавить посылки';

  @override
  String get track => 'Отследить';

  @override
  String get trackingNumbers => 'Трек номера';

  @override
  String get trackingNumbersFieldHint => 'По одному на строку';

  @override
  String get parcelNames => 'Названия посылок';

  @override
  String get parcelNamesFieldHint => 'Опционально. По одному на строку';

  @override
  String get addParcelsFailed => 'Не удалось добавить посылки';

  @override
  String get statusNotAvailable => 'Информации об отслеживании пока нет';

  @override
  String get statusInfoReceived => 'Информация получена';

  @override
  String get statusPickup => 'Посылка принята';

  @override
  String get statusInTransit => 'В пути';

  @override
  String get statusOutForDelivery => 'Выдано для доставки';

  @override
  String get statusDelivered => 'Доставлено';

  @override
  String get statusReturnedToShipper => 'Возвращено отправителю';

  @override
  String get statusNotDelivered => 'Не доставлено';

  @override
  String get statusInStorage => 'В хранении';

  @override
  String get statusInTransitArrivedWaypoint => 'Прибыло в промежуточный пункт';

  @override
  String get statusInTransitDepartedWaypoint => 'Покинуло промежуточный пункт';

  @override
  String get statusExportedFromDepartureCountry =>
      'Экспорт из страны отправления';

  @override
  String get statusImportedToDestinationCountry => 'Импорт в страну назначения';

  @override
  String get statusArrivedAtCustoms => 'Прибыло на таможню';

  @override
  String get statusCustomsClearanceComplete => 'Покинуло таможню';

  @override
  String get trackingErrorNoInfo => 'Информация об отслеживании недоступна';

  @override
  String get trackingErrorUnknown => 'Неизвестная ошибка';

  @override
  String get trackingErrorNetwork => 'Сетевая ошибка';

  @override
  String get trackingErrorService => 'Сервис вернул ошибку';

  @override
  String get trackingErrorAuth =>
      'Ошибка авторизации. Пожалуйста, проверьте данные вашего аккаунта';

  @override
  String get trackingErrorInvalidTrackNumber => 'Неверный трек номер';

  @override
  String get trackingErrorMissingAuthData =>
      'Данные авторизации отсутствуют. Проверьте, есть ли у вас аккаунт и верны ли данные';

  @override
  String get trackingErrorMissingAccount =>
      'Аккаунт отсутствует. Проверьте, добавлен ли аккаунт и поддерживает ли он выбранную почтовую службу';

  @override
  String get parcelsListHardErrorOccurred =>
      'Произошла серьёзная ошибка, отслеживание остановлено. Пожалуйста, проверьте подробности внутри';

  @override
  String get moveToArchive => 'Переместить в архив';

  @override
  String get moveToReceiver => 'Переместить в список получаемых';

  @override
  String get moveToShipper => 'Переместить в список отправляемых';

  @override
  String get moveToActive => 'Переместить в активные';

  @override
  String get markAsRead => 'Отметить как прочитанное';

  @override
  String get markAllAsRead => 'Отметить все как прочитанное';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Вы действительно хотите удалить выбранные посылки?',
      one: 'Вы действительно хотите удалить выбранную посылку?',
    );
    return '$_temp0';
  }

  @override
  String get refresh => 'Обновить';

  @override
  String get refreshAll => 'Обновить все';

  @override
  String get dataIsSecured => 'Данные хранятся в защищённом виде';

  @override
  String get secureStorageIsNotSupported =>
      'Защищённое хранилище не поддерживается. Данные хранятся в незащищённом виде';

  @override
  String get copyTrackNumber => 'Скопировать трек номер';

  @override
  String get share => 'Поделиться';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get status => 'Статус';

  @override
  String get unreadParcels => 'Непрочитанные';

  @override
  String get error => 'Ошибка';

  @override
  String get postalService => 'Почтовый сервис';

  @override
  String get sortActivityDateAsc => 'Дата активности (сначала новые)';

  @override
  String get sortActivityDateDesc => 'Дата активности (сначала старые)';

  @override
  String get sortDateAddedAsc => 'Дата добавления (сначала новые)';

  @override
  String get sortDateAddedDesc => 'Дата добавления (сначала старые)';

  @override
  String get sortAlphabeticallyAsc => 'А - Я';

  @override
  String get sortAlphabeticallyDesc => 'Я - А';

  @override
  String get barcodeScanner => 'Сканер штрих-кода';

  @override
  String get barcodeScanFailed => 'Не удалось сканировать штрих-код';

  @override
  String get loadPageFailed => 'Не удалось загрузить страницу';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Не удалось обновить посылки',
      one: 'Не удалось обновить посылку',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Не удалось удалить посылки',
      one: 'Не удалось удалить посылку',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Не удалось переместить посылки',
      one: 'Не удалось переместить посылку',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: 'Не удалось отметить посылки как прочитанные',
      one: 'Не удалось отметить посылку как прочитанную',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => 'Посылка не найдена';

  @override
  String get addToMyParcels => 'Добавить в мои посылки';

  @override
  String trackingStartedDate(Object date) {
    return 'Отслеживание начато: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return 'Последнее отслеживание: $date';
  }

  @override
  String get parcelTrackingStatus =>
      'Ваша посылка отслеживается. Пожалуйста, подождите несколько минут';

  @override
  String get invalidTrackingNumberStatus =>
      'Неверный трек номер или почтовая служба не поддерживается';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Посылка в пути $days дней',
      many: 'Посылка в пути $days дней',
      few: 'Посылка в пути $days дня',
      one: 'Посылка в пути $days день',
      zero: 'Посылка в пути $days дней',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return 'Посылка доставлена $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return 'Посылка выдана ​​для доставки $date';
  }

  @override
  String get parcelInfoNotAvailableStatus =>
      'Информации о посылки пока нет. После отправки посылки может пройти несколько дней, прежде чем она начнет отслеживаться';

  @override
  String get trackingStoppedStatus =>
      'Отслеживание остановлено. Остлеживание останавливается, если произошла серьёзная ошибка, либо почтовая служба сообщила, что дальнейшие статусы не предоставляются';

  @override
  String get activateAndRefresh => 'Активировать и проверить';

  @override
  String get activateTrackingFailed => 'Не удалось активировать отслеживание';

  @override
  String get generateBarcode => 'Сгенерировать штрих-код';

  @override
  String generateBarcodFailed(Object error) {
    return 'Не удалось сгенерировать штрих-код: $error';
  }

  @override
  String get editParcelFailed => 'Не удалось отредактировать посылку';

  @override
  String get whoDeliveresParcel => 'Кто доставляет посылку';

  @override
  String get details => 'Детали';

  @override
  String get trackingHistory => 'История отслеживания';

  @override
  String get activateTracking => 'Активировать отслеживание';

  @override
  String get noTrackingHistory => 'Нет истории отслеживания';

  @override
  String get showError => 'Показать ошибку';

  @override
  String get trackingResponseSuccess => 'Успешно';

  @override
  String get trackingResponseError => 'Ошибка';

  @override
  String get trackingResponseNoInfo => 'Нет информации';

  @override
  String get trackingResponseStopped => 'Отслеживание остановлено';

  @override
  String get trackingErrorReason => 'Причина';

  @override
  String get trackingErrorCode => 'Код';

  @override
  String get trackingErrorStackTrace => 'Трассировка стека';

  @override
  String get errors => 'Ошибки';

  @override
  String get showErrors => 'Показать ошибки';

  @override
  String get parcelDetailsHardErrorOccurred =>
      'Произошла серьёзная ошибка, прекращено отслеживание некоторых сервисов. Проверьте ошибки перед активацией отслеживания';

  @override
  String get deleteAccountFailed => 'Не удалось удалить аккаунт';

  @override
  String get activityHistory => 'История активности';

  @override
  String get parcelInfo => 'Информация о посылке';

  @override
  String parcelSignedBy(Object name) {
    return 'Подписано: $name';
  }

  @override
  String get showMore => 'Показать больше';

  @override
  String get shipmentServiceDescription => 'Услуга';

  @override
  String get shipmentDeliveryDate => 'Дата доставки';

  @override
  String get shipmentSignedBy => 'Подписано';

  @override
  String get shipmentScheduledDeliveryDate => 'Запланированная дата доставки';

  @override
  String get shipmentEstimatedDeliveryDate => 'Предполагаемая дата доставки';

  @override
  String get shipmentPickupDate => 'Дата приёма';

  @override
  String get shipmentWeight => 'Вес';

  @override
  String get shipmentDimensions => 'Размеры [(Д) x (Ш) x (В)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => 'Объём';

  @override
  String get shipmentCashOnDelivery => 'Наложенный платёж';

  @override
  String get shipmentDeclaredValue => 'Объявленная ценность';

  @override
  String get shipmentCustomDuty => 'Таможенная пошлина';

  @override
  String get shipmentAdditionalRateFee => 'Дополнительный тарифный сбор';

  @override
  String get shipmentShippingRateFee => 'Стоимость доставки';

  @override
  String get shipmentInsuranceRateFee => 'Страховой сбор';

  @override
  String get shipmentTypeDescription => 'Тип отправления';

  @override
  String get shipmentReceiverAddress => 'Адрес получателя';

  @override
  String get shipmentShipperAddress => 'Адрес отправителя';

  @override
  String get shipmentShipper => 'Отправитель';

  @override
  String get shipmentReceiver => 'Получатель';

  @override
  String kilogramUnitShort(Object value) {
    return '$value кг';
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
    return '$value л';
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
    return '$value м²';
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
    return '$value м';
  }

  @override
  String centimeterUnitShort(Object value) {
    return '$value см';
  }

  @override
  String cubicMeterUnitShort(Object value) {
    return '$value м³';
  }

  @override
  String cubicCentimeterUnitShort(Object value) {
    return '$value см³';
  }

  @override
  String get shipmentAlternateTrackingNumber => 'Альтернативный трек номер';

  @override
  String get parcelMovedToActiveSuccess => 'Успешно перемещено в активные';

  @override
  String get parcelMovedToArchiveSuccess => 'Успешно перемещено в архив';

  @override
  String get parcelsTrackingNotifyChannelTitle => 'Отслеживание посылок';

  @override
  String get parcelsTrackingNotifyChannelDescription =>
      'Уведомления активности посылок';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => 'Отслеживание посылок';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription =>
      'Статус посылок обновлён';

  @override
  String get settings => 'Настройки';

  @override
  String get settingsAppearance => 'Внешний вид';

  @override
  String get settingsBehavior => 'Поведение';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsNotificationsSection => 'Настройки уведомлений';

  @override
  String get settingsTrackingNotifications =>
      'Уведомления об отслеживании посылок';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsSystemLanguageOption => 'Системный';

  @override
  String parcelTrackingLimitedError(Object time) {
    return 'Отслеживание недоступно, так как с момента последнего отслеживания прошло мало времени. Пожалуйста, повторите попытку через $time';
  }

  @override
  String hoursShortFormat(Object value) {
    return '$value ч.';
  }

  @override
  String minutesShortFormat(Object value) {
    return '$value мин.';
  }

  @override
  String secondsShortFormat(Object value) {
    return '$value сек.';
  }

  @override
  String get settingsTrackingSection => 'Настройки отслеживания';

  @override
  String get settingsTrackingFreqLimit => 'Ограничение частоты отслеживания';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return 'Не более одного раза в $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15 минут';

  @override
  String get settingsTrackingFreqThirtyMin => '30 минут';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45 минут';

  @override
  String get settingsTrackingFreqOneHour => '1 час';

  @override
  String get settingsTrackingFreqUnlimited => 'Неограниченно';

  @override
  String get settingsAutoTracking => 'Автоматическое отслеживание';

  @override
  String get settingsAutoTrackingFreq => 'Частота отслеживания';

  @override
  String get settingsAutoTrackingFreqDescr =>
      'Задаёт желаемый интервал отслеживания. Этот интервал не точен и может быть увеличен в связи с ограничениями системы (отсутствие интернет-соединения, режим экономии энергии и прочее)';

  @override
  String get settingsAutoTrackingFreqSixHours => 'Раз в 6 часов';

  @override
  String get settingsAutoTrackingFreqTwelveHours => 'Раз в 12 часов';

  @override
  String get settingsAutoTrackingFreqOneDay => 'Раз в день';

  @override
  String get settingsAutoTrackingFreqThreeDays => 'Раз в 3 дня';

  @override
  String get settingsAutoTrackingFreqOneWeek => 'Раз в неделю';

  @override
  String get settingsTrackingHistorySize => 'Размер истории отслеживания';

  @override
  String get settingsTrackingHistorySizeDescr =>
      'Задаёт максимальное количество хранимых записей в истории отслеживания посылки';

  @override
  String get settingsTrackingErrorNotifications =>
      'Уведомления об ошибках отслеживания';

  @override
  String get trackingErrorNotifyChannelTitle => 'Ошибка отслеживания';

  @override
  String get trackingErrorNotifyChannelDescription =>
      'Уведомления об ошибках отслеживания';

  @override
  String get trackingError => 'Ошибка отслеживания';

  @override
  String get trackingFailed => 'Отслеживание не удалось';

  @override
  String get trackingErrorOccured =>
      'Ошибка при отслеживании следующих посылок:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary =>
      'В приложении произошла ошибка. Вы можете сообщить об этом разработчикам';

  @override
  String get crashDialogExtraInfo =>
      'Добавьте дополнительную информацию и комментарии сюда:';

  @override
  String get crashDialogReport => 'Сообщить';

  @override
  String get crashDialogMoreDetails => 'Подробнее';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return 'Приложение для отправки email не найдено. Вы можете вручную скопировать ошибку и и отправить её по адресу $email, или отправить на странице проекта $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => 'По умолчанию';

  @override
  String get defaultNotifyChannelDescription =>
      'Все уведомления, не подходящие для других категорий';

  @override
  String get aboutApp => 'О программе';

  @override
  String get changelog => 'История изменений';

  @override
  String get settingsDesktopSection => 'Десктоп';

  @override
  String get settingsSystemTrayIcon => 'Иконка системного трея';

  @override
  String get openDetails => 'Открыть подробности';

  @override
  String get shareFailed => 'Не удалось поделиться';

  @override
  String get linuxTrayIconWarning =>
      'В некоторых средах системный трей может не поддерживаться по умолчанию. Например, для работы в GNOME установите это расширение (или аналогичное): https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => 'Предыдущая страница';

  @override
  String get nextPage => 'Следующая страница';

  @override
  String get upsAddAccountDescription =>
      'Необходимо ввести данные авторизации аккаунта UPS. Вы можете зарегистрировать его здесь: https://www.ups.com/doapp/signup?loc=ru_RU\nДля получения ключа доступа перейдите по ссылке и следуйте инструкциям: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=ru_RU';

  @override
  String get ups => 'UPS';

  @override
  String get russianPost => 'Почта России';

  @override
  String get russianPostAddAccountDescription =>
      '1) Зарегистрируйтесь на сайте Почты России: https://www.pochta.ru/\n2) Перейдите в Настройки доступа, включите API отслеживания и согласитесь с условиями сервиса: https://tracking.pochta.ru/access-settings\n3) Скопируйте в Настройках доступа логин (сгенерирован автоматически). Пароль будет отправлен на e-mail, указанный при регистрации.';

  @override
  String get usps => 'USPS';

  @override
  String get uspsAddAccountDescription =>
      '1) Зарегистрируйтесь на сайте USPS Web Tools API Portal: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2) Во время регистрации, на вопрос «How will you be using the USPS Web Tools?» ответьте «Exclusively on my Web site».\n3) После регистрации данные для авторизации будут отправлены на указанный e-mail. Скопируйте строки «Username» и «Company» (которая была указана при регистрации).';

  @override
  String get postNord => 'PostNord';

  @override
  String get apiKey => 'Ключ API';

  @override
  String get postNordAddAccountDescription =>
      'Для авторизации необходим API-ключ. Его можно получить несколькими способами. Возьмите существующий (например, найдите пакет с именем «postnord» на https://www.npmjs.com/ и поищите в исходном коде), или зарегистрируйте его (как юридическое лицо):\n\n1. Зарегистрируйтесь как клиент или партнер на https://developer.postnord.com/\n2. Скопируйте API-ключ с этой страницы: https://atdeveloper.postnord.com/admin/applications. Если ключа нет, нажмите кнопку «Create new application».';

  @override
  String get barcodeGeneratorShowQrCode => 'Показать QR';

  @override
  String get barcodeGeneratorShowBarcodeCode => 'Показать штрих-код';

  @override
  String get shipmentCustomerType => 'Тип отправления';
}
