// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reversal_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReversalFailureMessage _$ReversalFailureMessageFromJson(Map json) =>
    _ReversalFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$ReversalFailureMessageToJson(
  _ReversalFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_ReversalAuthenticationFailed _$ReversalAuthenticationFailedFromJson(
  Map json,
) => _ReversalAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$ReversalAuthenticationFailedToJson(
  _ReversalAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_ReversalInvalidStatus _$ReversalInvalidStatusFromJson(Map json) =>
    _ReversalInvalidStatus(required: json['required']);

Map<String, dynamic> _$ReversalInvalidStatusToJson(
  _ReversalInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_ReversalGeneralFailure _$ReversalGeneralFailureFromJson(Map json) =>
    _ReversalGeneralFailure(required: json['required']);

Map<String, dynamic> _$ReversalGeneralFailureToJson(
  _ReversalGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
