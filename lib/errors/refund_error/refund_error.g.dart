// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefundRejected _$RefundRejectedFromJson(Map json) =>
    _RefundRejected(message: json['message'] as String);

Map<String, dynamic> _$RefundRejectedToJson(_RefundRejected instance) =>
    <String, dynamic>{'message': instance.message};

_RefundDeclined _$RefundDeclinedFromJson(Map json) => _RefundDeclined(
  receipts: (json['receipts'] as List<dynamic>)
      .map(
        (e) => TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)),
      )
      .toList(),
);

Map<String, dynamic> _$RefundDeclinedToJson(_RefundDeclined instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_RefundAuthenticationFailed _$RefundAuthenticationFailedFromJson(Map json) =>
    _RefundAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$RefundAuthenticationFailedToJson(
  _RefundAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_RefundInvalidStatus _$RefundInvalidStatusFromJson(Map json) =>
    _RefundInvalidStatus(required: json['required']);

Map<String, dynamic> _$RefundInvalidStatusToJson(
  _RefundInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_RefundGeneralFailure _$RefundGeneralFailureFromJson(Map json) =>
    _RefundGeneralFailure(required: json['required']);

Map<String, dynamic> _$RefundGeneralFailureToJson(
  _RefundGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
