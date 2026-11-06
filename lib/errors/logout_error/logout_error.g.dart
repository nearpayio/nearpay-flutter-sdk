// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogoutAuthenticationFailed _$LogoutAuthenticationFailedFromJson(Map json) =>
    _LogoutAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$LogoutAuthenticationFailedToJson(
  _LogoutAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_LogoutFailureMessage _$LogoutFailureMessageFromJson(Map json) =>
    _LogoutFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$LogoutFailureMessageToJson(
  _LogoutFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_LogoutInvalidStatus _$LogoutInvalidStatusFromJson(Map json) =>
    _LogoutInvalidStatus(required: json['required']);

Map<String, dynamic> _$LogoutInvalidStatusToJson(
  _LogoutInvalidStatus instance,
) => <String, dynamic>{'required': instance.required};

_LogoutGeneralFailure _$LogoutGeneralFailureFromJson(Map json) =>
    _LogoutGeneralFailure(required: json['required']);

Map<String, dynamic> _$LogoutGeneralFailureToJson(
  _LogoutGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};

_AlreadyLogoutFailure _$AlreadyLogoutFailureFromJson(Map json) =>
    _AlreadyLogoutFailure(required: json['required']);

Map<String, dynamic> _$AlreadyLogoutFailureToJson(
  _AlreadyLogoutFailure instance,
) => <String, dynamic>{'required': instance.required};
