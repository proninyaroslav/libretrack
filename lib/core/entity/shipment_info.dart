// Copyright (C) 2021-2024 Yaroslav Pronin <proninyaroslav@mail.ru>
// Copyright (C) 2021 Insurgo Inc. <insurgo@riseup.net>
//
// This file is part of LibreTrack.
//
// LibreTrack is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// LibreTrack is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with LibreTrack.  If not, see <http://www.gnu.org/licenses/>.

import 'package:equatable/equatable.dart';
import 'package:floor/floor.dart';
import 'package:libretrack/core/entity/dimensions.dart';
import 'package:libretrack/core/entity/entity.dart';

import 'converter/converter.dart';

@TypeConverters([
  PostalServiceTypeConverter,
  NullableDateTimeConverter,
  NullableMeasurementConverter,
  ShipmentStatusTypeConverter,
])
@Entity(
  foreignKeys: [
    ForeignKey(
      entity: TrackNumberInfo,
      childColumns: ['trackNumber'],
      parentColumns: ['trackNumber'],
      onDelete: ForeignKeyAction.cascade,
    ),
  ],
)
class ShipmentInfo extends Equatable {
  @PrimaryKey(autoGenerate: true)
  final int? id;

  final String trackNumber;

  final PostalServiceType serviceType;

  /// For example, 'UPS Standard'
  final String? serviceDescription;

  /// For example, 'Small Package'
  final String? shipmentDescription;

  final String? signedForByName;

  @ignore
  final UnitOfMeasurement? weight;

  @ignore
  final UnitOfMeasurement? volume;

  final DateTime? pickupDate;

  final DateTime? deliveryDate;

  final DateTime? estimatedDeliveryDate;

  final DateTime? scheduledDeliveryDate;

  @ignore
  final Currency? cashOnDelivery;

  @ignore
  final Address? shipperAddress;

  @ignore
  final Address? receiverAddress;

  /// Any additional message that a service sent along with tracking information,
  /// for example, a warning or information
  final String? serviceMessage;

  @ignore
  final Currency? declaredValue;

  @ignore
  final Currency? customDuty;

  @ignore
  final Currency? additionalRateFee;

  @ignore
  final Currency? shippingRateFee;

  @ignore
  final Currency? insuranceRateFee;

  final String? shipperName;

  final String? receiverName;

  @ignore
  final Dimensions? dimensions;

  // Optional, if the service provides this status separately
  // from the activity (ShipmentActivityInfo)
  final ShipmentStatusType? currentStatus;

