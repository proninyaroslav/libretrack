// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i57;

import 'core/app_database_isolate_binder.dart' as _i56;
import 'core/crash_report/crash_report_builder.dart' as _i24;
import 'core/crash_report/crash_report_id_generator.dart' as _i4;
import 'core/crash_report/crash_report_manager.dart' as _i46;
import 'core/crash_report/crash_report_sender.dart' as _i25;
import 'core/date_time_provider.dart' as _i5;
import 'core/model/fetcher.dart' as _i29;
import 'core/model/http/http_client.dart' as _i7;
import 'core/model/http/http_client_factory.dart' as _i8;
import 'core/model/parser_factory.dart' as _i10;
import 'core/model/request_factory.dart' as _i12;
import 'core/model/tracking_service.dart' as _i41;
import 'core/notification_manager.dart' as _i40;
import 'core/platform_info.dart' as _i11;
import 'core/settings/settings.dart' as _i31;
import 'core/storage/database.dart' as _i15;
import 'core/storage/service_auth_storage.dart' as _i14;
import 'core/storage/service_repository.dart' as _i21;
import 'core/storage/shipment_repository.dart' as _i33;
import 'core/storage/track_number_repository.dart' as _i28;
import 'core/storage/tracking_repository.dart' as _i34;
import 'core/storage/work_manager_repository.dart' as _i58;
import 'core/tracking_id_generator.dart' as _i16;
import 'core/tracking_limiter.dart' as _i38;
import 'core/tracking_scheduler.dart' as _i52;
import 'core/transaction_id_generator.dart' as _i17;
import 'core/work_manager/registered_workers.dart' as _i18;
import 'core/work_manager/work_manager.dart' as _i59;
import 'core/worker/tracking_all_worker.dart' as _i48;
import 'core/worker/tracking_notify_task.dart' as _i39;
import 'core/worker/tracking_periodic_worker.dart' as _i49;
import 'core/worker/tracking_task.dart' as _i42;
import 'core/worker/tracking_worker.dart' as _i43;
import 'core/worker/worker_manager.dart' as _i50;
import 'ui/about/about_cubit.dart' as _i19;
import 'ui/accounts/accounts_actions_cubit.dart' as _i20;
import 'ui/accounts/accounts_cubit.dart' as _i22;
import 'ui/add_account/add_account_cubit.dart' as _i23;
import 'ui/add_account/service_list_cubit.dart' as _i37;
import 'ui/add_parcels/add_parcels_cubit.dart' as _i51;
import 'ui/app_cubit.dart' as _i45;
import 'ui/cubit/error_report_cubit.dart' as _i47;
import 'ui/edit_account/edit_account_cubit.dart' as _i26;
import 'ui/edit_account/service_info_cubit.dart' as _i36;
import 'ui/parcel_details/details_actions_cubit.dart' as _i54;
import 'ui/parcel_details/edit_parcel_cubit.dart' as _i27;
import 'ui/parcel_details/parcel_details_cubit.dart' as _i32;
import 'ui/parcel_details/parcel_error_banner_cubit.dart' as _i9;
import 'ui/parcels/first_start_cubit.dart' as _i30;
import 'ui/parcels/parcels_actions_cubit.dart' as _i55;
import 'ui/parcels/parcels_cubit.dart' as _i35;
import 'ui/parcels/selectable_parcels_cubit.dart' as _i13;
import 'ui/settings/page/appearance_cubit.dart' as _i44;
import 'ui/settings/page/behavior_cubit.dart' as _i53;

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
  gh.factory<_i10.ParserFactory>(() => _i10.ParserFactoryImpl());
  gh.factory<_i11.PlatformInfo>(() => _i11.PlatformInfoImpl());
  gh.factory<_i12.RequestFactory>(() => _i12.RequestFactoryImpl(),
      registerFor: {_prod});
  gh.factory<_i12.RequestFactory>(() => _i12.DevRequestFactoryImpl(),
      registerFor: {_dev, _test});
  gh.factory<_i13.SelectableParcelsCubit>(() => _i13.SelectableParcelsCubit());
  gh.factory<_i14.ServiceAuthStorage>(() => _i14.ServiceAuthStorageImpl(
      get<_i15.AppDatabase>(),
      get<_i6.FlutterSecureStorage>(),
      get<_i11.PlatformInfo>()));
  gh.factory<_i16.TrackingIdGenerator>(() => _i16.TrackingIdGeneratorImpl());
  gh.factory<_i17.TransactionIdGenerator>(
      () => _i17.TransactionIdGeneratorImpl());
  gh.factory<_i18.WorkersProvider>(() => _i18.WorkersProviderImpl());
  gh.factory<_i19.AboutCubit>(() => _i19.AboutCubit(get<_i11.PlatformInfo>()));
  gh.factory<_i20.AccountsActionsCubit>(
      () => _i20.AccountsActionsCubit(get<_i21.ServiceRepository>()));
  gh.factory<_i22.AccountsCubit>(
      () => _i22.AccountsCubit(get<_i21.ServiceRepository>()));
  gh.factory<_i23.AddAccountCubit>(
      () => _i23.AddAccountCubit(get<_i21.ServiceRepository>()));
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
  gh.factory<_i26.EditAccountCubit>(
      () => _i26.EditAccountCubit(get<_i21.ServiceRepository>()));
  gh.factory<_i27.EditParcelCubit>(
      () => _i27.EditParcelCubit(get<_i28.TrackNumberRepository>()));
  gh.factory<_i29.Fetcher>(() => _i29.FetcherImpl(
      get<_i8.HttpClientFactory>(), get<_i5.DateTimeProvider>()));
  gh.factory<_i30.FirstStartCubit>(() => _i30.FirstStartCubit(
      get<_i21.ServiceRepository>(), get<_i31.AppSettings>()));
  gh.factory<_i32.ParcelDetailsCubit>(() => _i32.ParcelDetailsCubit(
      get<_i28.TrackNumberRepository>(),
      get<_i33.ShipmentRepository>(),
      get<_i34.TrackingRepository>()));
  gh.factory<_i35.ParcelsCubit>(() => _i35.ParcelsCubit(
      get<_i28.TrackNumberRepository>(),
      get<_i34.TrackingRepository>(),
      get<_i33.ShipmentRepository>(),
      get<_i31.AppSettings>()));
  gh.factory<_i36.ServiceInfoCubit>(
      () => _i36.ServiceInfoCubit(get<_i21.ServiceRepository>()));
  gh.factory<_i37.ServiceListCubit>(
      () => _i37.ServiceListCubit(get<_i21.ServiceRepository>()));
  gh.factory<_i38.TrackingLimiter>(() => _i38.TrackingLimiterImpl(
      get<_i31.AppSettings>(),
      get<_i34.TrackingRepository>(),
      get<_i5.DateTimeProvider>()));
  gh.factory<_i39.TrackingNotifyTask>(() => _i39.TrackingNotifyTask(
      get<_i40.NotificationManager>(),
      get<_i28.TrackNumberRepository>(),
      get<_i31.AppSettings>()));
  gh.factory<_i41.TrackingService>(() => _i41.TrackingServiceImpl(
      get<_i12.RequestFactory>(),
      get<_i29.Fetcher>(),
      get<_i10.ParserFactory>()));
  gh.factory<_i42.TrackingTask>(() => _i42.TrackingTask(
      trackingService: get<_i41.TrackingService>(),
      serviceRepo: get<_i21.ServiceRepository>(),
      shipmentRepo: get<_i33.ShipmentRepository>(),
      transactionIdGenerator: get<_i17.TransactionIdGenerator>(),
      trackingIdGenerator: get<_i16.TrackingIdGenerator>(),
      dateTimeProvider: get<_i5.DateTimeProvider>()));
  gh.factory<_i43.TrackingWorker>(() => _i43.TrackingWorker(
      trackingTask: get<_i42.TrackingTask>(),
      trackNumberRepo: get<_i28.TrackNumberRepository>(),
      shipmentRepo: get<_i33.ShipmentRepository>(),
      trackingRepo: get<_i34.TrackingRepository>(),
      notifyTask: get<_i39.TrackingNotifyTask>(),
      platformInfo: get<_i11.PlatformInfo>(),
      pref: get<_i31.AppSettings>(),
      trackingLimiter: get<_i38.TrackingLimiter>()));
  gh.factory<_i44.AppearanceSettingsCubit>(() => _i44.AppearanceSettingsCubit(
      get<_i31.AppSettings>(), get<_i45.AppCubit>()));
  gh.factory<_i46.CrashReportManager>(() => _i46.CrashReportManagerImpl(
      get<_i24.CrashReportBuilder>(), get<_i25.CrashReportSender>()));
  gh.factory<_i47.ErrorReportCubit>(
      () => _i47.ErrorReportCubit(get<_i46.CrashReportManager>()));
  gh.factory<_i48.TrackingAllWorker>(() => _i48.TrackingAllWorker(
      get<_i43.TrackingWorker>(),
      get<_i28.TrackNumberRepository>(),
      get<_i11.PlatformInfo>(),
      get<_i31.AppSettings>()));
  gh.factory<_i49.TrackingPeriodicWorker>(() => _i49.TrackingPeriodicWorker(
      get<_i43.TrackingWorker>(),
      get<_i50.WorkerManager>(),
      get<_i34.TrackingRepository>(),
      get<_i28.TrackNumberRepository>(),
      get<_i31.AppSettings>(),
      get<_i11.PlatformInfo>(),
      get<_i5.DateTimeProvider>()));
  gh.factory<_i51.AddParcelsCubit>(() => _i51.AddParcelsCubit(
      get<_i28.TrackNumberRepository>(),
      get<_i52.TrackingScheduler>(),
      get<_i5.DateTimeProvider>()));
  gh.factory<_i53.BehaviorSettingsCubit>(() => _i53.BehaviorSettingsCubit(
      get<_i31.AppSettings>(), get<_i52.TrackingScheduler>()));
  gh.factory<_i54.DetailsActionsCubit>(() => _i54.DetailsActionsCubit(
      get<_i28.TrackNumberRepository>(),
      get<_i34.TrackingRepository>(),
      get<_i52.TrackingScheduler>()));
  gh.factory<_i55.ParcelsActionsCubit>(() => _i55.ParcelsActionsCubit(
      get<_i28.TrackNumberRepository>(),
      get<_i34.TrackingRepository>(),
      get<_i52.TrackingScheduler>()));
  gh.singletonAsync<_i15.AppDatabase>(() => appDatabaseModule.inMemoryDb,
      registerFor: {_test});
  gh.singletonAsync<_i15.AppDatabase>(() => appDatabaseModule.db,
      registerFor: {_prod, _dev});
  gh.singletonWithDependencies<_i56.AppDatabaseIsolateBinder>(
      () => _i56.AppDatabaseIsolateBinder(get<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonWithDependencies<_i21.ServiceRepository>(
      () => _i21.ServiceRepositoryImpl(
          get<_i15.AppDatabase>(), get<_i14.ServiceAuthStorage>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonAsync<_i57.SharedPreferences>(() => sharedPreferencesModule.pref,
      registerFor: {_prod, _dev});
  gh.singletonAsync<_i57.SharedPreferences>(
      () => sharedPreferencesModule.testPref,
      registerFor: {_test});
  gh.singletonWithDependencies<_i33.ShipmentRepository>(
      () => _i33.ShipmentRepositoryImpl(get<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonWithDependencies<_i28.TrackNumberRepository>(
      () => _i28.TrackNumberRepositoryImpl(get<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonWithDependencies<_i34.TrackingRepository>(
      () => _i34.TrackingRepositoryImpl(get<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonWithDependencies<_i58.WorkManagerRepository>(
      () => _i58.WorkManagerRepositoryImpl(get<_i15.AppDatabase>()),
      dependsOn: [_i15.AppDatabase]);
  gh.singletonWithDependencies<_i31.AppSettings>(
      () => _i31.AppSettingsImpl(get<_i57.SharedPreferences>()),
      dependsOn: [_i57.SharedPreferences]);
  gh.singletonWithDependencies<_i40.NotificationManager>(
      () => _i40.NotificationManagerImpl(
          get<_i11.PlatformInfo>(), get<_i31.AppSettings>()),
      dependsOn: [_i31.AppSettings]);
  gh.singletonWithDependencies<_i59.WorkManager>(
      () => _i59.DebugWorkManagerImpl(
          get<_i58.WorkManagerRepository>(),
          get<_i11.PlatformInfo>(),
          get<_i5.DateTimeProvider>(),
          get<_i18.WorkersProvider>()),
      dependsOn: [_i58.WorkManagerRepository],
      registerFor: {_dev, _test});
  gh.singletonWithDependencies<_i59.WorkManager>(
      () => _i59.WorkManagerImpl(
          get<_i58.WorkManagerRepository>(),
          get<_i11.PlatformInfo>(),
          get<_i18.WorkersProvider>(),
          get<_i5.DateTimeProvider>()),
      dependsOn: [_i58.WorkManagerRepository],
      registerFor: {_prod});
  gh.singletonWithDependencies<_i50.WorkerManager>(
      () => _i50.WorkerManagerImpl(get<_i59.WorkManager>()),
      dependsOn: [_i59.WorkManager]);
  gh.singletonWithDependencies<_i45.AppCubit>(
      () => _i45.AppCubit(get<_i31.AppSettings>()),
      dependsOn: [_i31.AppSettings]);
  gh.singletonWithDependencies<_i52.TrackingScheduler>(
      () => _i52.TrackingSchedulerImpl(
          get<_i50.WorkerManager>(),
          get<_i28.TrackNumberRepository>(),
          get<_i38.TrackingLimiter>(),
          get<_i31.AppSettings>()),
      dependsOn: [_i50.WorkerManager]);
  return get;
}

class _$AppDatabaseModule extends _i15.AppDatabaseModule {}

class _$ClientModule extends _i7.ClientModule {}

class _$FlutterSecureStorageModule extends _i14.FlutterSecureStorageModule {}

class _$SharedPreferencesModule extends _i31.SharedPreferencesModule {}
