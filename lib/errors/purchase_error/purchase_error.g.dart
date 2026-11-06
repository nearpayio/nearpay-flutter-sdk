// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PurchaseRejected _$PurchaseRejectedFromJson(Map json) =>
    _PurchaseRejected(message: json['message'] as String);

Map<String, dynamic> _$PurchaseRejectedToJson(_PurchaseRejected instance) =>
    <String, dynamic>{'message': instance.message};

_PurchaseDeclined _$PurchaseDeclinedFromJson(Map json) => _PurchaseDeclined(
  receipts: (json['receipts'] as List<dynamic>)
      .map(
        (e) => TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)),
      )
      .toList(),
);

Map<String, dynamic> _$PurchaseDeclinedToJson(_PurchaseDeclined instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_PurchaseAuthenticationFailed _$PurchaseAuthenticationFailedFromJson(
  Map json,
) => _PurchaseAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$PurchaseAuthenticationFailedToJson(
  _PurchaseAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_PurchaseInvalidStatus _$PurchaseInvalidStatusFromJson(Map json) =>
    _PurchaseInvalidStatus(required: json['required']);

Map<String, dynamic> _$PurchaseInvalidStatusToJson(
  _PurchaseInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_PurchaseGeneralFailure _$PurchaseGeneralFailureFromJson(Map json) =>
    _PurchaseGeneralFailure(required: json['required']);

Map<String, dynamic> _$PurchaseGeneralFailureToJson(
  _PurchaseGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
