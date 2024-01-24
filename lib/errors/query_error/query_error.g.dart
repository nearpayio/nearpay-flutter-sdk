// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueryAuthenticationFailedImpl _$$QueryAuthenticationFailedImplFromJson(
        Map json) =>
    _$QueryAuthenticationFailedImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$QueryAuthenticationFailedImplToJson(
        _$QueryAuthenticationFailedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$QueryFailureMessageImpl _$$QueryFailureMessageImplFromJson(Map json) =>
    _$QueryFailureMessageImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$QueryFailureMessageImplToJson(
        _$QueryFailureMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$QueryInvalidStatusImpl _$$QueryInvalidStatusImplFromJson(Map json) =>
    _$QueryInvalidStatusImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$QueryInvalidStatusImplToJson(
        _$QueryInvalidStatusImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$QueryGeneralFailureImpl _$$QueryGeneralFailureImplFromJson(Map json) =>
    _$QueryGeneralFailureImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$QueryGeneralFailureImplToJson(
        _$QueryGeneralFailureImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
