// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i58;

import 'core/app_database_isolate_binder.dart' as _i57;
import 'core/crash_report/crash_report_builder.dart' as _i24;
import 'core/crash_report/crash_report_id_generator.dart' as _i4;
import 'core/crash_report/crash_report_manager.dart' as _i47;
import 'core/crash_report/crash_report_sender.dart' as _i25;
import 'core/date_time_provider.dart' as _i5;
import 'core/model/fetcher.dart' as _i29;
import 'core/model/http/http_client.dart' as _i7;
import 'core/model/http/http_client_factory.dart' as _i8;
import 'core/model/parser_factory.dart' as _i10;
import 'core/model/request_factory.dart' as _i12;
import 'core/model/tracking_service.dart' as _i42;
import 'core/notification_manager.dart' as _i41;
import 'core/platform_info.dart' as _i11;
import 'core/settings/settings.dart' as _i31;
import 'core/storage/database.dart' as _i15;
import 'core/storage/service_auth_storage.dart' as _i14;
import 'core/storage/service_repository.dart' as _i21;
import 'core/storage/shipment_repository.dart' as _i33;
import 'core/storage/track_number_repository.dart' as _i28;
import 'core/storage/tracking_repository.dart' as _i34;
import 'core/storage/work_manager_repository.dart' as _i59;
import 'core/tracking_id_generator.dart' as _i16;
import 'core/tracking_limiter.dart' as _i39;
import 'core/tracking_scheduler.dart' as _i53;
import 'core/transaction_id_generator.dart' as _i17;
import 'core/work_manager/registered_workers.dart' as _i18;
import 'core/work_manager/work_manager.dart' as _i60;
import 'core/worker/tracking_all_worker.dart' as _i49;
import 'core/worker/tracking_notify_task.dart' as _i40;
import 'core/worker/tracking_periodic_worker.dart' as _i50;
import 'core/worker/tracking_task.dart' as _i43;
import 'core/worker/tracking_worker.dart' as _i44;
import 'core/worker/worker_manager.dart' as _i51;
import 'platform/system_tray.dart' as _i38;
import 'ui/about/about_cubit.dart' as _i19;
import 'ui/accounts/accounts_actions_cubit.dart' as _i20;
import 'ui/accounts/accounts_cubit.dart' as _i22;
import 'ui/add_account/add_account_cubit.dart' as _i23;
import 'ui/add_account/service_list_cubit.dart' as _i37;
import 'ui/add_parcels/add_parcels_cubit.dart' as _i52;
import 'ui/app_cubit.dart' as _i46;
import 'ui/cubit/error_report_cubit.dart' as _i48;
import 'ui/edit_account/edit_account_cubit.dart' as _i26;
import 'ui/edit_account/service_info_cubit.dart' as _i36;
import 'ui/parcel_details/details_actions_cubit.dart' as _i55;
import 'ui/parcel_details/edit_parcel_cubit.dart' as _i27;
import 'ui/parcel_details/parcel_details_cubit.dart' as _i32;
import 'ui/parcel_details/parcel_error_banner_cubit.dart' as _i9;
import 'ui/parcels/first_start_cubit.dart' as _i30;
import 'ui/parcels/parcels_actions_cubit.dart' as _i56;
import 'ui/parcels/parcels_cubit.dart' as _i35;
import 'ui/parcels/selectable_parcels_cubit.dart' as _i13;
import 'ui/settings/page/appearance_cubit.dart' as _i45;
import 'ui/settings/page/behavior_cubit.dart' as _i54;

