// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mandarin Chinese (`cmn`).
class AppLocalizationsCmn extends AppLocalizations {
  AppLocalizationsCmn([String locale = 'cmn']) : super(locale);

  @override
  String get projectIssuesPage =>
      'https://github.com/proninyaroslav/libretrack/issues';

  @override
  String get appChangelogUrl =>
      'https://github.com/proninyaroslav/libretrack/blob/HEAD/NEWS.md';

  @override
  String get appDescription =>
      '注重隐私，跨平台的包裹跟踪应用.\n更多信息以及为项目提供帮助: https://github.com/proninyaroslav/libretrack';

  @override
  String get appLicense =>
      'LibreTrack 是自由与开源的软件 (FOSS)，根据 GNU 通用公共许可证 v3 (GPLv3) 条款发布。 https://www.gnu.org/licenses/gpl-3.0.html';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get cancel => '取消';

  @override
  String get accounts => '账户';

  @override
  String get add => '添加';

  @override
  String get delete => '删除';

  @override
  String get apply => '应用';

  @override
  String get close => '关闭';

  @override
  String get hide => '隐藏';

  @override
  String get show => '显示';

  @override
  String get all => '所有';

  @override
  String get edit => '编辑';

  @override
  String get name => '名字';

  @override
  String get open => '打开';

  @override
  String get optionalField => '可选';

  @override
  String get selectAll => '选择全部';

  @override
  String selectedCounter(Object count) {
    return '已选择: $count';
  }

  @override
  String get noAccounts => '没有账户';

  @override
  String get selectAccountType => '请选择账户类型';

  @override
  String get enterAuthData => '输入您的授权数据';

  @override
  String get allAccountsAlreadyAdded => '已添加所有账户';

  @override
  String get addAccount => '添加账户';

  @override
  String get editAccount => '编辑账户';

  @override
  String get deleteAccountDialogMsg => '您确定要删除所选账户吗？';

  @override
  String get pageNotFound => '页面未找到';

  @override
  String get openLinkFailed => '无法打开链接';

  @override
  String get login => '登陆';

  @override
  String get password => '密码';

  @override
  String get accessKey => '访问密钥';

  @override
  String get username => '用户名';

  @override
  String get companyName => '公司名称';

  @override
  String get fieldRequiredError => '此栏为必填项';

  @override
  String get addAccountFailed => '添加账户失败';

  @override
  String get editAccountFailed => '账户编辑失败';

  @override
  String get parcels => '包裹';

  @override
  String get receiverParcels => '我是接收者';

  @override
  String get shipperParcels => '我是发货人';

  @override
  String get archiveParcels => '归档';

  @override
  String get filtersAndSorting => '筛选和排序';

  @override
  String get filters => '筛选';

  @override
  String get sorting => '排序';

  @override
  String get noParcels => '无包裹';

  @override
  String get addAccountTip => '跟踪包裹前，您需要添加一个账户';

  @override
  String get addParcels => '添加包裹';

  @override
  String get track => '跟踪';

  @override
  String get trackingNumbers => '跟踪号码';

  @override
  String get trackingNumbersFieldHint => '每行一个';

  @override
  String get parcelNames => '包裹名称';

  @override
  String get parcelNamesFieldHint => '可选。每行一个';

  @override
  String get addParcelsFailed => '添加包裹失败';

  @override
  String get statusNotAvailable => '目前还没有跟踪信息';

  @override
  String get statusInfoReceived => '已收到信息';

  @override
  String get statusPickup => '取件';

  @override
  String get statusInTransit => '运输中';

  @override
  String get statusOutForDelivery => '配送途中';

  @override
  String get statusDelivered => '已送达';

  @override
  String get statusReturnedToShipper => '已退还给托运人';

  @override
  String get statusNotDelivered => '未送达';

  @override
  String get statusInStorage => '存放中';

  @override
  String get statusInTransitArrivedWaypoint => '到达中途站';

  @override
  String get statusInTransitDepartedWaypoint => '从中途站出发';

  @override
  String get statusExportedFromDepartureCountry => '从出境国出口';

