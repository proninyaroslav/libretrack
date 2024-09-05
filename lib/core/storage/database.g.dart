// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  TrackingServiceDao? _trackingServiceDaoInstance;

  ServiceAuthDao? _serviceAuthDaoInstance;

  PostalServiceDao? _postalServiceDaoInstance;

  TrackNumberInfoDao? _trackNumberDaoInstance;

  ShipmentDao? _shipmentDaoInstance;

  WorkManagerDao? _workManagerDaoInstance;

  TrackingDao? _trackingDaoInstance;

  TrackNumberServiceDao? _trackNumberServiceDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 3,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TrackingServiceInfo` (`type` TEXT NOT NULL, PRIMARY KEY (`type`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AuthDataField` (`key` TEXT NOT NULL, `value` TEXT NOT NULL, `serviceType` TEXT NOT NULL, FOREIGN KEY (`serviceType`) REFERENCES `TrackingServiceInfo` (`type`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`key`, `serviceType`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `PostalServiceInfo` (`type` TEXT NOT NULL, `trackingServiceType` TEXT NOT NULL, `priority` INTEGER NOT NULL, FOREIGN KEY (`trackingServiceType`) REFERENCES `TrackingServiceInfo` (`type`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`type`, `trackingServiceType`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TrackNumberInfo` (`trackNumber` TEXT NOT NULL, `description` TEXT, `isArchived` INTEGER NOT NULL, `dateAdded` INTEGER, PRIMARY KEY (`trackNumber`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TrackNumberService` (`trackNumber` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `isActive` INTEGER NOT NULL, FOREIGN KEY (`trackNumber`) REFERENCES `TrackNumberInfo` (`trackNumber`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`trackNumber`, `serviceType`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ShipmentActivityInfo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `trackNumber` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `statusType` TEXT NOT NULL, `statusDescription` TEXT, `dateTime` INTEGER NOT NULL, `activityLocation_location` TEXT, `activityLocation_postalCode` TEXT, `activityLocation_countryCode` TEXT, FOREIGN KEY (`trackNumber`) REFERENCES `TrackNumberInfo` (`trackNumber`) ON UPDATE NO ACTION ON DELETE CASCADE)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ShipmentInfo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `trackNumber` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `serviceDescription` TEXT, `shipmentDescription` TEXT, `signedForByName` TEXT, `pickupDate` INTEGER, `deliveryDate` INTEGER, `estimatedDeliveryDate` INTEGER, `scheduledDeliveryDate` INTEGER, `serviceMessage` TEXT, `shipperName` TEXT, `receiverName` TEXT, `currentStatus` TEXT, `cashOnDelivery_value` REAL, `cashOnDelivery_currencyCode` TEXT, `shipper_location` TEXT, `shipper_postalCode` TEXT, `shipper_countryCode` TEXT, `receiver_location` TEXT, `receiver_postalCode` TEXT, `receiver_countryCode` TEXT, `weight_Value` REAL, `weight_Measurement` TEXT, `volume_Value` REAL, `volume_Measurement` TEXT, `declaredValue_value` REAL, `declaredValue_currencyCode` TEXT, `customDuty_value` REAL, `customDuty_currencyCode` TEXT, `additionalRateFee_value` REAL, `additionalRateFee_currencyCode` TEXT, `shippingRateFee_value` REAL, `shippingRateFee_currencyCode` TEXT, `insuranceRateFee_value` REAL, `insuranceRateFee_currencyCode` TEXT, `dimensions_widthValue` REAL, `dimensions_widthMeasurement` TEXT, `dimensions_heightValue` REAL, `dimensions_heightMeasurement` TEXT, `dimensions_lenghtValue` REAL, `dimensions_lenghtMeasurement` TEXT, FOREIGN KEY (`trackNumber`) REFERENCES `TrackNumberInfo` (`trackNumber`) ON UPDATE NO ACTION ON DELETE CASCADE)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `AlternateTrackNumber` (`trackNumber` TEXT NOT NULL, `shipmentId` INTEGER NOT NULL, FOREIGN KEY (`shipmentId`) REFERENCES `ShipmentInfo` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`trackNumber`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `WorkInfo` (`id` TEXT NOT NULL, `workerName` TEXT NOT NULL, `type` TEXT NOT NULL, `frequency` INTEGER, `lastRunning` INTEGER, `inputData` TEXT, `initialDelay` INTEGER, `constraints_networkType` TEXT, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TrackingInfo` (`id` TEXT NOT NULL, `trackNumber` TEXT NOT NULL, `status` TEXT NOT NULL, `hasNewInfo` INTEGER NOT NULL, `hasNonRetryableError` INTEGER NOT NULL, `invalidTrackNumber` INTEGER NOT NULL, `dateTime` INTEGER NOT NULL, FOREIGN KEY (`trackNumber`) REFERENCES `TrackNumberInfo` (`trackNumber`) ON UPDATE NO ACTION ON DELETE CASCADE, PRIMARY KEY (`id`))');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `TrackingResponseInfo` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `trackNumber` TEXT NOT NULL, `trackingId` TEXT NOT NULL, `serviceType` TEXT NOT NULL, `status` TEXT NOT NULL, `dateTime` INTEGER NOT NULL, `error_type` TEXT, `error_isRetryable` INTEGER NOT NULL, `error_message` TEXT, `error_code` TEXT, `error_stackTrace` TEXT, FOREIGN KEY (`trackingId`) REFERENCES `TrackingInfo` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  TrackingServiceDao get trackingServiceDao {
    return _trackingServiceDaoInstance ??=
        _$TrackingServiceDao(database, changeListener);
  }

  @override
  ServiceAuthDao get serviceAuthDao {
    return _serviceAuthDaoInstance ??=
        _$ServiceAuthDao(database, changeListener);
  }

  @override
  PostalServiceDao get postalServiceDao {
    return _postalServiceDaoInstance ??=
        _$PostalServiceDao(database, changeListener);
  }

  @override
  TrackNumberInfoDao get trackNumberDao {
    return _trackNumberDaoInstance ??=
        _$TrackNumberInfoDao(database, changeListener);
  }

  @override
  ShipmentDao get shipmentDao {
    return _shipmentDaoInstance ??= _$ShipmentDao(database, changeListener);
  }

  @override
  WorkManagerDao get workManagerDao {
    return _workManagerDaoInstance ??=
        _$WorkManagerDao(database, changeListener);
  }

  @override
  TrackingDao get trackingDao {
    return _trackingDaoInstance ??= _$TrackingDao(database, changeListener);
  }

  @override
  TrackNumberServiceDao get trackNumberServiceDao {
    return _trackNumberServiceDaoInstance ??=
        _$TrackNumberServiceDao(database, changeListener);
  }
}

class _$TrackingServiceDao extends TrackingServiceDao {
  _$TrackingServiceDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _trackingServiceInfoInsertionAdapter = InsertionAdapter(
            database,
            'TrackingServiceInfo',
            (TrackingServiceInfo item) => <String, Object?>{
                  'type': _trackingServiceTypeConverter.encode(item.type)
                },
            changeListener),
        _trackingServiceInfoDeletionAdapter = DeletionAdapter(
            database,
            'TrackingServiceInfo',
            ['type'],
            (TrackingServiceInfo item) => <String, Object?>{
                  'type': _trackingServiceTypeConverter.encode(item.type)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TrackingServiceInfo>
      _trackingServiceInfoInsertionAdapter;

  final DeletionAdapter<TrackingServiceInfo>
      _trackingServiceInfoDeletionAdapter;

  @override
  Future<TrackingServiceInfo?> getServiceByType(
      TrackingServiceType type) async {
    return _queryAdapter.query(
        'SELECT * FROM TrackingServiceInfo WHERE type = ?1',
        mapper: (Map<String, Object?> row) => TrackingServiceInfo(
            type: _trackingServiceTypeConverter.decode(row['type'] as String)),
        arguments: [_trackingServiceTypeConverter.encode(type)]);
  }

  @override
  Future<List<TrackingServiceInfo>> getServicesByType(
      List<TrackingServiceType> types) async {
    const offset = 1;
    final _sqliteVariablesForTypes =
        Iterable<String>.generate(types.length, (i) => '?${i + offset}')
            .join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingServiceInfo WHERE type IN (' +
            _sqliteVariablesForTypes +
            ')',
        mapper: (Map<String, Object?> row) => TrackingServiceInfo(
            type: _trackingServiceTypeConverter.decode(row['type'] as String)),
        arguments: [
          ...types
              .map((element) => _trackingServiceTypeConverter.encode(element))
        ]);
  }

  @override
  Future<TrackingServiceInfo?> getHighPriorityService(
      PostalServiceType postalServiceType) async {
    return _queryAdapter.query(
        'SELECT * FROM TrackingServiceInfo   WHERE type IN   (SELECT trackingServiceType FROM PostalServiceInfo   WHERE priority =   (SELECT MIN(priority) FROM PostalServiceInfo WHERE type = ?1)   AND type = ?1   )',
        mapper: (Map<String, Object?> row) => TrackingServiceInfo(type: _trackingServiceTypeConverter.decode(row['type'] as String)),
        arguments: [_postalServiceTypeConverter.encode(postalServiceType)]);
  }

  @override
  Future<List<TrackingServiceInfo>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM TrackingServiceInfo',
        mapper: (Map<String, Object?> row) => TrackingServiceInfo(
            type: _trackingServiceTypeConverter.decode(row['type'] as String)));
  }

  @override
  Stream<List<TrackingServiceInfo>> observeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM TrackingServiceInfo',
        mapper: (Map<String, Object?> row) => TrackingServiceInfo(
            type: _trackingServiceTypeConverter.decode(row['type'] as String)),
        queryableName: 'TrackingServiceInfo',
        isView: false);
  }

  @override
  Future<void> addService(TrackingServiceInfo info) async {
    await _trackingServiceInfoInsertionAdapter.insert(
        info, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteService(TrackingServiceInfo info) async {
    await _trackingServiceInfoDeletionAdapter.delete(info);
  }
}

class _$ServiceAuthDao extends ServiceAuthDao {
  _$ServiceAuthDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _authDataFieldInsertionAdapter = InsertionAdapter(
            database,
            'AuthDataField',
            (AuthDataField item) => <String, Object?>{
                  'key': item.key,
                  'value': item.value,
                  'serviceType':
                      _trackingServiceTypeConverter.encode(item.serviceType)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AuthDataField> _authDataFieldInsertionAdapter;

  @override
  Future<void> deleteDataByServiceId(TrackingServiceType serviceType) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM AuthDataField WHERE serviceType = ?1',
        arguments: [_trackingServiceTypeConverter.encode(serviceType)]);
  }

  @override
  Future<List<AuthDataField>> getDataByServiceType(
      TrackingServiceType serviceType) async {
    return _queryAdapter.queryList(
        'SELECT * FROM AuthDataField WHERE serviceType = ?1',
        mapper: (Map<String, Object?> row) => AuthDataField(
            key: row['key'] as String,
            value: row['value'] as String,
            serviceType: _trackingServiceTypeConverter
                .decode(row['serviceType'] as String)),
        arguments: [_trackingServiceTypeConverter.encode(serviceType)]);
  }

  @override
  Future<void> insertData(List<AuthDataField> data) async {
    await _authDataFieldInsertionAdapter.insertList(
        data, OnConflictStrategy.replace);
  }
}

class _$PostalServiceDao extends PostalServiceDao {
  _$PostalServiceDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _postalServiceInfoInsertionAdapter = InsertionAdapter(
            database,
            'PostalServiceInfo',
            (PostalServiceInfo item) => <String, Object?>{
                  'type': _postalServiceTypeConverter.encode(item.type),
                  'trackingServiceType': _trackingServiceTypeConverter
                      .encode(item.trackingServiceType),
                  'priority': item.priority
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PostalServiceInfo> _postalServiceInfoInsertionAdapter;

  @override
  Future<List<PostalServiceInfo>> getAllLowPriority() async {
    return _queryAdapter.queryList(
        'SELECT *, MAX(priority) FROM PostalServiceInfo   GROUP BY type, trackingServiceType',
        mapper: (Map<String, Object?> row) => PostalServiceInfo(
            type: _postalServiceTypeConverter.decode(row['type'] as String),
            trackingServiceType: _trackingServiceTypeConverter
                .decode(row['trackingServiceType'] as String),
            priority: row['priority'] as int));
  }

  @override
  Future<void> add(List<PostalServiceInfo> services) async {
    await _postalServiceInfoInsertionAdapter.insertList(
        services, OnConflictStrategy.abort);
  }
}

class _$TrackNumberInfoDao extends TrackNumberInfoDao {
  _$TrackNumberInfoDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _trackNumberInfoInsertionAdapter = InsertionAdapter(
            database,
            'TrackNumberInfo',
            (TrackNumberInfo item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'description': item.description,
                  'isArchived': item.isArchived ? 1 : 0,
                  'dateAdded': _nullableDateTimeConverter.encode(item.dateAdded)
                },
            changeListener),
        _trackNumberInfoUpdateAdapter = UpdateAdapter(
            database,
            'TrackNumberInfo',
            ['trackNumber'],
            (TrackNumberInfo item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'description': item.description,
                  'isArchived': item.isArchived ? 1 : 0,
                  'dateAdded': _nullableDateTimeConverter.encode(item.dateAdded)
                },
            changeListener),
        _trackNumberInfoDeletionAdapter = DeletionAdapter(
            database,
            'TrackNumberInfo',
            ['trackNumber'],
            (TrackNumberInfo item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'description': item.description,
                  'isArchived': item.isArchived ? 1 : 0,
                  'dateAdded': _nullableDateTimeConverter.encode(item.dateAdded)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TrackNumberInfo> _trackNumberInfoInsertionAdapter;

  final UpdateAdapter<TrackNumberInfo> _trackNumberInfoUpdateAdapter;

  final DeletionAdapter<TrackNumberInfo> _trackNumberInfoDeletionAdapter;

  @override
  Future<List<TrackNumberInfo>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM TrackNumberInfo',
        mapper: (Map<String, Object?> row) => TrackNumberInfo(
            row['trackNumber'] as String,
            description: row['description'] as String?,
            isArchived: (row['isArchived'] as int) != 0,
            dateAdded:
                _nullableDateTimeConverter.decode(row['dateAdded'] as int?)));
  }

  @override
  Future<List<TrackNumberInfo>> getAllUnarchived() async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackNumberInfo WHERE isArchived = 0',
        mapper: (Map<String, Object?> row) => TrackNumberInfo(
            row['trackNumber'] as String,
            description: row['description'] as String?,
            isArchived: (row['isArchived'] as int) != 0,
            dateAdded:
                _nullableDateTimeConverter.decode(row['dateAdded'] as int?)));
  }

  @override
  Stream<List<TrackNumberInfo>> observeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM TrackNumberInfo',
        mapper: (Map<String, Object?> row) => TrackNumberInfo(
            row['trackNumber'] as String,
            description: row['description'] as String?,
            isArchived: (row['isArchived'] as int) != 0,
            dateAdded:
                _nullableDateTimeConverter.decode(row['dateAdded'] as int?)),
        queryableName: 'TrackNumberInfo',
        isView: false);
  }

  @override
  Stream<TrackNumberInfo?> observeByTrack(String trackNumber) {
    return _queryAdapter.queryStream(
        'SELECT * FROM TrackNumberInfo WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => TrackNumberInfo(
            row['trackNumber'] as String,
            description: row['description'] as String?,
            isArchived: (row['isArchived'] as int) != 0,
            dateAdded:
                _nullableDateTimeConverter.decode(row['dateAdded'] as int?)),
        arguments: [trackNumber],
        queryableName: 'TrackNumberInfo',
        isView: false);
  }

  @override
  Future<TrackNumberInfo?> getByTrack(String trackNumber) async {
    return _queryAdapter.query(
        'SELECT * FROM TrackNumberInfo WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => TrackNumberInfo(
            row['trackNumber'] as String,
            description: row['description'] as String?,
            isArchived: (row['isArchived'] as int) != 0,
            dateAdded:
                _nullableDateTimeConverter.decode(row['dateAdded'] as int?)),
        arguments: [trackNumber]);
  }

  @override
  Future<void> addTrack(TrackNumberInfo info) async {
    await _trackNumberInfoInsertionAdapter.insert(
        info, OnConflictStrategy.replace);
  }

  @override
  Future<void> addTrackList(List<TrackNumberInfo> infoList) async {
    await _trackNumberInfoInsertionAdapter.insertList(
        infoList, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateTrack(TrackNumberInfo info) async {
    await _trackNumberInfoUpdateAdapter.update(info, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateTrackList(List<TrackNumberInfo> infoList) async {
    await _trackNumberInfoUpdateAdapter.updateList(
        infoList, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteTrack(TrackNumberInfo info) async {
    await _trackNumberInfoDeletionAdapter.delete(info);
  }

  @override
  Future<void> deleteTrackList(List<TrackNumberInfo> infoList) async {
    await _trackNumberInfoDeletionAdapter.deleteList(infoList);
  }
}

class _$ShipmentDao extends ShipmentDao {
  _$ShipmentDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _shipmentActivityInfoInsertionAdapter = InsertionAdapter(
            database,
            'ShipmentActivityInfo',
            (ShipmentActivityInfo item) => <String, Object?>{
                  'id': item.id,
                  'trackNumber': item.trackNumber,
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'statusType':
                      _shipmentStatusTypeConverter.encode(item.statusType),
                  'statusDescription': item.statusDescription,
                  'dateTime': _dateTimeConverter.encode(item.dateTime),
                  'activityLocation_location': item.location_,
                  'activityLocation_postalCode': item.postalCode_,
                  'activityLocation_countryCode': item.countryCode_
                },
            changeListener),
        _shipmentInfoInsertionAdapter = InsertionAdapter(
            database,
            'ShipmentInfo',
            (ShipmentInfo item) => <String, Object?>{
                  'id': item.id,
                  'trackNumber': item.trackNumber,
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'serviceDescription': item.serviceDescription,
                  'shipmentDescription': item.shipmentDescription,
                  'signedForByName': item.signedForByName,
                  'pickupDate':
                      _nullableDateTimeConverter.encode(item.pickupDate),
                  'deliveryDate':
                      _nullableDateTimeConverter.encode(item.deliveryDate),
                  'estimatedDeliveryDate': _nullableDateTimeConverter
                      .encode(item.estimatedDeliveryDate),
                  'scheduledDeliveryDate': _nullableDateTimeConverter
                      .encode(item.scheduledDeliveryDate),
                  'serviceMessage': item.serviceMessage,
                  'shipperName': item.shipperName,
                  'receiverName': item.receiverName,
                  'currentStatus': _nullableShipmentStatusTypeConverter
                      .encode(item.currentStatus),
                  'cashOnDelivery_value': item.cashOnDeliveryValue_,
                  'cashOnDelivery_currencyCode':
                      item.cashOnDeliveryCurrencyCode_,
                  'shipper_location': item.shipperLocation_,
                  'shipper_postalCode': item.shipperPostalCode_,
                  'shipper_countryCode': item.shipperCountryCode_,
                  'receiver_location': item.receiverLocation_,
                  'receiver_postalCode': item.receiverPostalCode_,
                  'receiver_countryCode': item.receiverCountryCode_,
                  'weight_Value': item.weightValue_,
                  'weight_Measurement': _nullableMeasurementConverter
                      .encode(item.weightMeasurement_),
                  'volume_Value': item.volumeValue_,
                  'volume_Measurement': _nullableMeasurementConverter
                      .encode(item.volumeMeasurement_),
                  'declaredValue_value': item.declaredValueValue_,
                  'declaredValue_currencyCode': item.declaredValueCurrencyCode_,
                  'customDuty_value': item.customDutyValue_,
                  'customDuty_currencyCode': item.customDutyCurrencyCode_,
                  'additionalRateFee_value': item.additionalRateFeeValue_,
                  'additionalRateFee_currencyCode':
                      item.additionalRateFeeCurrencyCode_,
                  'shippingRateFee_value': item.shippingRateFeeValue_,
                  'shippingRateFee_currencyCode':
                      item.shippingRateFeeCurrencyCode_,
                  'insuranceRateFee_value': item.insuranceRateFeeValue_,
                  'insuranceRateFee_currencyCode':
                      item.insuranceRateFeeCurrencyCode_,
                  'dimensions_widthValue': item.dimensionsWidthValue_,
                  'dimensions_widthMeasurement': _nullableMeasurementConverter
                      .encode(item.dimensionsWidthMeasurement_),
                  'dimensions_heightValue': item.dimensionsHeightValue_,
                  'dimensions_heightMeasurement': _nullableMeasurementConverter
                      .encode(item.dimensionsHeightMeasurement_),
                  'dimensions_lenghtValue': item.dimensionsLengthValue_,
                  'dimensions_lenghtMeasurement': _nullableMeasurementConverter
                      .encode(item.dimensionsLengthMeasurement_)
                },
            changeListener),
        _alternateTrackNumberInsertionAdapter = InsertionAdapter(
            database,
            'AlternateTrackNumber',
            (AlternateTrackNumber item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'shipmentId': item.shipmentId
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ShipmentActivityInfo>
      _shipmentActivityInfoInsertionAdapter;

  final InsertionAdapter<ShipmentInfo> _shipmentInfoInsertionAdapter;

  final InsertionAdapter<AlternateTrackNumber>
      _alternateTrackNumberInsertionAdapter;

  @override
  Future<void> deleteActivitiesByTrack(String trackNumber) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM ShipmentActivityInfo WHERE trackNumber = ?1',
        arguments: [trackNumber]);
  }

  @override
  Future<List<ShipmentActivityInfo>> getAllActivities() async {
    return _queryAdapter.queryList('SELECT * FROM ShipmentActivityInfo',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            statusType: _shipmentStatusTypeConverter
                .decode(row['statusType'] as String),
            statusDescription: row['statusDescription'] as String?,
            location_: row['activityLocation_location'] as String?,
            postalCode_: row['activityLocation_postalCode'] as String?,
            countryCode_: row['activityLocation_countryCode'] as String?,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)));
  }

  @override
  Stream<List<ShipmentActivityInfo>> observeAllActivities() {
    return _queryAdapter.queryListStream('SELECT * FROM ShipmentActivityInfo',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            statusType: _shipmentStatusTypeConverter
                .decode(row['statusType'] as String),
            statusDescription: row['statusDescription'] as String?,
            location_: row['activityLocation_location'] as String?,
            postalCode_: row['activityLocation_postalCode'] as String?,
            countryCode_: row['activityLocation_countryCode'] as String?,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        queryableName: 'ShipmentActivityInfo',
        isView: false);
  }

  @override
  Future<List<ShipmentActivityInfo>> getActivitiesByTrackAsc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ShipmentActivityInfo WHERE trackNumber = ?1   ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(id: row['id'] as int?, trackNumber: row['trackNumber'] as String, serviceType: _postalServiceTypeConverter.decode(row['serviceType'] as String), statusType: _shipmentStatusTypeConverter.decode(row['statusType'] as String), statusDescription: row['statusDescription'] as String?, location_: row['activityLocation_location'] as String?, postalCode_: row['activityLocation_postalCode'] as String?, countryCode_: row['activityLocation_countryCode'] as String?, dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber]);
  }

  @override
  Future<List<ShipmentActivityInfo>> getActivitiesByTrackDesc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ShipmentActivityInfo WHERE trackNumber = ?1   ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(id: row['id'] as int?, trackNumber: row['trackNumber'] as String, serviceType: _postalServiceTypeConverter.decode(row['serviceType'] as String), statusType: _shipmentStatusTypeConverter.decode(row['statusType'] as String), statusDescription: row['statusDescription'] as String?, location_: row['activityLocation_location'] as String?, postalCode_: row['activityLocation_postalCode'] as String?, countryCode_: row['activityLocation_countryCode'] as String?, dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber]);
  }

  @override
  Stream<List<ShipmentActivityInfo>> observeActivitiesByTrackAsc(
      String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM ShipmentActivityInfo WHERE trackNumber = ?1   ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            statusType: _shipmentStatusTypeConverter
                .decode(row['statusType'] as String),
            statusDescription: row['statusDescription'] as String?,
            location_: row['activityLocation_location'] as String?,
            postalCode_: row['activityLocation_postalCode'] as String?,
            countryCode_: row['activityLocation_countryCode'] as String?,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber],
        queryableName: 'ShipmentActivityInfo',
        isView: false);
  }

  @override
  Stream<List<ShipmentActivityInfo>> observeActivitiesByTrackDesc(
      String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM ShipmentActivityInfo WHERE trackNumber = ?1   ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => ShipmentActivityInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            statusType: _shipmentStatusTypeConverter
                .decode(row['statusType'] as String),
            statusDescription: row['statusDescription'] as String?,
            location_: row['activityLocation_location'] as String?,
            postalCode_: row['activityLocation_postalCode'] as String?,
            countryCode_: row['activityLocation_countryCode'] as String?,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber],
        queryableName: 'ShipmentActivityInfo',
        isView: false);
  }

  @override
  Future<void> deleteShipmentInfoByTrack(String trackNumber) async {
    await _queryAdapter.queryNoReturn(
        'DELETE FROM ShipmentInfo WHERE trackNumber = ?1',
        arguments: [trackNumber]);
  }

  @override
  Future<List<ShipmentInfo>> getShipmentInfoByTrack(String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM ShipmentInfo WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => ShipmentInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            serviceDescription: row['serviceDescription'] as String?,
            shipmentDescription: row['shipmentDescription'] as String?,
            signedForByName: row['signedForByName'] as String?,
            serviceMessage: row['serviceMessage'] as String?,
            pickupDate:
                _nullableDateTimeConverter.decode(row['pickupDate'] as int?),
            deliveryDate:
                _nullableDateTimeConverter.decode(row['deliveryDate'] as int?),
            estimatedDeliveryDate: _nullableDateTimeConverter
                .decode(row['estimatedDeliveryDate'] as int?),
            scheduledDeliveryDate: _nullableDateTimeConverter
                .decode(row['scheduledDeliveryDate'] as int?),
            shipperName: row['shipperName'] as String?,
            receiverName: row['receiverName'] as String?,
            currentStatus: _nullableShipmentStatusTypeConverter
                .decode(row['currentStatus'] as String?),
            weightValue_: row['weight_Value'] as double?,
            weightMeasurement_: _nullableMeasurementConverter
                .decode(row['weight_Measurement'] as String?),
            volumeValue_: row['volume_Value'] as double?,
            volumeMeasurement_: _nullableMeasurementConverter
                .decode(row['volume_Measurement'] as String?),
            cashOnDeliveryValue_: row['cashOnDelivery_value'] as double?,
            cashOnDeliveryCurrencyCode_:
                row['cashOnDelivery_currencyCode'] as String?,
            shipperLocation_: row['shipper_location'] as String?,
            shipperPostalCode_: row['shipper_postalCode'] as String?,
            shipperCountryCode_: row['shipper_countryCode'] as String?,
            receiverLocation_: row['receiver_location'] as String?,
            receiverPostalCode_: row['receiver_postalCode'] as String?,
            receiverCountryCode_: row['receiver_countryCode'] as String?,
            declaredValueValue_: row['declaredValue_value'] as double?,
            declaredValueCurrencyCode_:
                row['declaredValue_currencyCode'] as String?,
            customDutyValue_: row['customDuty_value'] as double?,
            customDutyCurrencyCode_: row['customDuty_currencyCode'] as String?,
            additionalRateFeeValue_: row['additionalRateFee_value'] as double?,
            additionalRateFeeCurrencyCode_:
                row['additionalRateFee_currencyCode'] as String?,
            shippingRateFeeValue_: row['shippingRateFee_value'] as double?,
            shippingRateFeeCurrencyCode_:
                row['shippingRateFee_currencyCode'] as String?,
            insuranceRateFeeValue_: row['insuranceRateFee_value'] as double?,
            insuranceRateFeeCurrencyCode_:
                row['insuranceRateFee_currencyCode'] as String?,
            dimensionsWidthValue_: row['dimensions_widthValue'] as double?,
            dimensionsWidthMeasurement_: _nullableMeasurementConverter
                .decode(row['dimensions_widthMeasurement'] as String?),
            dimensionsHeightValue_: row['dimensions_heightValue'] as double?,
            dimensionsHeightMeasurement_:
                _nullableMeasurementConverter.decode(row['dimensions_heightMeasurement'] as String?),
            dimensionsLengthValue_: row['dimensions_lenghtValue'] as double?,
            dimensionsLengthMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_lenghtMeasurement'] as String?)),
        arguments: [trackNumber]);
  }

  @override
  Stream<List<ShipmentInfo>> observeShipmentInfoByTrack(String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM ShipmentInfo WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => ShipmentInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            serviceDescription: row['serviceDescription'] as String?,
            shipmentDescription: row['shipmentDescription'] as String?,
            signedForByName: row['signedForByName'] as String?,
            serviceMessage: row['serviceMessage'] as String?,
            pickupDate:
                _nullableDateTimeConverter.decode(row['pickupDate'] as int?),
            deliveryDate:
                _nullableDateTimeConverter.decode(row['deliveryDate'] as int?),
            estimatedDeliveryDate: _nullableDateTimeConverter
                .decode(row['estimatedDeliveryDate'] as int?),
            scheduledDeliveryDate: _nullableDateTimeConverter
                .decode(row['scheduledDeliveryDate'] as int?),
            shipperName: row['shipperName'] as String?,
            receiverName: row['receiverName'] as String?,
            currentStatus: _nullableShipmentStatusTypeConverter
                .decode(row['currentStatus'] as String?),
            weightValue_: row['weight_Value'] as double?,
            weightMeasurement_: _nullableMeasurementConverter
                .decode(row['weight_Measurement'] as String?),
            volumeValue_: row['volume_Value'] as double?,
            volumeMeasurement_: _nullableMeasurementConverter
                .decode(row['volume_Measurement'] as String?),
            cashOnDeliveryValue_: row['cashOnDelivery_value'] as double?,
            cashOnDeliveryCurrencyCode_:
                row['cashOnDelivery_currencyCode'] as String?,
            shipperLocation_: row['shipper_location'] as String?,
            shipperPostalCode_: row['shipper_postalCode'] as String?,
            shipperCountryCode_: row['shipper_countryCode'] as String?,
            receiverLocation_: row['receiver_location'] as String?,
            receiverPostalCode_: row['receiver_postalCode'] as String?,
            receiverCountryCode_: row['receiver_countryCode'] as String?,
            declaredValueValue_: row['declaredValue_value'] as double?,
            declaredValueCurrencyCode_:
                row['declaredValue_currencyCode'] as String?,
            customDutyValue_: row['customDuty_value'] as double?,
            customDutyCurrencyCode_: row['customDuty_currencyCode'] as String?,
            additionalRateFeeValue_: row['additionalRateFee_value'] as double?,
            additionalRateFeeCurrencyCode_: row['additionalRateFee_currencyCode'] as String?,
            shippingRateFeeValue_: row['shippingRateFee_value'] as double?,
            shippingRateFeeCurrencyCode_: row['shippingRateFee_currencyCode'] as String?,
            insuranceRateFeeValue_: row['insuranceRateFee_value'] as double?,
            insuranceRateFeeCurrencyCode_: row['insuranceRateFee_currencyCode'] as String?,
            dimensionsWidthValue_: row['dimensions_widthValue'] as double?,
            dimensionsWidthMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_widthMeasurement'] as String?),
            dimensionsHeightValue_: row['dimensions_heightValue'] as double?,
            dimensionsHeightMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_heightMeasurement'] as String?),
            dimensionsLengthValue_: row['dimensions_lenghtValue'] as double?,
            dimensionsLengthMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_lenghtMeasurement'] as String?)),
        arguments: [trackNumber],
        queryableName: 'ShipmentInfo',
        isView: false);
  }

  @override
  Future<List<AlternateTrackNumber>> getAlternateTracksById(
      int shipmentId) async {
    return _queryAdapter.queryList(
        'SELECT * FROM AlternateTrackNumber WHERE shipmentId = ?1',
        mapper: (Map<String, Object?> row) => AlternateTrackNumber(
            trackNumber: row['trackNumber'] as String,
            shipmentId: row['shipmentId'] as int),
        arguments: [shipmentId]);
  }

  @override
  Future<List<ShipmentInfo>> getAllShipmentInfo() async {
    return _queryAdapter.queryList('SELECT * FROM ShipmentInfo',
        mapper: (Map<String, Object?> row) => ShipmentInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            serviceDescription: row['serviceDescription'] as String?,
            shipmentDescription: row['shipmentDescription'] as String?,
            signedForByName: row['signedForByName'] as String?,
            serviceMessage: row['serviceMessage'] as String?,
            pickupDate:
                _nullableDateTimeConverter.decode(row['pickupDate'] as int?),
            deliveryDate:
                _nullableDateTimeConverter.decode(row['deliveryDate'] as int?),
            estimatedDeliveryDate: _nullableDateTimeConverter
                .decode(row['estimatedDeliveryDate'] as int?),
            scheduledDeliveryDate: _nullableDateTimeConverter
                .decode(row['scheduledDeliveryDate'] as int?),
            shipperName: row['shipperName'] as String?,
            receiverName: row['receiverName'] as String?,
            currentStatus: _nullableShipmentStatusTypeConverter
                .decode(row['currentStatus'] as String?),
            weightValue_: row['weight_Value'] as double?,
            weightMeasurement_: _nullableMeasurementConverter
                .decode(row['weight_Measurement'] as String?),
            volumeValue_: row['volume_Value'] as double?,
            volumeMeasurement_: _nullableMeasurementConverter
                .decode(row['volume_Measurement'] as String?),
            cashOnDeliveryValue_: row['cashOnDelivery_value'] as double?,
            cashOnDeliveryCurrencyCode_:
                row['cashOnDelivery_currencyCode'] as String?,
            shipperLocation_: row['shipper_location'] as String?,
            shipperPostalCode_: row['shipper_postalCode'] as String?,
            shipperCountryCode_: row['shipper_countryCode'] as String?,
            receiverLocation_: row['receiver_location'] as String?,
            receiverPostalCode_: row['receiver_postalCode'] as String?,
            receiverCountryCode_: row['receiver_countryCode'] as String?,
            declaredValueValue_: row['declaredValue_value'] as double?,
            declaredValueCurrencyCode_:
                row['declaredValue_currencyCode'] as String?,
            customDutyValue_: row['customDuty_value'] as double?,
            customDutyCurrencyCode_: row['customDuty_currencyCode'] as String?,
            additionalRateFeeValue_: row['additionalRateFee_value'] as double?,
            additionalRateFeeCurrencyCode_:
                row['additionalRateFee_currencyCode'] as String?,
            shippingRateFeeValue_: row['shippingRateFee_value'] as double?,
            shippingRateFeeCurrencyCode_:
                row['shippingRateFee_currencyCode'] as String?,
            insuranceRateFeeValue_: row['insuranceRateFee_value'] as double?,
            insuranceRateFeeCurrencyCode_: row['insuranceRateFee_currencyCode'] as String?,
            dimensionsWidthValue_: row['dimensions_widthValue'] as double?,
            dimensionsWidthMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_widthMeasurement'] as String?),
            dimensionsHeightValue_: row['dimensions_heightValue'] as double?,
            dimensionsHeightMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_heightMeasurement'] as String?),
            dimensionsLengthValue_: row['dimensions_lenghtValue'] as double?,
            dimensionsLengthMeasurement_: _nullableMeasurementConverter.decode(row['dimensions_lenghtMeasurement'] as String?)));
  }

  @override
  Future<void> addActivities(List<ShipmentActivityInfo> activities) async {
    await _shipmentActivityInfoInsertionAdapter.insertList(
        activities, OnConflictStrategy.replace);
  }

  @override
  Future<int> addShipmentInfo(ShipmentInfo info) {
    return _shipmentInfoInsertionAdapter.insertAndReturnId(
        info, OnConflictStrategy.replace);
  }

  @override
  Future<void> addAlternateTrackList(
      List<AlternateTrackNumber> trackNumbers) async {
    await _alternateTrackNumberInsertionAdapter.insertList(
        trackNumbers, OnConflictStrategy.replace);
  }

  @override
  Future<void> replaceActivitiesByTrack(
    String trackNumber,
    List<ShipmentActivityInfo> activities,
  ) async {
    if (database is sqflite.Transaction) {
      await super.replaceActivitiesByTrack(trackNumber, activities);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.shipmentDao
            .replaceActivitiesByTrack(trackNumber, activities);
      });
    }
  }

  @override
  Future<int> replaceShipmentInfoByTrack(ShipmentInfo info) async {
    if (database is sqflite.Transaction) {
      return super.replaceShipmentInfoByTrack(info);
    } else {
      return (database as sqflite.Database)
          .transaction<int>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        return transactionDatabase.shipmentDao.replaceShipmentInfoByTrack(info);
      });
    }
  }
}

class _$WorkManagerDao extends WorkManagerDao {
  _$WorkManagerDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _workInfoInsertionAdapter = InsertionAdapter(
            database,
            'WorkInfo',
            (WorkInfo item) => <String, Object?>{
                  'id': item.id,
                  'workerName': item.workerName,
                  'type': _workTypeConverter.encode(item.type),
                  'frequency':
                      _nullableDurationConverter.encode(item.frequency),
                  'lastRunning':
                      _nullableDateTimeConverter.encode(item.lastRunning),
                  'inputData':
                      _nullableWorkDataConverter.encode(item.inputData),
                  'initialDelay':
                      _nullableDurationConverter.encode(item.initialDelay),
                  'constraints_networkType':
                      _nullableNetworkTypeConverter.encode(item.networkType_)
                }),
        _workInfoUpdateAdapter = UpdateAdapter(
            database,
            'WorkInfo',
            ['id'],
            (WorkInfo item) => <String, Object?>{
                  'id': item.id,
                  'workerName': item.workerName,
                  'type': _workTypeConverter.encode(item.type),
                  'frequency':
                      _nullableDurationConverter.encode(item.frequency),
                  'lastRunning':
                      _nullableDateTimeConverter.encode(item.lastRunning),
                  'inputData':
                      _nullableWorkDataConverter.encode(item.inputData),
                  'initialDelay':
                      _nullableDurationConverter.encode(item.initialDelay),
                  'constraints_networkType':
                      _nullableNetworkTypeConverter.encode(item.networkType_)
                }),
        _workInfoDeletionAdapter = DeletionAdapter(
            database,
            'WorkInfo',
            ['id'],
            (WorkInfo item) => <String, Object?>{
                  'id': item.id,
                  'workerName': item.workerName,
                  'type': _workTypeConverter.encode(item.type),
                  'frequency':
                      _nullableDurationConverter.encode(item.frequency),
                  'lastRunning':
                      _nullableDateTimeConverter.encode(item.lastRunning),
                  'inputData':
                      _nullableWorkDataConverter.encode(item.inputData),
                  'initialDelay':
                      _nullableDurationConverter.encode(item.initialDelay),
                  'constraints_networkType':
                      _nullableNetworkTypeConverter.encode(item.networkType_)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<WorkInfo> _workInfoInsertionAdapter;

  final UpdateAdapter<WorkInfo> _workInfoUpdateAdapter;

  final DeletionAdapter<WorkInfo> _workInfoDeletionAdapter;

  @override
  Future<WorkInfo?> getWorkById(String id) async {
    return _queryAdapter.query('SELECT * FROM WorkInfo WHERE id = ?1',
        mapper: (Map<String, Object?> row) => WorkInfo(
            id: row['id'] as String,
            workerName: row['workerName'] as String,
            type: _workTypeConverter.decode(row['type'] as String),
            frequency:
                _nullableDurationConverter.decode(row['frequency'] as int?),
            inputData:
                _nullableWorkDataConverter.decode(row['inputData'] as String?),
            lastRunning:
                _nullableDateTimeConverter.decode(row['lastRunning'] as int?),
            initialDelay:
                _nullableDurationConverter.decode(row['initialDelay'] as int?),
            networkType_: _nullableNetworkTypeConverter
                .decode(row['constraints_networkType'] as String?)),
        arguments: [id]);
  }

  @override
  Future<List<WorkInfo>> getAll() async {
    return _queryAdapter.queryList('SELECT * FROM WorkInfo',
        mapper: (Map<String, Object?> row) => WorkInfo(
            id: row['id'] as String,
            workerName: row['workerName'] as String,
            type: _workTypeConverter.decode(row['type'] as String),
            frequency:
                _nullableDurationConverter.decode(row['frequency'] as int?),
            inputData:
                _nullableWorkDataConverter.decode(row['inputData'] as String?),
            lastRunning:
                _nullableDateTimeConverter.decode(row['lastRunning'] as int?),
            initialDelay:
                _nullableDurationConverter.decode(row['initialDelay'] as int?),
            networkType_: _nullableNetworkTypeConverter
                .decode(row['constraints_networkType'] as String?)));
  }

  @override
  Future<void> addWork(WorkInfo info) async {
    await _workInfoInsertionAdapter.insert(info, OnConflictStrategy.replace);
  }

  @override
  Future<void> addWorkList(List<WorkInfo> info) async {
    await _workInfoInsertionAdapter.insertList(
        info, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateWork(WorkInfo info) async {
    await _workInfoUpdateAdapter.update(info, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteWork(WorkInfo info) async {
    await _workInfoDeletionAdapter.delete(info);
  }
}

class _$TrackingDao extends TrackingDao {
  _$TrackingDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _trackingInfoInsertionAdapter = InsertionAdapter(
            database,
            'TrackingInfo',
            (TrackingInfo item) => <String, Object?>{
                  'id': _trackingIdConverter.encode(item.id),
                  'trackNumber': item.trackNumber,
                  'status': _trackingStatusConverter.encode(item.status),
                  'hasNewInfo': item.hasNewInfo ? 1 : 0,
                  'hasNonRetryableError': item.hasNonRetryableError ? 1 : 0,
                  'invalidTrackNumber': item.invalidTrackNumber ? 1 : 0,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener),
        _trackingResponseInfoInsertionAdapter = InsertionAdapter(
            database,
            'TrackingResponseInfo',
            (TrackingResponseInfo item) => <String, Object?>{
                  'id': item.id,
                  'trackNumber': item.trackNumber,
                  'trackingId': _trackingIdConverter.encode(item.trackingId),
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'status':
                      _trackingResponseStatusConverter.encode(item.status),
                  'dateTime': _dateTimeConverter.encode(item.dateTime),
                  'error_type': _nullableTrackingErrorTypeConverter
                      .encode(item.errorType_),
                  'error_isRetryable': item.errorIsRetryable_ ? 1 : 0,
                  'error_message': item.errorMessage_,
                  'error_code': item.errorCode_,
                  'error_stackTrace': item.errorStackTrace_
                }),
        _trackingInfoUpdateAdapter = UpdateAdapter(
            database,
            'TrackingInfo',
            ['id'],
            (TrackingInfo item) => <String, Object?>{
                  'id': _trackingIdConverter.encode(item.id),
                  'trackNumber': item.trackNumber,
                  'status': _trackingStatusConverter.encode(item.status),
                  'hasNewInfo': item.hasNewInfo ? 1 : 0,
                  'hasNonRetryableError': item.hasNonRetryableError ? 1 : 0,
                  'invalidTrackNumber': item.invalidTrackNumber ? 1 : 0,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener),
        _trackingInfoDeletionAdapter = DeletionAdapter(
            database,
            'TrackingInfo',
            ['id'],
            (TrackingInfo item) => <String, Object?>{
                  'id': _trackingIdConverter.encode(item.id),
                  'trackNumber': item.trackNumber,
                  'status': _trackingStatusConverter.encode(item.status),
                  'hasNewInfo': item.hasNewInfo ? 1 : 0,
                  'hasNonRetryableError': item.hasNonRetryableError ? 1 : 0,
                  'invalidTrackNumber': item.invalidTrackNumber ? 1 : 0,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TrackingInfo> _trackingInfoInsertionAdapter;

  final InsertionAdapter<TrackingResponseInfo>
      _trackingResponseInfoInsertionAdapter;

  final UpdateAdapter<TrackingInfo> _trackingInfoUpdateAdapter;

  final DeletionAdapter<TrackingInfo> _trackingInfoDeletionAdapter;

  @override
  Future<List<TrackingInfo>> getTrackingInfoByTrackAsc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingInfo WHERE trackNumber = ?1   ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => TrackingInfo(id: _trackingIdConverter.decode(row['id'] as String), trackNumber: row['trackNumber'] as String, status: _trackingStatusConverter.decode(row['status'] as String), hasNewInfo: (row['hasNewInfo'] as int) != 0, hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0, invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0, dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber]);
  }

  @override
  Future<List<TrackingInfo>> getTrackingInfoByTrackDesc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingInfo WHERE trackNumber = ?1   ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => TrackingInfo(id: _trackingIdConverter.decode(row['id'] as String), trackNumber: row['trackNumber'] as String, status: _trackingStatusConverter.decode(row['status'] as String), hasNewInfo: (row['hasNewInfo'] as int) != 0, hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0, invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0, dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber]);
  }

  @override
  Future<List<TrackingInfo>> getAllTrackingInfo() async {
    return _queryAdapter.queryList('SELECT * FROM TrackingInfo',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)));
  }

  @override
  Stream<List<TrackingInfo>> observeAllTrackingInfo() {
    return _queryAdapter.queryListStream('SELECT * FROM TrackingInfo',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        queryableName: 'TrackingInfo',
        isView: false);
  }

  @override
  Stream<List<TrackingInfo>> observeTrackingInfoByTrackAsc(String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM TrackingInfo WHERE trackNumber = ?1   ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber],
        queryableName: 'TrackingInfo',
        isView: false);
  }

  @override
  Stream<List<TrackingInfo>> observeTrackingInfoByTrackDesc(
      String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM TrackingInfo WHERE trackNumber = ?1   ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [trackNumber],
        queryableName: 'TrackingInfo',
        isView: false);
  }

  @override
  Future<List<TrackingInfo>> getLatestTrackingInfoByListAsc(
      List<String> trackNumbersList) async {
    const offset = 1;
    final _sqliteVariablesForTrackNumbersList = Iterable<String>.generate(
        trackNumbersList.length, (i) => '?${i + offset}').join(',');
    return _queryAdapter.queryList(
        'SELECT *, MAX(dateTime) FROM TrackingInfo   WHERE trackNumber IN (' +
            _sqliteVariablesForTrackNumbersList +
            ')   GROUP BY trackNumber ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [...trackNumbersList]);
  }

  @override
  Future<List<TrackingInfo>> getLatestTrackingInfoByListDesc(
      List<String> trackNumbersList) async {
    const offset = 1;
    final _sqliteVariablesForTrackNumbersList = Iterable<String>.generate(
        trackNumbersList.length, (i) => '?${i + offset}').join(',');
    return _queryAdapter.queryList(
        'SELECT *, MAX(dateTime) FROM TrackingInfo   WHERE trackNumber IN (' +
            _sqliteVariablesForTrackNumbersList +
            ')   GROUP BY trackNumber ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => TrackingInfo(
            id: _trackingIdConverter.decode(row['id'] as String),
            trackNumber: row['trackNumber'] as String,
            status: _trackingStatusConverter.decode(row['status'] as String),
            hasNewInfo: (row['hasNewInfo'] as int) != 0,
            hasNonRetryableError: (row['hasNonRetryableError'] as int) != 0,
            invalidTrackNumber: (row['invalidTrackNumber'] as int) != 0,
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int)),
        arguments: [...trackNumbersList]);
  }

  @override
  Future<List<TrackingResponseInfo>> getResponseByTrackingId(
      TrackingId id) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingResponseInfo WHERE trackingId = ?1',
        mapper: (Map<String, Object?> row) => TrackingResponseInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            trackingId:
                _trackingIdConverter.decode(row['trackingId'] as String),
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int),
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            status: _trackingResponseStatusConverter
                .decode(row['status'] as String),
            errorType_: _nullableTrackingErrorTypeConverter
                .decode(row['error_type'] as String?),
            errorIsRetryable_: (row['error_isRetryable'] as int) != 0,
            errorMessage_: row['error_message'] as String?,
            errorCode_: row['error_code'] as String?,
            errorStackTrace_: row['error_stackTrace'] as String?),
        arguments: [_trackingIdConverter.encode(id)]);
  }

  @override
  Future<List<TrackingResponseInfo>> getAllResponse() async {
    return _queryAdapter.queryList('SELECT * FROM TrackingResponseInfo',
        mapper: (Map<String, Object?> row) => TrackingResponseInfo(
            id: row['id'] as int?,
            trackNumber: row['trackNumber'] as String,
            trackingId:
                _trackingIdConverter.decode(row['trackingId'] as String),
            dateTime: _dateTimeConverter.decode(row['dateTime'] as int),
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            status: _trackingResponseStatusConverter
                .decode(row['status'] as String),
            errorType_: _nullableTrackingErrorTypeConverter
                .decode(row['error_type'] as String?),
            errorIsRetryable_: (row['error_isRetryable'] as int) != 0,
            errorMessage_: row['error_message'] as String?,
            errorCode_: row['error_code'] as String?,
            errorStackTrace_: row['error_stackTrace'] as String?));
  }

  @override
  Future<List<TrackingResponseInfo>> getResponseByTrackAsc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingResponseInfo WHERE trackNumber = ?1   ORDER BY dateTime ASC',
        mapper: (Map<String, Object?> row) => TrackingResponseInfo(id: row['id'] as int?, trackNumber: row['trackNumber'] as String, trackingId: _trackingIdConverter.decode(row['trackingId'] as String), dateTime: _dateTimeConverter.decode(row['dateTime'] as int), serviceType: _postalServiceTypeConverter.decode(row['serviceType'] as String), status: _trackingResponseStatusConverter.decode(row['status'] as String), errorType_: _nullableTrackingErrorTypeConverter.decode(row['error_type'] as String?), errorIsRetryable_: (row['error_isRetryable'] as int) != 0, errorMessage_: row['error_message'] as String?, errorCode_: row['error_code'] as String?, errorStackTrace_: row['error_stackTrace'] as String?),
        arguments: [trackNumber]);
  }

  @override
  Future<List<TrackingResponseInfo>> getResponseByTrackDesc(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackingResponseInfo WHERE trackNumber = ?1   ORDER BY dateTime DESC',
        mapper: (Map<String, Object?> row) => TrackingResponseInfo(id: row['id'] as int?, trackNumber: row['trackNumber'] as String, trackingId: _trackingIdConverter.decode(row['trackingId'] as String), dateTime: _dateTimeConverter.decode(row['dateTime'] as int), serviceType: _postalServiceTypeConverter.decode(row['serviceType'] as String), status: _trackingResponseStatusConverter.decode(row['status'] as String), errorType_: _nullableTrackingErrorTypeConverter.decode(row['error_type'] as String?), errorIsRetryable_: (row['error_isRetryable'] as int) != 0, errorMessage_: row['error_message'] as String?, errorCode_: row['error_code'] as String?, errorStackTrace_: row['error_stackTrace'] as String?),
        arguments: [trackNumber]);
  }

  @override
  Future<void> insertTrackingInfoList(List<TrackingInfo> infoList) async {
    await _trackingInfoInsertionAdapter.insertList(
        infoList, OnConflictStrategy.replace);
  }

  @override
  Future<void> addResponseList(List<TrackingResponseInfo> infoList) async {
    await _trackingResponseInfoInsertionAdapter.insertList(
        infoList, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateTrackingInfoList(List<TrackingInfo> infoList) async {
    await _trackingInfoUpdateAdapter.updateList(
        infoList, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateTrackingInfo(TrackingInfo info) async {
    await _trackingInfoUpdateAdapter.update(info, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteTrackingInfo(TrackingInfo info) async {
    await _trackingInfoDeletionAdapter.delete(info);
  }

  @override
  Future<void> deleteTrackingInfoByList(List<TrackingInfo> infoList) async {
    await _trackingInfoDeletionAdapter.deleteList(infoList);
  }
}

class _$TrackNumberServiceDao extends TrackNumberServiceDao {
  _$TrackNumberServiceDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _trackNumberServiceInsertionAdapter = InsertionAdapter(
            database,
            'TrackNumberService',
            (TrackNumberService item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'isActive': item.isActive ? 1 : 0
                },
            changeListener),
        _trackNumberServiceUpdateAdapter = UpdateAdapter(
            database,
            'TrackNumberService',
            ['trackNumber', 'serviceType'],
            (TrackNumberService item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'isActive': item.isActive ? 1 : 0
                },
            changeListener),
        _trackNumberServiceDeletionAdapter = DeletionAdapter(
            database,
            'TrackNumberService',
            ['trackNumber', 'serviceType'],
            (TrackNumberService item) => <String, Object?>{
                  'trackNumber': item.trackNumber,
                  'serviceType':
                      _postalServiceTypeConverter.encode(item.serviceType),
                  'isActive': item.isActive ? 1 : 0
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<TrackNumberService>
      _trackNumberServiceInsertionAdapter;

  final UpdateAdapter<TrackNumberService> _trackNumberServiceUpdateAdapter;

  final DeletionAdapter<TrackNumberService> _trackNumberServiceDeletionAdapter;

  @override
  Stream<List<TrackNumberService>> observeAllTrackNumberServices() {
    return _queryAdapter.queryListStream('SELECT * FROM TrackNumberService',
        mapper: (Map<String, Object?> row) => TrackNumberService(
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            isActive: (row['isActive'] as int) != 0),
        queryableName: 'TrackNumberService',
        isView: false);
  }

  @override
  Stream<List<TrackNumberService>> observeTrackNumberServices(
      String trackNumber) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM TrackNumberService WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => TrackNumberService(
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            isActive: (row['isActive'] as int) != 0),
        arguments: [trackNumber],
        queryableName: 'TrackNumberService',
        isView: false);
  }

  @override
  Future<List<TrackNumberService>> getAllTrackNumberServices() async {
    return _queryAdapter.queryList('SELECT * FROM TrackNumberService',
        mapper: (Map<String, Object?> row) => TrackNumberService(
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            isActive: (row['isActive'] as int) != 0));
  }

  @override
  Future<List<TrackNumberService>> getTrackNumberServices(
      String trackNumber) async {
    return _queryAdapter.queryList(
        'SELECT * FROM TrackNumberService WHERE trackNumber = ?1',
        mapper: (Map<String, Object?> row) => TrackNumberService(
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            isActive: (row['isActive'] as int) != 0),
        arguments: [trackNumber]);
  }

  @override
  Future<List<TrackNumberService>> getTrackNumberServicesByList(
      List<String> trackNumberList) async {
    const offset = 1;
    final _sqliteVariablesForTrackNumberList = Iterable<String>.generate(
        trackNumberList.length, (i) => '?${i + offset}').join(',');
    return _queryAdapter.queryList(
        'SELECT * FROM TrackNumberService WHERE trackNumber IN (' +
            _sqliteVariablesForTrackNumberList +
            ')',
        mapper: (Map<String, Object?> row) => TrackNumberService(
            trackNumber: row['trackNumber'] as String,
            serviceType: _postalServiceTypeConverter
                .decode(row['serviceType'] as String),
            isActive: (row['isActive'] as int) != 0),
        arguments: [...trackNumberList]);
  }

  @override
  Future<void> addTrackNumberServices(List<TrackNumberService> infoList) async {
    await _trackNumberServiceInsertionAdapter.insertList(
        infoList, OnConflictStrategy.replace);
  }

  @override
  Future<void> updateTrackNumberServices(
      List<TrackNumberService> infoList) async {
    await _trackNumberServiceUpdateAdapter.updateList(
        infoList, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteTrackNumberServices(
      List<TrackNumberService> infoList) async {
    await _trackNumberServiceDeletionAdapter.deleteList(infoList);
  }
}

// ignore_for_file: unused_element
final _trackingServiceTypeConverter = TrackingServiceTypeConverter();
final _postalServiceTypeConverter = PostalServiceTypeConverter();
final _nullableDateTimeConverter = NullableDateTimeConverter();
final _dateTimeConverter = DateTimeConverter();
final _shipmentStatusTypeConverter = ShipmentStatusTypeConverter();
final _nullableMeasurementConverter = NullableMeasurementConverter();
final _nullableShipmentStatusTypeConverter =
    NullableShipmentStatusTypeConverter();
final _nullableDurationConverter = NullableDurationConverter();
final _workTypeConverter = WorkTypeConverter();
final _nullableWorkDataConverter = NullableWorkDataConverter();
final _nullableNetworkTypeConverter = NullableNetworkTypeConverter();
final _trackingIdConverter = TrackingIdConverter();
final _trackingStatusConverter = TrackingStatusConverter();
final _trackingResponseStatusConverter = TrackingResponseStatusConverter();
final _nullableTrackingErrorTypeConverter =
    NullableTrackingErrorTypeConverter();
