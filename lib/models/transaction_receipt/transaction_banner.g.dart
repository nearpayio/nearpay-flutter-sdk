// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionBannerListImpl _$$TransactionBannerListImplFromJson(Map json) =>
    _$TransactionBannerListImpl(
      count: (json['count'] as num).toDouble(),
      transactionBanners: (json['transactionBanners'] as List<dynamic>?)
              ?.map((e) => TransactionBanner.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$TransactionBannerListImplToJson(
        _$TransactionBannerListImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'transactionBanners':
          instance.transactionBanners.map((e) => e.toJson()).toList(),
    };

_$TransactionBannerImpl _$$TransactionBannerImplFromJson(Map json) =>
    _$TransactionBannerImpl(
      uuid: json['uuid'] as String,
      scheme: json['scheme'] as String,
      pan: json['pan'] as String,
      amountAuthorized: json['amount_authorized'] as String,
      currency: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['currency'] as Map)),
      transactionType: json['transaction_type'] as String,
      isApproved: json['is_approved'] as bool,
      isReversed: json['is_reversed'] as bool,
      startDate: json['start_date'] as String,
      startTime: json['start_time'] as String,
      customer_reference_number: json['customer_reference_number'] as String?,
      retrieval_reference_number: json['retrieval_reference_number'] as String?,
    );

Map<String, dynamic> _$$TransactionBannerImplToJson(
        _$TransactionBannerImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'scheme': instance.scheme,
      'pan': instance.pan,
      'amount_authorized': instance.amountAuthorized,
      'currency': instance.currency.toJson(),
      'transaction_type': instance.transactionType,
      'is_approved': instance.isApproved,
      'is_reversed': instance.isReversed,
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'customer_reference_number': instance.customer_reference_number,
      'retrieval_reference_number': instance.retrieval_reference_number,
    };