  @override
  String get statusImportedToDestinationCountry => '进口到目的地国';

  @override
  String get statusArrivedAtCustoms => '已抵达海关';

  @override
  String get statusCustomsClearanceComplete => '已通过海关';

  @override
  String get trackingErrorNoInfo => '无';

  @override
  String get trackingErrorUnknown => '未知错误';

  @override
  String get trackingErrorNetwork => '网络错误';

  @override
  String get trackingErrorService => '跟踪服务错误';

  @override
  String get trackingErrorAuth => '授权错误。请检查您的账户数据';

  @override
  String get trackingErrorInvalidTrackNumber => '无效跟踪号码';

  @override
  String get trackingErrorMissingAuthData => '授权数据丢失。检查您是否有账户且数据是否正确';

  @override
  String get trackingErrorMissingAccount => '找不到帐户。检查账户是否已添加，是否支持所选邮政服务';

  @override
  String get parcelsListHardErrorOccurred => '发生严重错误，追踪停止。请检查里面的详细信息';

  @override
  String get moveToArchive => '移至存档';

  @override
  String get moveToReceiver => '移至接收列表';

  @override
  String get moveToShipper => '移至发送列表';

  @override
  String get moveToActive => '移至到启用';

  @override
  String get markAsRead => '标记为已读';

  @override
  String get markAllAsRead => '标记全部为已读';

