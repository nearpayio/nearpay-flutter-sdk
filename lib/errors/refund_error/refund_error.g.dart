// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RefundRejected _$$_RefundRejectedFromJson(Map json) => _$_RefundRejected(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_RefundRejectedToJson(_$_RefundRejected instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_RefundDeclined _$$_RefundDeclinedFromJson(Map json) => _$_RefundDeclined(
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_RefundDeclinedToJson(_$_RefundDeclined instance) =>
    <String, dynamic>{
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
    };

_$_RefundAuthenticationFailed _$$_RefundAuthenticationFailedFromJson(
        Map json) =>
    _$_RefundAuthenticationFailed(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_RefundAuthenticationFailedToJson(
        _$_RefundAuthenticationFailed instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$_RefundInvalidStatus _$$_RefundInvalidStatusFromJson(Map json) =>
    _$_RefundInvalidStatus(
      required: json['required'],
    );

Map<String, dynamic> _$$_RefundInvalidStatusToJson(
        _$_RefundInvalidStatus instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$_RefundGeneralFailure _$$_RefundGeneralFailureFromJson(Map json) =>
    _$_RefundGeneralFailure(
      required: json['required'],
    );

Map<String, dynamic> _$$_RefundGeneralFailureToJson(
        _$_RefundGeneralFailure instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
