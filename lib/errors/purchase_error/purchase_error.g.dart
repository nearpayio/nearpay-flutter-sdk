// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseRejected _$$_PurchaseRejectedFromJson(Map json) =>
    _$_PurchaseRejected(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_PurchaseRejectedToJson(_$_PurchaseRejected instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_PurchaseDeclined _$$_PurchaseDeclinedFromJson(Map json) =>
    _$_PurchaseDeclined(
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseDeclinedToJson(_$_PurchaseDeclined instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_$_PurchaseAuthenticationFailed _$$_PurchaseAuthenticationFailedFromJson(
        Map json) =>
    _$_PurchaseAuthenticationFailed(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_PurchaseAuthenticationFailedToJson(
        _$_PurchaseAuthenticationFailed instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_PurchaseInvalidStatus _$$_PurchaseInvalidStatusFromJson(Map json) =>
    _$_PurchaseInvalidStatus(
      required: json['required'],
    );

Map<String, dynamic> _$$_PurchaseInvalidStatusToJson(
        _$_PurchaseInvalidStatus instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$_PurchaseGeneralFailure _$$_PurchaseGeneralFailureFromJson(Map json) =>
    _$_PurchaseGeneralFailure(
      required: json['required'],
    );

Map<String, dynamic> _$$_PurchaseGeneralFailureToJson(
        _$_PurchaseGeneralFailure instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
