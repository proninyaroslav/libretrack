// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import 'core/app_database_isolate_binder.dart' as _i4;
import 'core/crash_report/crash_report_builder.dart' as _i31;
import 'core/crash_report/crash_report_id_generator.dart' as _i6;
import 'core/crash_report/crash_report_manager.dart' as _i52;
import 'core/crash_report/crash_report_sender.dart' as _i32;
import 'core/date_time_provider.dart' as _i7;
import 'core/model/fetcher.dart' as _i35;
import 'core/model/http/http_client.dart' as _i9;
import 'core/model/http/http_client_factory.dart' as _i10;
import 'core/model/parser_factory.dart' as _i12;
import 'core/model/request_factory.dart' as _i14;
import 'core/model/tracking_service.dart' as _i45;
import 'core/notification_manager.dart' as _i37;
import 'core/platform_info.dart' as _i13;
import 'core/settings/settings.dart' as _i30;
import 'core/storage/database.dart' as _i3;
import 'core/storage/service_auth_storage.dart' as _i16;
import 'core/storage/service_repository.dart' as _i17;
import 'core/storage/shipment_repository.dart' as _i19;
import 'core/storage/track_number_repository.dart' as _i20;
import 'core/storage/tracking_repository.dart' as _i22;
import 'core/storage/work_manager_repository.dart' as _i24;
import 'core/tracking_id_generator.dart' as _i21;
import 'core/tracking_limiter.dart' as _i43;
import 'core/tracking_scheduler.dart' as _i56;
import 'core/transaction_id_generator.dart' as _i23;
import 'core/work_manager/registered_workers.dart' as _i25;
import 'core/work_manager/work_manager.dart' as _i48;
import 'core/worker/tracking_all_worker.dart' as _i54;
import 'core/worker/tracking_notify_task.dart' as _i44;
import 'core/worker/tracking_periodic_worker.dart' as _i55;
import 'core/worker/tracking_task.dart' as _i46;
import 'core/worker/tracking_worker.dart' as _i47;
import 'core/worker/worker_manager.dart' as _i49;
import 'platform/system_tray.dart' as _i42;
import 'ui/about/about_cubit.dart' as _i26;
import 'ui/accounts/accounts_actions_cubit.dart' as _i27;
import 'ui/accounts/accounts_cubit.dart' as _i28;
import 'ui/add_account/add_account_cubit.dart' as _i29;
import 'ui/add_account/service_list_cubit.dart' as _i41;
import 'ui/add_parcels/add_parcels_cubit.dart' as _i57;
import 'ui/app_cubit.dart' as _i50;
import 'ui/cubit/error_report_cubit.dart' as _i53;
import 'ui/edit_account/edit_account_cubit.dart' as _i33;
import 'ui/edit_account/service_info_cubit.dart' as _i40;
import 'ui/parcel_details/details_actions_cubit.dart' as _i59;
import 'ui/parcel_details/edit_parcel_cubit.dart' as _i34;
import 'ui/parcel_details/parcel_details_cubit.dart' as _i38;
import 'ui/parcel_details/parcel_error_banner_cubit.dart' as _i11;
import 'ui/parcels/first_start_cubit.dart' as _i36;
import 'ui/parcels/parcels_actions_cubit.dart' as _i60;
import 'ui/parcels/parcels_cubit.dart' as _i39;
import 'ui/parcels/selectable_parcels_cubit.dart' as _i15;
import 'ui/settings/page/appearance_cubit.dart' as _i51;
import 'ui/settings/page/behavior_cubit.dart' as _i58;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDatabaseModule = _$AppDatabaseModule();
  final clientModule = _$ClientModule();
  final flutterSecureStorageModule = _$FlutterSecureStorageModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  await gh.singletonAsync<_i3.AppDatabase>(() => appDatabaseModule.inMemoryDb,
      registerFor: {_test}, preResolve: true);
  await gh.singletonAsync<_i3.AppDatabase>(() => appDatabaseModule.db,
      registerFor: {_prod, _dev}, preResolve: true);
  gh.singleton<_i4.AppDatabaseIsolateBinder>(
      _i4.AppDatabaseIsolateBinder(get<_i3.AppDatabase>()));
  gh.factory<_i5.Client>(() => clientModule.client);
  gh.factory<_i6.CrashReportIdGenerator>(
      () => _i6.CrashReportIdGeneratorImpl());
  gh.factory<_i7.DateTimeProvider>(() => _i7.DateTimeProviderImpl());
  gh.factory<_i8.FlutterSecureStorage>(
      () => flutterSecureStorageModule.testStorage,
      registerFor: {_test});
  gh.factory<_i8.FlutterSecureStorage>(() => flutterSecureStorageModule.storage,
      registerFor: {_prod, _dev});
  gh.factory<_i9.HttpClient>(() => _i9.HttpClientImpl(get<_i5.Client>()));
  gh.factory<_i10.HttpClientFactory>(
      () => _i10.HttpClientFactoryImpl(get<_i5.Client>()));
  gh.factory<_i11.ParcelErrorBannerCubit>(() => _i11.ParcelErrorBannerCubit());
  gh.factory<_i12.ParserFactory>(
      () => _i12.ParserFactoryImpl(get<_i7.DateTimeProvider>()));
  gh.factory<_i13.PlatformInfo>(() => _i13.PlatformInfoImpl());
  gh.factory<_i14.RequestFactory>(() => _i14.RequestFactoryImpl(),
      registerFor: {_prod});
  gh.factory<_i14.RequestFactory>(() => _i14.DevRequestFactoryImpl(),
      registerFor: {_dev, _test});
  gh.factory<_i15.SelectableParcelsCubit>(() => _i15.SelectableParcelsCubit());
  gh.factory<_i16.ServiceAuthStorage>(() => _i16.ServiceAuthStorageImpl(
      get<_i3.AppDatabase>(),
      get<_i8.FlutterSecureStorage>(),
      get<_i13.PlatformInfo>()));
  gh.singleton<_i17.ServiceRepository>(_i17.ServiceRepositoryImpl(
      get<_i3.AppDatabase>(), get<_i16.ServiceAuthStorage>()));
  await gh.singletonAsync<_i18.SharedPreferences>(
      () => sharedPreferencesModule.pref,
      registerFor: {_prod, _dev},
      preResolve: true);
  await gh.singletonAsync<_i18.SharedPreferences>(
      () => sharedPreferencesModule.testPref,
      registerFor: {_test},
      preResolve: true);
  gh.singleton<_i19.ShipmentRepository>(
      _i19.ShipmentRepositoryImpl(get<_i3.AppDatabase>()));
  gh.singleton<_i20.TrackNumberRepository>(
      _i20.TrackNumberRepositoryImpl(get<_i3.AppDatabase>()));
  gh.factory<_i21.TrackingIdGenerator>(() => _i21.TrackingIdGeneratorImpl());
  gh.singleton<_i22.TrackingRepository>(
      _i22.TrackingRepositoryImpl(get<_i3.AppDatabase>()));
  gh.factory<_i23.TransactionIdGenerator>(
      () => _i23.TransactionIdGeneratorImpl());
  gh.singleton<_i24.WorkManagerRepository>(
      _i24.WorkManagerRepositoryImpl(get<_i3.AppDatabase>()));
  gh.factory<_i25.WorkersProvider>(() => _i25.WorkersProviderImpl());
  gh.factory<_i26.AboutCubit>(() => _i26.AboutCubit(get<_i13.PlatformInfo>()));
  gh.factory<_i27.AccountsActionsCubit>(
      () => _i27.AccountsActionsCubit(get<_i17.ServiceRepository>()));
  gh.factory<_i28.AccountsCubit>(
      () => _i28.AccountsCubit(get<_i17.ServiceRepository>()));
  gh.factory<_i29.AddAccountCubit>(
      () => _i29.AddAccountCubit(get<_i17.ServiceRepository>()));
  gh.singleton<_i30.AppSettings>(
      _i30.AppSettingsImpl(get<_i18.SharedPreferences>()));
  gh.factory<_i31.CrashReportBuilder>(
      () => _i31.ProdCrashReportBuilder(
          get<_i13.PlatformInfo>(), get<_i6.CrashReportIdGenerator>()),
      registerFor: {_prod});
  gh.factory<_i31.CrashReportBuilder>(
      () => _i31.DevCrashReportBuilder(
          get<_i13.PlatformInfo>(), get<_i6.CrashReportIdGenerator>()),
      registerFor: {_dev});
  gh.factory<_i31.CrashReportBuilder>(
      () => _i31.TestCrashReportBuilder(
          get<_i13.PlatformInfo>(), get<_i6.CrashReportIdGenerator>()),
      registerFor: {_test});
  gh.factory<_i32.CrashReportSender>(
      () => _i32.CrashReportSenderImpl(get<_i13.PlatformInfo>()));
  gh.factory<_i33.EditAccountCubit>(
      () => _i33.EditAccountCubit(get<_i17.ServiceRepository>()));
  gh.factory<_i34.EditParcelCubit>(
      () => _i34.EditParcelCubit(get<_i20.TrackNumberRepository>()));
  gh.factory<_i35.Fetcher>(() => _i35.FetcherImpl(
      get<_i10.HttpClientFactory>(), get<_i7.DateTimeProvider>()));
  gh.factory<_i36.FirstStartCubit>(() => _i36.FirstStartCubit(
      get<_i17.ServiceRepository>(), get<_i30.AppSettings>()));
  gh.singleton<_i37.NotificationManager>(_i37.NotificationManagerImpl(
      get<_i13.PlatformInfo>(), get<_i30.AppSettings>()));
  gh.factory<_i38.ParcelDetailsCubit>(() => _i38.ParcelDetailsCubit(
      get<_i20.TrackNumberRepository>(),
      get<_i19.ShipmentRepository>(),
      get<_i22.TrackingRepository>()));
  gh.factory<_i39.ParcelsCubit>(() => _i39.ParcelsCubit(
      get<_i20.TrackNumberRepository>(),
      get<_i22.TrackingRepository>(),
      get<_i19.ShipmentRepository>(),
      get<_i30.AppSettings>()));
  gh.factory<_i40.ServiceInfoCubit>(
      () => _i40.ServiceInfoCubit(get<_i17.ServiceRepository>()));
  gh.factory<_i41.ServiceListCubit>(
      () => _i41.ServiceListCubit(get<_i17.ServiceRepository>()));
  gh.factory<_i42.SystemTray>(
      () => _i42.SystemTray(get<_i13.PlatformInfo>(), get<_i30.AppSettings>()));
  gh.factory<_i43.TrackingLimiter>(() => _i43.TrackingLimiterImpl(
      get<_i30.AppSettings>(),
      get<_i22.TrackingRepository>(),
      get<_i7.DateTimeProvider>()));
  gh.factory<_i44.TrackingNotifyTask>(() => _i44.TrackingNotifyTask(
      get<_i37.NotificationManager>(),
      get<_i20.TrackNumberRepository>(),
      get<_i30.AppSettings>()));
  gh.factory<_i45.TrackingService>(() => _i45.TrackingServiceImpl(
      get<_i14.RequestFactory>(),
      get<_i35.Fetcher>(),
      get<_i12.ParserFactory>()));
  gh.factory<_i46.TrackingTask>(() => _i46.TrackingTask(
      trackingService: get<_i45.TrackingService>(),
      serviceRepo: get<_i17.ServiceRepository>(),
      shipmentRepo: get<_i19.ShipmentRepository>(),
      transactionIdGenerator: get<_i23.TransactionIdGenerator>(),
      trackingIdGenerator: get<_i21.TrackingIdGenerator>(),
      dateTimeProvider: get<_i7.DateTimeProvider>()));
  gh.factory<_i47.TrackingWorker>(() => _i47.TrackingWorker(
      trackingTask: get<_i46.TrackingTask>(),
      trackNumberRepo: get<_i20.TrackNumberRepository>(),
      shipmentRepo: get<_i19.ShipmentRepository>(),
      trackingRepo: get<_i22.TrackingRepository>(),
      notifyTask: get<_i44.TrackingNotifyTask>(),
      platformInfo: get<_i13.PlatformInfo>(),
      pref: get<_i30.AppSettings>(),
      trackingLimiter: get<_i43.TrackingLimiter>()));
  gh.singleton<_i48.WorkManager>(
      _i48.DebugWorkManagerImpl(
          get<_i24.WorkManagerRepository>(),
          get<_i13.PlatformInfo>(),
          get<_i7.DateTimeProvider>(),
          get<_i25.WorkersProvider>()),
      registerFor: {_dev, _test});
  gh.singleton<_i48.WorkManager>(
      _i48.WorkManagerImpl(
          get<_i24.WorkManagerRepository>(),
          get<_i13.PlatformInfo>(),
          get<_i25.WorkersProvider>(),
          get<_i7.DateTimeProvider>()),
      registerFor: {_prod});
  gh.singleton<_i49.WorkerManager>(
      _i49.WorkerManagerImpl(get<_i48.WorkManager>()));
  gh.singleton<_i50.AppCubit>(_i50.AppCubit(get<_i30.AppSettings>()));
  gh.factory<_i51.AppearanceSettingsCubit>(() => _i51.AppearanceSettingsCubit(
      get<_i30.AppSettings>(), get<_i50.AppCubit>(), get<_i42.SystemTray>()));
  gh.factory<_i52.CrashReportManager>(() => _i52.CrashReportManagerImpl(
      get<_i31.CrashReportBuilder>(), get<_i32.CrashReportSender>()));
  gh.factory<_i53.ErrorReportCubit>(
      () => _i53.ErrorReportCubit(get<_i52.CrashReportManager>()));
  gh.factory<_i54.TrackingAllWorker>(() => _i54.TrackingAllWorker(
      get<_i47.TrackingWorker>(),
      get<_i20.TrackNumberRepository>(),
      get<_i13.PlatformInfo>(),
      get<_i30.AppSettings>()));
  gh.factory<_i55.TrackingPeriodicWorker>(() => _i55.TrackingPeriodicWorker(
      get<_i47.TrackingWorker>(),
      get<_i49.WorkerManager>(),
      get<_i22.TrackingRepository>(),
      get<_i20.TrackNumberRepository>(),
      get<_i30.AppSettings>(),
      get<_i13.PlatformInfo>(),
      get<_i7.DateTimeProvider>()));
  gh.singleton<_i56.TrackingScheduler>(_i56.TrackingSchedulerImpl(
      get<_i49.WorkerManager>(),
      get<_i20.TrackNumberRepository>(),
      get<_i43.TrackingLimiter>(),
      get<_i30.AppSettings>()));
  gh.factory<_i57.AddParcelsCubit>(() => _i57.AddParcelsCubit(
      get<_i20.TrackNumberRepository>(),
      get<_i56.TrackingScheduler>(),
      get<_i7.DateTimeProvider>()));
  gh.factory<_i58.BehaviorSettingsCubit>(() => _i58.BehaviorSettingsCubit(
      get<_i30.AppSettings>(), get<_i56.TrackingScheduler>()));
  gh.factory<_i59.DetailsActionsCubit>(() => _i59.DetailsActionsCubit(
      get<_i20.TrackNumberRepository>(),
      get<_i22.TrackingRepository>(),
      get<_i56.TrackingScheduler>()));
  gh.factory<_i60.ParcelsActionsCubit>(() => _i60.ParcelsActionsCubit(
      get<_i20.TrackNumberRepository>(),
      get<_i22.TrackingRepository>(),
      get<_i56.TrackingScheduler>()));
  return get;
}

class _$AppDatabaseModule extends _i3.AppDatabaseModule {}

class _$ClientModule extends _i9.ClientModule {}

class _$FlutterSecureStorageModule extends _i16.FlutterSecureStorageModule {}

class _$SharedPreferencesModule extends _i30.SharedPreferencesModule {}