  // TODO: remove it; wait for @Embedded
  ShipmentInfo({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    this.serviceDescription,
    this.shipmentDescription,
    this.signedForByName,
    this.serviceMessage,
    this.pickupDate,
    this.deliveryDate,
    this.estimatedDeliveryDate,
    this.scheduledDeliveryDate,
    this.shipperName,
    this.receiverName,
    this.currentStatus,
    this.weightValue_,
    this.weightMeasurement_,
    this.volumeValue_,
    this.volumeMeasurement_,
    this.cashOnDeliveryValue_,
    this.cashOnDeliveryCurrencyCode_,
    this.shipperLocation_,
    this.shipperPostalCode_,
    this.shipperCountryCode_,
    this.receiverLocation_,
    this.receiverPostalCode_,
    this.receiverCountryCode_,
    this.declaredValueValue_,
    this.declaredValueCurrencyCode_,
    this.customDutyValue_,
    this.customDutyCurrencyCode_,
    this.additionalRateFeeValue_,
    this.additionalRateFeeCurrencyCode_,
    this.shippingRateFeeValue_,
    this.shippingRateFeeCurrencyCode_,
    this.insuranceRateFeeValue_,
    this.insuranceRateFeeCurrencyCode_,
    this.dimensionsWidthValue_,
    this.dimensionsWidthMeasurement_,
    this.dimensionsHeightValue_,
    this.dimensionsHeightMeasurement_,
    this.dimensionsLengthValue_,
    this.dimensionsLengthMeasurement_,
  })  : cashOnDelivery =
            cashOnDeliveryValue_ == null || cashOnDeliveryCurrencyCode_ == null
                ? null
                : Currency(cashOnDeliveryValue_, cashOnDeliveryCurrencyCode_),
        shipperAddress = shipperLocation_ == null &&
                shipperPostalCode_ == null &&
                shipperCountryCode_ == null
            ? null
            : Address(
                location: shipperLocation_,
                postalCode: shipperPostalCode_,
                countryCode: shipperCountryCode_,
              ),
        receiverAddress = receiverLocation_ == null &&
                receiverPostalCode_ == null &&
                receiverCountryCode_ == null
            ? null
            : Address(
                location: receiverLocation_,
                postalCode: receiverPostalCode_,
                countryCode: receiverCountryCode_,
              ),
        weight = weightValue_ == null || weightMeasurement_ == null
            ? null
            : UnitOfMeasurement(
                value: weightValue_,
                measurement: weightMeasurement_,
              ),
        volume = volumeValue_ == null || volumeMeasurement_ == null
            ? null
            : UnitOfMeasurement(
                value: volumeValue_,
                measurement: volumeMeasurement_,
              ),
        declaredValue =
            declaredValueValue_ == null || declaredValueCurrencyCode_ == null
                ? null
                : Currency(declaredValueValue_, declaredValueCurrencyCode_),
        customDuty = customDutyValue_ == null || customDutyCurrencyCode_ == null
            ? null
            : Currency(customDutyValue_, customDutyCurrencyCode_),
        additionalRateFee = additionalRateFeeValue_ == null ||
                additionalRateFeeCurrencyCode_ == null
            ? null
            : Currency(additionalRateFeeValue_, additionalRateFeeCurrencyCode_),
        shippingRateFee = shippingRateFeeValue_ == null ||
                shippingRateFeeCurrencyCode_ == null
            ? null
            : Currency(shippingRateFeeValue_, shippingRateFeeCurrencyCode_),
        insuranceRateFee = insuranceRateFeeValue_ == null ||
                insuranceRateFeeCurrencyCode_ == null
            ? null
            : Currency(insuranceRateFeeValue_, insuranceRateFeeCurrencyCode_),
        dimensions = dimensionsWidthValue_ == null ||
                dimensionsHeightValue_ == null ||
                dimensionsLengthValue_ == null ||
                dimensionsWidthMeasurement_ == null ||
                dimensionsHeightMeasurement_ == null ||
                dimensionsLengthMeasurement_ == null
            ? null
            : Dimensions(
                width: UnitOfMeasurement(
                  value: dimensionsWidthValue_,
                  measurement: dimensionsWidthMeasurement_,
                ),
                height: UnitOfMeasurement(
                  value: dimensionsHeightValue_,
                  measurement: dimensionsHeightMeasurement_,
                ),
                length: UnitOfMeasurement(
                  value: dimensionsLengthValue_,
                  measurement: dimensionsLengthMeasurement_,
                ),
              );

  ShipmentInfo.from({
    this.id,
    required this.trackNumber,
    required this.serviceType,
    this.serviceDescription,
    this.shipmentDescription,
    this.signedForByName,
    this.weight,
    this.volume,
    this.pickupDate,
    this.deliveryDate,
    this.estimatedDeliveryDate,
    this.scheduledDeliveryDate,
    this.cashOnDelivery,
    this.shipperAddress,
    this.receiverAddress,
    this.serviceMessage,
    this.declaredValue,
    this.customDuty,
    this.additionalRateFee,
    this.shippingRateFee,
    this.insuranceRateFee,
    this.shipperName,
    this.receiverName,
    this.dimensions,
    this.currentStatus,
  })  : cashOnDeliveryValue_ = cashOnDelivery?.value,
        cashOnDeliveryCurrencyCode_ = cashOnDelivery?.currencyCode,
        shipperLocation_ = shipperAddress?.location,
        shipperPostalCode_ = shipperAddress?.postalCode,
        shipperCountryCode_ = shipperAddress?.countryCode,
        receiverLocation_ = receiverAddress?.location,
        receiverPostalCode_ = receiverAddress?.postalCode,
        receiverCountryCode_ = receiverAddress?.countryCode,
        weightValue_ = weight?.value,
        weightMeasurement_ = weight?.measurement,
        volumeValue_ = volume?.value,
        volumeMeasurement_ = volume?.measurement,
        declaredValueValue_ = declaredValue?.value,
        declaredValueCurrencyCode_ = declaredValue?.currencyCode,
        customDutyValue_ = customDuty?.value,
        customDutyCurrencyCode_ = customDuty?.currencyCode,
        additionalRateFeeValue_ = additionalRateFee?.value,
        additionalRateFeeCurrencyCode_ = additionalRateFee?.currencyCode,
        shippingRateFeeValue_ = shippingRateFee?.value,
        shippingRateFeeCurrencyCode_ = shippingRateFee?.currencyCode,
        insuranceRateFeeValue_ = insuranceRateFee?.value,
        insuranceRateFeeCurrencyCode_ = insuranceRateFee?.currencyCode,
        dimensionsHeightMeasurement_ = dimensions?.height.measurement,
        dimensionsHeightValue_ = dimensions?.height.value,
        dimensionsWidthMeasurement_ = dimensions?.width.measurement,
        dimensionsWidthValue_ = dimensions?.width.value,
        dimensionsLengthMeasurement_ = dimensions?.length.measurement,
        dimensionsLengthValue_ = dimensions?.length.value;

