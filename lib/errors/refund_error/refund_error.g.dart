// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundRejectedImpl _$$RefundRejectedImplFromJson(Map json) =>
    _$RefundRejectedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RefundRejectedImplToJson(
        _$RefundRejectedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$RefundDeclinedImpl _$$RefundDeclinedImplFromJson(Map json) =>
    _$RefundDeclinedImpl(
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$RefundDeclinedImplToJson(
        _$RefundDeclinedImpl instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_$RefundAuthenticationFailedImpl _$$RefundAuthenticationFailedImplFromJson(
        Map json) =>
    _$RefundAuthenticationFailedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$RefundAuthenticationFailedImplToJson(
        _$RefundAuthenticationFailedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$RefundInvalidStatusImpl _$$RefundInvalidStatusImplFromJson(Map json) =>
    _$RefundInvalidStatusImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$RefundInvalidStatusImplToJson(
        _$RefundInvalidStatusImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$RefundGeneralFailureImpl _$$RefundGeneralFailureImplFromJson(Map json) =>
    _$RefundGeneralFailureImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$RefundGeneralFailureImplToJson(
        _$RefundGeneralFailureImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
