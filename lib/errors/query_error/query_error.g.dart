// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QueryAuthenticationFailed _$QueryAuthenticationFailedFromJson(Map json) =>
    _QueryAuthenticationFailed(message: json['message'] as String);

Map<String, dynamic> _$QueryAuthenticationFailedToJson(
  _QueryAuthenticationFailed instance,
) => <String, dynamic>{'message': instance.message};

_QueryFailureMessage _$QueryFailureMessageFromJson(Map json) =>
    _QueryFailureMessage(message: json['message'] as String);

Map<String, dynamic> _$QueryFailureMessageToJson(
  _QueryFailureMessage instance,
) => <String, dynamic>{'message': instance.message};

_QueryInvalidStatus _$QueryInvalidStatusFromJson(Map json) =>
    _QueryInvalidStatus(required: json['required']);

Map<String, dynamic> _$QueryInvalidStatusToJson(_QueryInvalidStatus instance) =>
    <String, dynamic>{'required': instance.required};

_QueryGeneralFailure _$QueryGeneralFailureFromJson(Map json) =>
    _QueryGeneralFailure(required: json['required']);

Map<String, dynamic> _$QueryGeneralFailureToJson(
  _QueryGeneralFailure instance,
) => <String, dynamic>{'required': instance.required};
