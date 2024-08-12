// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:libretrack/core/app_database_isolate_binder.dart' as _i398;
import 'package:libretrack/core/crash_report/crash_report_builder.dart' as _i97;
import 'package:libretrack/core/crash_report/crash_report_id_generator.dart'
    as _i1024;
import 'package:libretrack/core/crash_report/crash_report_manager.dart'
    as _i554;
import 'package:libretrack/core/crash_report/crash_report_sender.dart' as _i796;
import 'package:libretrack/core/date_time_provider.dart' as _i541;
import 'package:libretrack/core/model/fetcher.dart' as _i580;
import 'package:libretrack/core/model/http/http_client.dart' as _i581;
import 'package:libretrack/core/model/http/http_client_factory.dart' as _i131;
import 'package:libretrack/core/model/parser_factory.dart' as _i761;
import 'package:libretrack/core/model/request_factory.dart' as _i324;
import 'package:libretrack/core/model/tracking_service.dart' as _i910;
import 'package:libretrack/core/notification_manager.dart' as _i710;
import 'package:libretrack/core/platform_info.dart' as _i253;
import 'package:libretrack/core/settings/settings.dart' as _i23;
import 'package:libretrack/core/storage/database.dart' as _i93;
import 'package:libretrack/core/storage/service_auth_storage.dart' as _i776;
import 'package:libretrack/core/storage/service_repository.dart' as _i35;
import 'package:libretrack/core/storage/shipment_repository.dart' as _i144;
import 'package:libretrack/core/storage/track_number_repository.dart' as _i819;
import 'package:libretrack/core/storage/tracking_repository.dart' as _i1023;
import 'package:libretrack/core/storage/work_manager_repository.dart' as _i36;
import 'package:libretrack/core/tracking_id_generator.dart' as _i132;
import 'package:libretrack/core/tracking_limiter.dart' as _i521;
import 'package:libretrack/core/tracking_scheduler.dart' as _i268;
import 'package:libretrack/core/transaction_id_generator.dart' as _i403;
import 'package:libretrack/core/work_manager/registered_workers.dart' as _i1014;
import 'package:libretrack/core/work_manager/work_manager.dart' as _i94;
import 'package:libretrack/core/worker/tracking_all_worker.dart' as _i506;
import 'package:libretrack/core/worker/tracking_notify_task.dart' as _i514;
import 'package:libretrack/core/worker/tracking_periodic_worker.dart' as _i660;
import 'package:libretrack/core/worker/tracking_task.dart' as _i257;
import 'package:libretrack/core/worker/tracking_worker.dart' as _i901;
import 'package:libretrack/core/worker/worker_manager.dart' as _i577;
import 'package:libretrack/platform/system_tray.dart' as _i728;
import 'package:libretrack/ui/about/about_cubit.dart' as _i510;
import 'package:libretrack/ui/accounts/accounts_actions_cubit.dart' as _i832;
import 'package:libretrack/ui/accounts/accounts_cubit.dart' as _i854;
import 'package:libretrack/ui/add_account/add_account_cubit.dart' as _i198;
import 'package:libretrack/ui/add_account/service_list_cubit.dart' as _i65;
import 'package:libretrack/ui/add_parcels/add_parcels_cubit.dart' as _i279;
import 'package:libretrack/ui/app_cubit.dart' as _i179;
import 'package:libretrack/ui/cubit/error_report_cubit.dart' as _i424;
import 'package:libretrack/ui/edit_account/edit_account_cubit.dart' as _i868;
import 'package:libretrack/ui/edit_account/service_info_cubit.dart' as _i808;
import 'package:libretrack/ui/parcel_details/details_actions_cubit.dart'
    as _i543;
import 'package:libretrack/ui/parcel_details/edit_parcel_cubit.dart' as _i1022;
import 'package:libretrack/ui/parcel_details/parcel_details_cubit.dart'
    as _i1025;
import 'package:libretrack/ui/parcel_details/parcel_error_banner_cubit.dart'
    as _i947;
import 'package:libretrack/ui/parcels/first_start_cubit.dart' as _i521;
import 'package:libretrack/ui/parcels/parcels_actions_cubit.dart' as _i833;
import 'package:libretrack/ui/parcels/parcels_cubit.dart' as _i664;
import 'package:libretrack/ui/parcels/selectable_parcels_cubit.dart' as _i980;
import 'package:libretrack/ui/settings/page/appearance_cubit.dart' as _i83;
import 'package:libretrack/ui/settings/page/behavior_cubit.dart' as _i819;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