  @override
  String deleteParcelDialogMsg(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '您确定要删除选定的包裹吗？',
      one: '您确定要删除选定的包裹吗？',
    );
    return '$_temp0';
  }

  @override
  String get refresh => '刷新';

  @override
  String get refreshAll => '刷新所有';

  @override
  String get dataIsSecured => '数据存储安全';

  @override
  String get secureStorageIsNotSupported => '不支持安全存储。数据存储不受保护';

  @override
  String get copyTrackNumber => '复制跟踪号码';

  @override
  String get share => '分享';

  @override
  String get copiedToClipboard => '复制到剪切板';

  @override
  String get status => '状态';

  @override
  String get unreadParcels => '未读';

  @override
  String get error => '错误';

  @override
  String get postalService => '邮政服务';

  @override
  String get sortActivityDateAsc => '活动日期（最新）';

  @override
  String get sortActivityDateDesc => '活动日期（最早）';

  @override
  String get sortDateAddedAsc => '添加日期（最新）';

  @override
  String get sortDateAddedDesc => '添加日期（最早）';

  @override
  String get sortAlphabeticallyAsc => 'A - Z';

  @override
  String get sortAlphabeticallyDesc => 'Z - A';

  @override
  String get barcodeScanner => '条形码扫描器';

  @override
  String get barcodeScanFailed => '扫描条形码失败';

  @override
  String get loadPageFailed => '加载页面失败';

  @override
  String refreshParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '刷新包裹失败',
      one: '刷新包裹失败',
    );
    return '$_temp0';
  }

  @override
  String deleteParcelsFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '删除包裹失败',
      one: '删除包裹失败',
    );
    return '$_temp0';
  }

  @override
  String moveParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '移动包裹失败',
      one: '移动包裹失败',
    );
    return '$_temp0';
  }

  @override
  String markAsReadParcelFailed(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '未能将包裹标记为已读',
      one: '未能将包裹标记为已读',
    );
    return '$_temp0';
  }

  @override
  String get parcelNotFound => '未找到包裹';

  @override
  String get addToMyParcels => '添加到我的包裹';

  @override
  String trackingStartedDate(Object date) {
    return '开始跟踪于: $date';
  }

  @override
  String lastTrackingDate(Object date) {
    return '最后跟踪于: $date';
  }

  @override
  String get parcelTrackingStatus => '您的包裹目前已被追踪。请稍等片刻';

  @override
  String get invalidTrackingNumberStatus => '追踪号码无效或不支持邮政服务';

  @override
  String parcelInTransitStatus(num days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '包裹已运输 $days 天',
      many: '包裹已运输 $days 天',
      few: '包裹已运输 $days 天',
      one: '包裹已运输 $days 天',
      zero: '包裹已运输 $days 天',
    );
    return '$_temp0';
  }

  @override
  String parcelDeliveredStatus(Object date) {
    return '包裹送达于 $date';
  }

  @override
  String parcelOutForDeliveryStatus(Object date) {
    return '包裹曾在配送途中于 $date';
  }

  @override
  String get parcelInfoNotAvailableStatus => '目前还没有包裹信息。当包裹被配送之后，可能需要隔几天才能被追踪';

  @override
  String get trackingStoppedStatus => '已停止跟踪。有可能是因为严重错误，或者是因为邮局没有别的状况可以报告';

  @override
  String get activateAndRefresh => '激活并刷新';

  @override
  String get activateTrackingFailed => '未能激活并刷新';

  @override
  String get generateBarcode => '生成条形码';

  @override
  String generateBarcodFailed(Object error) {
    return '未能生成条形码: $error';
  }

  @override
  String get editParcelFailed => '未能编辑包裹';

  @override
  String get whoDeliveresParcel => '包裹送达人';

  @override
  String get details => '详情';

  @override
  String get trackingHistory => '跟踪历史';

  @override
  String get activateTracking => '开始跟踪';

  @override
  String get noTrackingHistory => '无跟踪历史';

  @override
  String get showError => '显示错误';

  @override
  String get trackingResponseSuccess => '成功';

  @override
  String get trackingResponseError => '错误';

  @override
  String get trackingResponseNoInfo => '无信息';

  @override
  String get trackingResponseStopped => '跟踪已停止';

  @override
  String get trackingErrorReason => '原因';

  @override
  String get trackingErrorCode => '代码';

  @override
  String get trackingErrorStackTrace => '堆栈跟踪';

  @override
  String get errors => '错误';

  @override
  String get showErrors => '显示错误';

  @override
  String get parcelDetailsHardErrorOccurred => '发生了严重错误，已停止有些跟踪服务。检查错误再激活跟踪';

  @override
  String get deleteAccountFailed => '无法删除帐号';

  @override
  String get activityHistory => '活动历史';

  @override
  String get parcelInfo => '包裹信息';

  @override
  String parcelSignedBy(Object name) {
    return '签署人: $name';
  }

  @override
  String get showMore => '显示更多';

  @override
  String get shipmentServiceDescription => '服务';

  @override
  String get shipmentDeliveryDate => '送达日期';

  @override
  String get shipmentSignedBy => '签署人';

  @override
  String get shipmentScheduledDeliveryDate => '已安排到达日期';

  @override
  String get shipmentEstimatedDeliveryDate => '预计交付日期';

  @override
  String get shipmentPickupDate => '提货日期';

  @override
  String get shipmentWeight => '重量';

  @override
  String get shipmentDimensions => '尺寸 [(长) x (宽) x (高)]';

  @override
  String dimensionsUnit(Object height, Object length, Object width) {
    return '$length x $width x $height';
  }

  @override
  String get shipmentVolume => '容量';

  @override
  String get shipmentCashOnDelivery => '货到付款';

  @override
  String get shipmentDeclaredValue => '声报价值';

  @override
  String get shipmentCustomDuty => '关税';

  @override
  String get shipmentAdditionalRateFee => '额外费用';

  @override
  String get shipmentShippingRateFee => '运费';

  @override
  String get shipmentInsuranceRateFee => '保险费';

  @override
  String get shipmentTypeDescription => '发货类型';

  @override
  String get shipmentReceiverAddress => '收件人地址';

  @override
  String get shipmentShipperAddress => '发货人地址';

  @override
  String get shipmentShipper => '发货人';

  @override
  String get shipmentReceiver => '收货人';

  @override
  String kilogramUnitShort(Object value) {
    return '$value 千克';
  }

  @override
  String poundUnitShort(Object value) {
    return '$value 磅';
  }

  @override
  String ounceUnitShort(Object value) {
    return '$value 盎司';
  }

  @override
  String literUnitShort(Object value) {
    return '$value 升';
  }

  @override
  String gallonUnitShort(Object value) {
    return '$value 加仑';
  }

  @override
  String barrelUnitShort(Object value) {
    return '$value 桶';
  }

  @override
  String squareMeterUnitShort(Object value) {
    return '$value 平方米';
  }

  @override
  String squareFeetUnitShort(Object value) {
    return '$value 平方英尺';
  }

  @override
  String squareYardUnitShort(Object value) {
    return '$value 平方码';
  }

  @override
  String meterUnitShort(Object value) {
    return '$value 米';
  }

  @override
  String centimeterUnitShort(Object value) {
    return '$value 厘米';
  }

  @override
  String cubicMeterUnitShort(Object value) {
    return '$value 立方米';
  }

  @override
  String cubicCentimeterUnitShort(Object value) {
    return '$value 立方厘米';
  }

  @override
  String get shipmentAlternateTrackingNumber => '备用跟踪号码';

  @override
  String get parcelMovedToActiveSuccess => '成功移动到活动状态';

  @override
  String get parcelMovedToArchiveSuccess => '成功移动到归档状态';

  @override
  String get parcelsTrackingNotifyChannelTitle => '跟踪的包裹';

  @override
  String get parcelsTrackingNotifyChannelDescription => '包裹活动通知';

  @override
  String parcelsTrackingNotifyInboxStyleLine(Object body, Object title) {
    return '$title: $body';
  }

  @override
  String get parcelsTrackingNotifyInboxStyleTitle => '正在跟踪的包裹';

  @override
  String get parcelsTrackingNotifyInboxStyleDescription => '包裹状态正在被刷新';

  @override
  String get settings => '设置';

  @override
  String get settingsAppearance => '外表';

  @override
  String get settingsBehavior => '行为';

  @override
  String get settingsTheme => '主题';

  @override
  String get settingsThemeSystem => '系统';

  @override
  String get settingsThemeLight => '明亮';

  @override
  String get settingsThemeDark => '深色';

  @override
  String get settingsNotificationsSection => '通知设定';

  @override
  String get settingsTrackingNotifications => '包裹跟踪通知';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsSystemLanguageOption => '系统';

  @override
  String parcelTrackingLimitedError(Object time) {
    return '操作太频繁。请在 $time 之后尝试';
  }

  @override
  String hoursShortFormat(Object value) {
    return '$value小时';
  }

  @override
  String minutesShortFormat(Object value) {
    return '$value分钟';
  }

  @override
  String secondsShortFormat(Object value) {
    return '$value秒';
  }

  @override
  String get settingsTrackingSection => '跟踪设置';

  @override
  String get settingsTrackingFreqLimit => '跟踪频率限制';

  @override
  String settingsTrackingFreqLimitSummary(Object time) {
    return '不超过每 $time';
  }

  @override
  String get settingsTrackingFreqFifteenMin => '15分钟';

  @override
  String get settingsTrackingFreqThirtyMin => '30分钟';

  @override
  String get settingsTrackingFreqFortyFiveMin => '45分钟';

  @override
  String get settingsTrackingFreqOneHour => '1小时';

  @override
  String get settingsTrackingFreqUnlimited => '无限';

  @override
  String get settingsAutoTracking => '自动跟踪';

  @override
  String get settingsAutoTrackingFreq => '跟踪频率';

  @override
  String get settingsAutoTrackingFreqDescr =>
      '指定跟踪最短间隔。此时间间隔并不准确，可能因系统限制而延长 (无网络连接、省电模式等)';

  @override
  String get settingsAutoTrackingFreqSixHours => '每6小时';

  @override
  String get settingsAutoTrackingFreqTwelveHours => '每12小时';

  @override
  String get settingsAutoTrackingFreqOneDay => '每天';

  @override
  String get settingsAutoTrackingFreqThreeDays => '每三天';

  @override
  String get settingsAutoTrackingFreqOneWeek => '每周';

  @override
  String get settingsTrackingHistorySize => '跟踪历史大小';

  @override
  String get settingsTrackingHistorySizeDescr => '指定包裹跟踪历史记录中的最大保留条目数';

  @override
  String get settingsTrackingErrorNotifications => '跟踪错误通知';

  @override
  String get trackingErrorNotifyChannelTitle => '跟踪错误';

  @override
  String get trackingErrorNotifyChannelDescription => '包裹跟踪错误通知';

  @override
  String get trackingError => '跟踪错误';

  @override
  String get trackingFailed => '跟踪失败';

  @override
  String get trackingErrorOccured => '跟踪以下包裹时出现错误:';

  @override
  String parcelsTrackingFailedInboxStyleLine(Object parcelName) {
    return '• $parcelName';
  }

  @override
  String get crashDialogSummary => '应用程序发生错误。您可以向开发人员报告';

  @override
  String get crashDialogExtraInfo => '在此添加额外信息和评论:';

  @override
  String get crashDialogReport => '报告';

  @override
  String get crashDialogMoreDetails => '更多详情';

  @override
  String crashDialogNoEmailApp(Object email, Object pageUrl) {
    return '未找到电子邮件应用程序。您可以手动复制错误信息并发送到 $email\n或在此项目的网页上发送 $pageUrl';
  }

  @override
  String get defaultNotifyChannelTitle => '默认';

  @override
  String get defaultNotifyChannelDescription => '所有不适合其他类别的通知';

  @override
  String get aboutApp => '关于';

  @override
  String get changelog => '更新日志';

  @override
  String get settingsDesktopSection => '桌面';

  @override
  String get settingsSystemTrayIcon => '系统托盘图标';

  @override
  String get openDetails => '打开详情';

  @override
  String get shareFailed => '无法分享';

  @override
  String get linuxTrayIconWarning =>
      '某些环境可能默认不支持系统托盘。例如，要在 GNOME 中运行，请安装此扩展（或类似扩展）: https://extensions.gnome.org/extension/615/appindicator-support/';

  @override
  String get previousPage => '上一页';

  @override
  String get nextPage => '下一页';

  @override
  String get upsAddAccountDescription =>
      '您需要输入 UPS 账户授权信息。您可以在此注册: https://www.ups.com/doapp/signup?loc=en_US\n要获取访问密钥，请访问链接并按说明操作: https://www.ups.com/upsdeveloperkit/manageaccesskeys?loc=en_US';

  @override
  String get ups => '联合包裹服务';

  @override
  String get russianPost => '俄罗斯邮政';

  @override
  String get russianPostAddAccountDescription =>
      '1. 在俄罗斯邮政网站上注册: https://www.pochta.ru/\n2. 进入访问设置，启用跟踪 API 并同意服务条款: https://tracking.pochta.ru/access-settings\n3. 在访问设置中，复制登录名（自动生成）。密码将发送到注册时提供的电子邮件中。';

  @override
  String get usps => '美国邮政';

  @override
  String get uspsAddAccountDescription =>
      '1. 在 USPS 网络工具 API 门户网站上注册: https://www.usps.com/business/web-tools-apis/web-tools-registration.htm\n2. 在注册时，遇到 \"How will you be using the USPS Web Tools?\" 请回答 \"Exclusively on my Web site\".\n3. 注册后，授权数据将发送到指定的电子邮箱。 复制 \"Username\" 和 \"Company\" (是在注册字符串时指定的。';

  @override
  String get postNord => '北欧邮政';

  @override
  String get apiKey => 'API 密钥';

  @override
  String get postNordAddAccountDescription =>
      '需要 API 密钥才能授权。可以通过多种方式获取。选择现有的（例如，在 https://www.npmjs.com/ 上找到名为 «postnord» 并在源代码中搜索），或者注册（以法人名义）:\n\n1. 注册成为客户或合作伙伴 https://developer.postnord.com/\n2. 从此页面复制 API 密钥: https://atdeveloper.postnord.com/admin/applications. 如果没有密钥，请单击«Create new application»按钮。';

  @override
  String get barcodeGeneratorShowQrCode => '显示二维码';

  @override
  String get barcodeGeneratorShowBarcodeCode => '显示条形码';

  @override
  String get shipmentCustomerType => '装运类型';
}