const String _test = 'test';
const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appDatabaseModule = _$AppDatabaseModule();
  final clientModule = _$ClientModule();
  final flutterSecureStorageModule = _$FlutterSecureStorageModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.factory<_i3.Client>(() => clientModule.client);
  gh.factory<_i4.CrashReportIdGenerator>(
      () => _i4.CrashReportIdGeneratorImpl());
  gh.factory<_i5.DateTimeProvider>(() => _i5.DateTimeProviderImpl());
  gh.factory<_i6.FlutterSecureStorage>(
      () => flutterSecureStorageModule.testStorage,
      registerFor: {_test});
  gh.factory<_i6.FlutterSecureStorage>(() => flutterSecureStorageModule.storage,
      registerFor: {_prod, _dev});
  gh.factory<_i7.HttpClient>(() => _i7.HttpClientImpl(get<_i3.Client>()));
  gh.factory<_i8.HttpClientFactory>(
      () => _i8.HttpClientFactoryImpl(get<_i3.Client>()));
  gh.factory<_i9.ParcelErrorBannerCubit>(() => _i9.ParcelErrorBannerCubit());
  gh.factory<_i10.ParserFactory>(
      () => _i10.ParserFactoryImpl(get<_i5.DateTimeProvider>()));
  gh.factory<_i11.PlatformInfo>(() => _i11.PlatformInfoImpl());
  gh.factory<_i12.RequestFactory>(() => _i12.RequestFactoryImpl(),
      registerFor: {_prod});
  gh.factory<_i12.RequestFactory>(() => _i12.DevRequestFactoryImpl(),
      registerFor: {_dev, _test});
  gh.factory<_i13.SelectableParcelsCubit>(() => _i13.SelectableParcelsCubit());
  gh.factoryAsync<_i14.ServiceAuthStorage>(() async =>
      _i14.ServiceAuthStorageImpl(await get.getAsync<_i15.AppDatabase>(),
          get<_i6.FlutterSecureStorage>(), get<_i11.PlatformInfo>()));
  gh.factory<_i16.TrackingIdGenerator>(() => _i16.TrackingIdGeneratorImpl());
  gh.factory<_i17.TransactionIdGenerator>(
      () => _i17.TransactionIdGeneratorImpl());
  gh.factory<_i18.WorkersProvider>(() => _i18.WorkersProviderImpl());
  gh.factory<_i19.AboutCubit>(() => _i19.AboutCubit(get<_i11.PlatformInfo>()));
  gh.factoryAsync<_i20.AccountsActionsCubit>(() async =>
      _i20.AccountsActionsCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factoryAsync<_i22.AccountsCubit>(() async =>
      _i22.AccountsCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factoryAsync<_i23.AddAccountCubit>(() async =>
      _i23.AddAccountCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factory<_i24.CrashReportBuilder>(
      () => _i24.ProdCrashReportBuilder(
          get<_i11.PlatformInfo>(), get<_i4.CrashReportIdGenerator>()),
      registerFor: {_prod});
  gh.factory<_i24.CrashReportBuilder>(
      () => _i24.DevCrashReportBuilder(
          get<_i11.PlatformInfo>(), get<_i4.CrashReportIdGenerator>()),
      registerFor: {_dev});
  gh.factory<_i24.CrashReportBuilder>(
      () => _i24.TestCrashReportBuilder(
          get<_i11.PlatformInfo>(), get<_i4.CrashReportIdGenerator>()),
      registerFor: {_test});
  gh.factory<_i25.CrashReportSender>(
      () => _i25.CrashReportSenderImpl(get<_i11.PlatformInfo>()));
  gh.factoryAsync<_i26.EditAccountCubit>(() async =>
      _i26.EditAccountCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factoryAsync<_i27.EditParcelCubit>(() async =>
      _i27.EditParcelCubit(await get.getAsync<_i28.TrackNumberRepository>()));
  gh.factory<_i29.Fetcher>(() => _i29.FetcherImpl(
      get<_i8.HttpClientFactory>(), get<_i5.DateTimeProvider>()));
  gh.factoryAsync<_i30.FirstStartCubit>(() async => _i30.FirstStartCubit(
      await get.getAsync<_i21.ServiceRepository>(),
      await get.getAsync<_i31.AppSettings>()));
  gh.factoryAsync<_i32.ParcelDetailsCubit>(() async => _i32.ParcelDetailsCubit(
      await get.getAsync<_i28.TrackNumberRepository>(),
      await get.getAsync<_i33.ShipmentRepository>(),
      await get.getAsync<_i34.TrackingRepository>()));
  gh.factoryAsync<_i35.ParcelsCubit>(() async => _i35.ParcelsCubit(
      await get.getAsync<_i28.TrackNumberRepository>(),
      await get.getAsync<_i34.TrackingRepository>(),
      await get.getAsync<_i33.ShipmentRepository>(),
      await get.getAsync<_i31.AppSettings>()));
  gh.factoryAsync<_i36.ServiceInfoCubit>(() async =>
      _i36.ServiceInfoCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factoryAsync<_i37.ServiceListCubit>(() async =>
      _i37.ServiceListCubit(await get.getAsync<_i21.ServiceRepository>()));
  gh.factoryAsync<_i38.SystemTray>(() async => _i38.SystemTray(
      get<_i11.PlatformInfo>(), await get.getAsync<_i31.AppSettings>()));
  gh.factoryAsync<_i39.TrackingLimiter>(() async => _i39.TrackingLimiterImpl(
      await get.getAsync<_i31.AppSettings>(),
      await get.getAsync<_i34.TrackingRepository>(),
      get<_i5.DateTimeProvider>()));
  gh.factoryAsync<_i40.TrackingNotifyTask>(() async => _i40.TrackingNotifyTask(
      await get.getAsync<_i41.NotificationManager>(),
      await get.getAsync<_i28.TrackNumberRepository>(),
      await get.getAsync<_i31.AppSettings>()));
  gh.factory<_i42.TrackingService>(() => _i42.TrackingServiceImpl(
      get<_i12.RequestFactory>(),
      get<_i29.Fetcher>(),
      get<_i10.ParserFactory>()));
  gh.factoryAsync<_i43.TrackingTask>(() async => _i43.TrackingTask(
      trackingService: get<_i42.TrackingService>(),
      serviceRepo: await get.getAsync<_i21.ServiceRepository>(),
      shipmentRepo: await get.getAsync<_i33.ShipmentRepository>(),
      transactionIdGenerator: get<_i17.TransactionIdGenerator>(),
      trackingIdGenerator: get<_i16.TrackingIdGenerator>(),
      dateTimeProvider: get<_i5.DateTimeProvider>()));
  gh.factoryAsync<_i44.TrackingWorker>(() async => _i44.TrackingWorker(
      trackingTask: await get.getAsync<_i43.TrackingTask>(),
      trackNumberRepo: await get.getAsync<_i28.TrackNumberRepository>(),
      shipmentRepo: await get.getAsync<_i33.ShipmentRepository>(),
      trackingRepo: await get.getAsync<_i34.TrackingRepository>(),
      notifyTask: await get.getAsync<_i40.TrackingNotifyTask>(),
      platformInfo: get<_i11.PlatformInfo>(),
      pref: await get.getAsync<_i31.AppSettings>(),
      trackingLimiter: await get.getAsync<_i39.TrackingLimiter>()));
  gh.factoryAsync<_i45.AppearanceSettingsCubit>(() async =>
      _i45.AppearanceSettingsCubit(
          await get.getAsync<_i31.AppSettings>(),
          await get.getAsync<_i46.AppCubit>(),
          await get.getAsync<_i38.SystemTray>()));
  gh.factory<_i47.CrashReportManager>(() => _i47.CrashReportManagerImpl(
      get<_i24.CrashReportBuilder>(), get<_i25.CrashReportSender>()));
  gh.factory<_i48.ErrorReportCubit>(
      () => _i48.ErrorReportCubit(get<_i47.CrashReportManager>()));
  gh.factoryAsync<_i49.TrackingAllWorker>(() async => _i49.TrackingAllWorker(
      await get.getAsync<_i44.TrackingWorker>(),
      await get.getAsync<_i28.TrackNumberRepository>(),
      get<_i11.PlatformInfo>(),
      await get.getAsync<_i31.AppSettings>()));
  gh.factoryAsync<_i50.TrackingPeriodicWorker>(() async =>
      _i50.TrackingPeriodicWorker(
          await get.getAsync<_i44.TrackingWorker>(),
          await get.getAsync<_i51.WorkerManager>(),
          await get.getAsync<_i34.TrackingRepository>(),
          await get.getAsync<_i28.TrackNumberRepository>(),
          await get.getAsync<_i31.AppSettings>(),
          get<_i11.PlatformInfo>(),
          get<_i5.DateTimeProvider>()));
  gh.factoryAsync<_i52.AddParcelsCubit>(() async => _i52.AddParcelsCubit(
      await get.getAsync<_i28.TrackNumberRepository>(),
      await get.getAsync<_i53.TrackingScheduler>(),
      get<_i5.DateTimeProvider>()));
  gh.factoryAsync<_i54.BehaviorSettingsCubit>(() async =>
      _i54.BehaviorSettingsCubit(await get.getAsync<_i31.AppSettings>(),
          await get.getAsync<_i53.TrackingScheduler>()));
  gh.factoryAsync<_i55.DetailsActionsCubit>(() async =>
      _i55.DetailsActionsCubit(
          await get.getAsync<_i28.TrackNumberRepository>(),
          await get.getAsync<_i34.TrackingRepository>(),
          await get.getAsync<_i53.TrackingScheduler>()));
  gh.factoryAsync<_i56.ParcelsActionsCubit>(() async =>
      _i56.ParcelsActionsCubit(
          await get.getAsync<_i28.TrackNumberRepository>(),
          await get.getAsync<_i34.TrackingRepository>(),
          await get.getAsync<_i53.TrackingScheduler>()));
  gh.singletonAsync<_i15.AppDatabase>(() => appDatabaseModule.inMemoryDb,
      registerFor: {_test});
  gh.singletonAsync<_i15.AppDatabase>(() => appDatabaseModule.db,
      registerFor: {_prod, _dev});
  gh.singletonAsync<_i57.AppDatabaseIsolateBinder>(
      () async =>
          _i57.AppDatabaseIsolateBinder(await get.getAsync<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i21.ServiceRepository>(
      () async => _i21.ServiceRepositoryImpl(
          await get.getAsync<_i15.AppDatabase>(),
          await get.getAsync<_i14.ServiceAuthStorage>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i58.SharedPreferences>(() => sharedPreferencesModule.pref,
      registerFor: {_prod, _dev});
  gh.singletonAsync<_i58.SharedPreferences>(
      () => sharedPreferencesModule.testPref,
      registerFor: {_test});
  gh.singletonAsync<_i33.ShipmentRepository>(
      () async =>
          _i33.ShipmentRepositoryImpl(await get.getAsync<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i28.TrackNumberRepository>(
      () async => _i28.TrackNumberRepositoryImpl(
          await get.getAsync<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i34.TrackingRepository>(
      () async =>
          _i34.TrackingRepositoryImpl(await get.getAsync<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i59.WorkManagerRepository>(
      () async => _i59.WorkManagerRepositoryImpl(
          await get.getAsync<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i31.AppSettings>(
      () async =>
          _i31.AppSettingsImpl(await get.getAsync<_i58.SharedPreferences>()),
      dependsOn: [_i58.SharedPreferences]);
  gh.singletonAsync<_i41.NotificationManager>(
      () async => _i41.NotificationManagerImpl(
          get<_i11.PlatformInfo>(), await get.getAsync<_i31.AppSettings>()),
      dependsOn: [_i31.AppSettings]);
  gh.singletonAsync<_i60.WorkManager>(
      () async => _i60.DebugWorkManagerImpl(
          await get.getAsync<_i59.WorkManagerRepository>(),
          get<_i11.PlatformInfo>(),
          get<_i5.DateTimeProvider>(),
          get<_i18.WorkersProvider>()),
      dependsOn: [_i59.WorkManagerRepository],
      registerFor: {_dev, _test});
  gh.singletonAsync<_i60.WorkManager>(
      () async => _i60.WorkManagerImpl(
          await get.getAsync<_i59.WorkManagerRepository>(),
          get<_i11.PlatformInfo>(),
          get<_i18.WorkersProvider>(),
          get<_i5.DateTimeProvider>()),
      dependsOn: [_i59.WorkManagerRepository],
      registerFor: {_prod});
  gh.singletonAsync<_i51.WorkerManager>(
      () async =>
          _i51.WorkerManagerImpl(await get.getAsync<_i60.WorkManager>()),
      dependsOn: [_i60.WorkManager]);
  gh.singletonAsync<_i46.AppCubit>(
      () async => _i46.AppCubit(await get.getAsync<_i31.AppSettings>()),
      dependsOn: [_i31.AppSettings]);
  gh.singletonAsync<_i53.TrackingScheduler>(
      () async => _i53.TrackingSchedulerImpl(
          await get.getAsync<_i51.WorkerManager>(),
          await get.getAsync<_i28.TrackNumberRepository>(),
          await get.getAsync<_i39.TrackingLimiter>(),
          await get.getAsync<_i31.AppSettings>()),
      dependsOn: [_i51.WorkerManager]);
  return get;
}

class _$AppDatabaseModule extends _i15.AppDatabaseModule {}

class _$ClientModule extends _i7.ClientModule {}

class _$FlutterSecureStorageModule extends _i14.FlutterSecureStorageModule {}

class _$SharedPreferencesModule extends _i31.SharedPreferencesModule {}