const String _dev = 'dev';
const String _test = 'test';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final clientModule = _$ClientModule();
    final flutterSecureStorageModule = _$FlutterSecureStorageModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    final appDatabaseModule = _$AppDatabaseModule();
    gh.factory<_i947.ParcelErrorBannerCubit>(
        () => _i947.ParcelErrorBannerCubit());
    gh.factory<_i980.SelectableParcelsCubit>(
        () => _i980.SelectableParcelsCubit());
    gh.factory<_i519.Client>(() => clientModule.client);
    gh.factory<_i131.HttpClientFactory>(
        () => _i131.HttpClientFactoryImpl(gh<_i519.Client>()));
    gh.factory<_i1024.CrashReportIdGenerator>(
        () => _i1024.CrashReportIdGeneratorImpl());
    gh.factory<_i324.RequestFactory>(
      () => _i324.DevRequestFactoryImpl(),
      registerFor: {
        _dev,
        _test,
      },
    );
    gh.factory<_i132.TrackingIdGenerator>(
        () => _i132.TrackingIdGeneratorImpl());
    gh.factory<_i581.HttpClient>(
        () => _i581.HttpClientImpl(gh<_i519.Client>()));
    gh.factory<_i253.PlatformInfo>(() => _i253.PlatformInfoImpl());
    gh.factory<_i1014.WorkersProvider>(() => _i1014.WorkersProviderImpl());
    gh.factory<_i97.CrashReportBuilder>(
      () => _i97.TestCrashReportBuilder(
        gh<_i253.PlatformInfo>(),
        gh<_i1024.CrashReportIdGenerator>(),
      ),
      registerFor: {_test},
    );
    gh.factory<_i558.FlutterSecureStorage>(
      () => flutterSecureStorageModule.storage,
      registerFor: {
        _prod,
        _dev,
      },
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.pref,
      registerFor: {
        _prod,
        _dev,
      },
      preResolve: true,
    );
    await gh.singletonAsync<_i93.AppDatabase>(
      () => appDatabaseModule.db,
      registerFor: {
        _prod,
        _dev,
      },
      preResolve: true,
    );
    gh.factory<_i558.FlutterSecureStorage>(
      () => flutterSecureStorageModule.testStorage,
      registerFor: {_test},
    );
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.testPref,
      registerFor: {_test},
      preResolve: true,
    );
    await gh.singletonAsync<_i93.AppDatabase>(
      () => appDatabaseModule.inMemoryDb,
      registerFor: {_test},
      preResolve: true,
    );
    gh.factory<_i403.TransactionIdGenerator>(
        () => _i403.TransactionIdGeneratorImpl());
    gh.factory<_i541.DateTimeProvider>(() => _i541.DateTimeProviderImpl());
    gh.factory<_i97.CrashReportBuilder>(
      () => _i97.ProdCrashReportBuilder(
        gh<_i253.PlatformInfo>(),
        gh<_i1024.CrashReportIdGenerator>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i510.AboutCubit>(
        () => _i510.AboutCubit(gh<_i253.PlatformInfo>()));
    gh.factory<_i796.CrashReportSender>(
        () => _i796.CrashReportSenderImpl(gh<_i253.PlatformInfo>()));
    gh.factory<_i776.ServiceAuthStorage>(() => _i776.ServiceAuthStorageImpl(
          gh<_i93.AppDatabase>(),
          gh<_i558.FlutterSecureStorage>(),
          gh<_i253.PlatformInfo>(),
        ));
    gh.factory<_i324.RequestFactory>(
      () => _i324.RequestFactoryImpl(),
      registerFor: {_prod},
    );
    gh.factory<_i580.Fetcher>(() => _i580.FetcherImpl(
          gh<_i131.HttpClientFactory>(),
          gh<_i541.DateTimeProvider>(),
        ));
    gh.singleton<_i398.AppDatabaseIsolateBinder>(
        () => _i398.AppDatabaseIsolateBinder(gh<_i93.AppDatabase>()));
    gh.factory<_i97.CrashReportBuilder>(
      () => _i97.DevCrashReportBuilder(
        gh<_i253.PlatformInfo>(),
        gh<_i1024.CrashReportIdGenerator>(),
      ),
      registerFor: {_dev},
    );
    gh.singleton<_i144.ShipmentRepository>(
        () => _i144.ShipmentRepositoryImpl(gh<_i93.AppDatabase>()));
    gh.singleton<_i819.TrackNumberRepository>(
        () => _i819.TrackNumberRepositoryImpl(gh<_i93.AppDatabase>()));
    gh.singleton<_i36.WorkManagerRepository>(
        () => _i36.WorkManagerRepositoryImpl(gh<_i93.AppDatabase>()));
    gh.singleton<_i35.ServiceRepository>(() => _i35.ServiceRepositoryImpl(
          gh<_i93.AppDatabase>(),
          gh<_i776.ServiceAuthStorage>(),
        ));
    gh.singleton<_i1023.TrackingRepository>(
        () => _i1023.TrackingRepositoryImpl(gh<_i93.AppDatabase>()));
    gh.factory<_i761.ParserFactory>(
        () => _i761.ParserFactoryImpl(gh<_i541.DateTimeProvider>()));
    gh.singleton<_i23.AppSettings>(
        () => _i23.AppSettingsImpl(gh<_i460.SharedPreferences>()));
    gh.factory<_i65.ServiceListCubit>(
        () => _i65.ServiceListCubit(gh<_i35.ServiceRepository>()));
    gh.factory<_i198.AddAccountCubit>(
        () => _i198.AddAccountCubit(gh<_i35.ServiceRepository>()));
    gh.factory<_i854.AccountsCubit>(
        () => _i854.AccountsCubit(gh<_i35.ServiceRepository>()));
    gh.factory<_i832.AccountsActionsCubit>(
        () => _i832.AccountsActionsCubit(gh<_i35.ServiceRepository>()));
    gh.factory<_i868.EditAccountCubit>(
        () => _i868.EditAccountCubit(gh<_i35.ServiceRepository>()));
    gh.factory<_i808.ServiceInfoCubit>(
        () => _i808.ServiceInfoCubit(gh<_i35.ServiceRepository>()));
    gh.singleton<_i94.WorkManager>(
      () => _i94.WorkManagerImpl(
        gh<_i36.WorkManagerRepository>(),
        gh<_i253.PlatformInfo>(),
        gh<_i1014.WorkersProvider>(),
        gh<_i541.DateTimeProvider>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i1022.EditParcelCubit>(
        () => _i1022.EditParcelCubit(gh<_i819.TrackNumberRepository>()));
    gh.singleton<_i179.AppCubit>(() => _i179.AppCubit(gh<_i23.AppSettings>()));
    gh.factory<_i554.CrashReportManager>(() => _i554.CrashReportManagerImpl(
          gh<_i97.CrashReportBuilder>(),
          gh<_i796.CrashReportSender>(),
        ));
    gh.factory<_i910.TrackingService>(() => _i910.TrackingServiceImpl(
          gh<_i324.RequestFactory>(),
          gh<_i580.Fetcher>(),
          gh<_i761.ParserFactory>(),
        ));
    gh.factory<_i1025.ParcelDetailsCubit>(() => _i1025.ParcelDetailsCubit(
          gh<_i819.TrackNumberRepository>(),
          gh<_i144.ShipmentRepository>(),
          gh<_i1023.TrackingRepository>(),
        ));
    gh.singleton<_i710.NotificationManager>(() => _i710.NotificationManagerImpl(
          gh<_i253.PlatformInfo>(),
          gh<_i23.AppSettings>(),
        ));
    gh.singleton<_i94.WorkManager>(
      () => _i94.DebugWorkManagerImpl(
        gh<_i36.WorkManagerRepository>(),
        gh<_i253.PlatformInfo>(),
        gh<_i541.DateTimeProvider>(),
        gh<_i1014.WorkersProvider>(),
      ),
      registerFor: {
        _dev,
        _test,
      },
    );
    gh.factory<_i257.TrackingTask>(() => _i257.TrackingTask(
          trackingService: gh<_i910.TrackingService>(),
          serviceRepo: gh<_i35.ServiceRepository>(),
          shipmentRepo: gh<_i144.ShipmentRepository>(),
          transactionIdGenerator: gh<_i403.TransactionIdGenerator>(),
          trackingIdGenerator: gh<_i132.TrackingIdGenerator>(),
          dateTimeProvider: gh<_i541.DateTimeProvider>(),
        ));
    gh.singleton<_i577.WorkerManager>(
        () => _i577.WorkerManagerImpl(gh<_i94.WorkManager>()));
    gh.factory<_i521.FirstStartCubit>(() => _i521.FirstStartCubit(
          gh<_i35.ServiceRepository>(),
          gh<_i23.AppSettings>(),
        ));
    gh.factory<_i664.ParcelsCubit>(() => _i664.ParcelsCubit(
          gh<_i819.TrackNumberRepository>(),
          gh<_i1023.TrackingRepository>(),
          gh<_i144.ShipmentRepository>(),
          gh<_i23.AppSettings>(),
        ));
    gh.factory<_i728.SystemTray>(() => _i728.SystemTray(
          gh<_i253.PlatformInfo>(),
          gh<_i23.AppSettings>(),
        ));
    gh.factory<_i521.TrackingLimiter>(() => _i521.TrackingLimiterImpl(
          gh<_i23.AppSettings>(),
          gh<_i1023.TrackingRepository>(),
          gh<_i541.DateTimeProvider>(),
        ));
    gh.factory<_i424.ErrorReportCubit>(
        () => _i424.ErrorReportCubit(gh<_i554.CrashReportManager>()));
    gh.factory<_i514.TrackingNotifyTask>(() => _i514.TrackingNotifyTask(
          gh<_i710.NotificationManager>(),
          gh<_i819.TrackNumberRepository>(),
          gh<_i23.AppSettings>(),
        ));
    gh.singleton<_i268.TrackingScheduler>(() => _i268.TrackingSchedulerImpl(
          gh<_i577.WorkerManager>(),
          gh<_i819.TrackNumberRepository>(),
          gh<_i521.TrackingLimiter>(),
          gh<_i23.AppSettings>(),
        ));
    gh.factory<_i543.DetailsActionsCubit>(() => _i543.DetailsActionsCubit(
          gh<_i819.TrackNumberRepository>(),
          gh<_i1023.TrackingRepository>(),
          gh<_i268.TrackingScheduler>(),
        ));
    gh.factory<_i833.ParcelsActionsCubit>(() => _i833.ParcelsActionsCubit(
          gh<_i819.TrackNumberRepository>(),
          gh<_i1023.TrackingRepository>(),
          gh<_i268.TrackingScheduler>(),
        ));
    gh.factory<_i901.TrackingWorker>(() => _i901.TrackingWorker(
          trackingTask: gh<_i257.TrackingTask>(),
          trackNumberRepo: gh<_i819.TrackNumberRepository>(),
          shipmentRepo: gh<_i144.ShipmentRepository>(),
          trackingRepo: gh<_i1023.TrackingRepository>(),
          notifyTask: gh<_i514.TrackingNotifyTask>(),
          platformInfo: gh<_i253.PlatformInfo>(),
          pref: gh<_i23.AppSettings>(),
          trackingLimiter: gh<_i521.TrackingLimiter>(),
        ));
    gh.factory<_i83.AppearanceSettingsCubit>(() => _i83.AppearanceSettingsCubit(
          gh<_i23.AppSettings>(),
          gh<_i179.AppCubit>(),
          gh<_i728.SystemTray>(),
        ));
    gh.factory<_i279.AddParcelsCubit>(() => _i279.AddParcelsCubit(
          gh<_i819.TrackNumberRepository>(),
          gh<_i268.TrackingScheduler>(),
          gh<_i541.DateTimeProvider>(),
        ));
    gh.factory<_i819.BehaviorSettingsCubit>(() => _i819.BehaviorSettingsCubit(
          gh<_i23.AppSettings>(),
          gh<_i268.TrackingScheduler>(),
        ));
    gh.factory<_i506.TrackingAllWorker>(() => _i506.TrackingAllWorker(
          gh<_i901.TrackingWorker>(),
          gh<_i819.TrackNumberRepository>(),
          gh<_i253.PlatformInfo>(),
          gh<_i23.AppSettings>(),
        ));
    gh.factory<_i660.TrackingPeriodicWorker>(() => _i660.TrackingPeriodicWorker(
          gh<_i901.TrackingWorker>(),
          gh<_i577.WorkerManager>(),
          gh<_i1023.TrackingRepository>(),
          gh<_i819.TrackNumberRepository>(),
          gh<_i23.AppSettings>(),
          gh<_i253.PlatformInfo>(),
          gh<_i541.DateTimeProvider>(),
        ));
    return this;
  }
}

class _$ClientModule extends _i581.ClientModule {}

class _$FlutterSecureStorageModule extends _i776.FlutterSecureStorageModule {}

class _$SharedPreferencesModule extends _i23.SharedPreferencesModule {}

class _$AppDatabaseModule extends _i93.AppDatabaseModule {}
