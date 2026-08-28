// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconcile_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReconcileFailureMessage _$ReconcileFailureMessageFromJson(Map json) =>
    _ReconcileFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$ReconcileFailureMessageToJson(
  _ReconcileFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_ReconcileAuthenticationFailed _$ReconcileAuthenticationFailedFromJson(
  Map json,
) => _ReconcileAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$ReconcileAuthenticationFailedToJson(
  _ReconcileAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_ReconcileInvalidStatus _$ReconcileInvalidStatusFromJson(Map json) =>
    _ReconcileInvalidStatus(required: json['required']);

Map<String, dynamic> _$ReconcileInvalidStatusToJson(
  _ReconcileInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_ReconcileGeneralFailure _$ReconcileGeneralFailureFromJson(Map json) =>
    _ReconcileGeneralFailure(required: json['required']);

Map<String, dynamic> _$ReconcileGeneralFailureToJson(
  _ReconcileGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
