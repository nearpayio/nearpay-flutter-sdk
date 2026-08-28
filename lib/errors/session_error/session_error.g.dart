// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionAuthenticationFailed _$SessionAuthenticationFailedFromJson(Map json) =>
    _SessionAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$SessionAuthenticationFailedToJson(
  _SessionAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_SessionFailureMessage _$SessionFailureMessageFromJson(Map json) =>
    _SessionFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$SessionFailureMessageToJson(
  _SessionFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_SessionInvalidStatus _$SessionInvalidStatusFromJson(Map json) =>
    _SessionInvalidStatus(required: json['required']);

Map<String, dynamic> _$SessionInvalidStatusToJson(
  _SessionInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_SessionGeneralFailure _$SessionGeneralFailureFromJson(Map json) =>
    _SessionGeneralFailure(required: json['required']);

Map<String, dynamic> _$SessionGeneralFailureToJson(
  _SessionGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