  @override
  List<Object?> get props => [
        id,
        trackNumber,
        serviceType,
        serviceDescription,
        shipmentDescription,
        signedForByName,
        weight,
        volume,
        pickupDate,
        deliveryDate,
        estimatedDeliveryDate,
        scheduledDeliveryDate,
        cashOnDelivery,
        shipperAddress,
        receiverAddress,
        serviceMessage,
        declaredValue,
        customDuty,
        additionalRateFee,
        shippingRateFee,
        insuranceRateFee,
        shipperName,
        receiverName,
        dimensions,
        currentStatus,
      ];

  @override
  bool get stringify => true;

  // TODO: remove it; wait for @Embedded
  //===================================================
  @ColumnInfo(name: 'cashOnDelivery_value')
  final double? cashOnDeliveryValue_;

  @ColumnInfo(name: 'cashOnDelivery_currencyCode')
  final String? cashOnDeliveryCurrencyCode_;

  @ColumnInfo(name: 'shipper_location')
  final String? shipperLocation_;

  @ColumnInfo(name: 'shipper_postalCode')
  final String? shipperPostalCode_;

  @ColumnInfo(name: 'shipper_countryCode')
  final String? shipperCountryCode_;

  @ColumnInfo(name: 'receiver_location')
  final String? receiverLocation_;

  @ColumnInfo(name: 'receiver_postalCode')
  final String? receiverPostalCode_;

  @ColumnInfo(name: 'receiver_countryCode')
  final String? receiverCountryCode_;

  @ColumnInfo(name: 'weight_Value')
  final double? weightValue_;

  @ColumnInfo(name: 'weight_Measurement')
  final Measurement? weightMeasurement_;

  @ColumnInfo(name: 'volume_Value')
  final double? volumeValue_;

  @ColumnInfo(name: 'volume_Measurement')
  final Measurement? volumeMeasurement_;

  @ColumnInfo(name: 'declaredValue_value')
  final double? declaredValueValue_;

  @ColumnInfo(name: 'declaredValue_currencyCode')
  final String? declaredValueCurrencyCode_;

  @ColumnInfo(name: 'customDuty_value')
  final double? customDutyValue_;

  @ColumnInfo(name: 'customDuty_currencyCode')
  final String? customDutyCurrencyCode_;

  @ColumnInfo(name: 'additionalRateFee_value')
  final double? additionalRateFeeValue_;

  @ColumnInfo(name: 'additionalRateFee_currencyCode')
  final String? additionalRateFeeCurrencyCode_;

  @ColumnInfo(name: 'shippingRateFee_value')
  final double? shippingRateFeeValue_;

  @ColumnInfo(name: 'shippingRateFee_currencyCode')
  final String? shippingRateFeeCurrencyCode_;

  @ColumnInfo(name: 'insuranceRateFee_value')
  final double? insuranceRateFeeValue_;

  @ColumnInfo(name: 'insuranceRateFee_currencyCode')
  final String? insuranceRateFeeCurrencyCode_;

  @ColumnInfo(name: 'dimensions_widthValue')
  final double? dimensionsWidthValue_;

  @ColumnInfo(name: 'dimensions_widthMeasurement')
  final Measurement? dimensionsWidthMeasurement_;

  @ColumnInfo(name: 'dimensions_heightValue')
  final double? dimensionsHeightValue_;

  @ColumnInfo(name: 'dimensions_heightMeasurement')
  final Measurement? dimensionsHeightMeasurement_;

  @ColumnInfo(name: 'dimensions_lenghtValue')
  final double? dimensionsLengthValue_;

  @ColumnInfo(name: 'dimensions_lenghtMeasurement')
  final Measurement? dimensionsLengthMeasurement_;
}
