// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseRejectedImpl _$$PurchaseRejectedImplFromJson(Map json) =>
    _$PurchaseRejectedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$PurchaseRejectedImplToJson(
        _$PurchaseRejectedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$PurchaseDeclinedImpl _$$PurchaseDeclinedImplFromJson(Map json) =>
    _$PurchaseDeclinedImpl(
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$PurchaseDeclinedImplToJson(
        _$PurchaseDeclinedImpl instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_$PurchaseAuthenticationFailedImpl _$$PurchaseAuthenticationFailedImplFromJson(
        Map json) =>
    _$PurchaseAuthenticationFailedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$PurchaseAuthenticationFailedImplToJson(
        _$PurchaseAuthenticationFailedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$PurchaseInvalidStatusImpl _$$PurchaseInvalidStatusImplFromJson(Map json) =>
    _$PurchaseInvalidStatusImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$PurchaseInvalidStatusImplToJson(
        _$PurchaseInvalidStatusImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$PurchaseGeneralFailureImpl _$$PurchaseGeneralFailureImplFromJson(Map json) =>
    _$PurchaseGeneralFailureImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$PurchaseGeneralFailureImplToJson(
        _$PurchaseGeneralFailureImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
