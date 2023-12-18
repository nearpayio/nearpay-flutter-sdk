// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionAuthenticationFailedImpl _$$SessionAuthenticationFailedImplFromJson(
        Map json) =>
    _$SessionAuthenticationFailedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$SessionAuthenticationFailedImplToJson(
        _$SessionAuthenticationFailedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$SessionFailureMessageImpl _$$SessionFailureMessageImplFromJson(Map json) =>
    _$SessionFailureMessageImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$SessionFailureMessageImplToJson(
        _$SessionFailureMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$SessionInvalidStatusImpl _$$SessionInvalidStatusImplFromJson(Map json) =>
    _$SessionInvalidStatusImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$SessionInvalidStatusImplToJson(
        _$SessionInvalidStatusImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$SessionGeneralFailureImpl _$$SessionGeneralFailureImplFromJson(Map json) =>
    _$SessionGeneralFailureImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$SessionGeneralFailureImplToJson(
        _$SessionGeneralFailureImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
