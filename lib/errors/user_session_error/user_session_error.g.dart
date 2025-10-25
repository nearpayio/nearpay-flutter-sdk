// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSessionAuthenticationFailed _$UserSessionAuthenticationFailedFromJson(
  Map json,
) => _UserSessionAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$UserSessionAuthenticationFailedToJson(
  _UserSessionAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_UserSessionFailureMessage _$UserSessionFailureMessageFromJson(Map json) =>
    _UserSessionFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$UserSessionFailureMessageToJson(
  _UserSessionFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_UserSessionInvalidStatus _$UserSessionInvalidStatusFromJson(Map json) =>
    _UserSessionInvalidStatus(required: json['required']);

Map<String, dynamic> _$UserSessionInvalidStatusToJson(
  _UserSessionInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_UserSessionGeneralFailure _$UserSessionGeneralFailureFromJson(Map json) =>
    _UserSessionGeneralFailure(required: json['required']);

Map<String, dynamic> _$UserSessionGeneralFailureToJson(
  _UserSessionGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
