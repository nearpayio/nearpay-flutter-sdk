// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconcile_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReconcileFailureMessageImpl _$$ReconcileFailureMessageImplFromJson(
        Map json) =>
    _$ReconcileFailureMessageImpl(
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ReconcileFailureMessageImplToJson(
        _$ReconcileFailureMessageImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$ReconcileAuthenticationFailedImpl
    _$$ReconcileAuthenticationFailedImplFromJson(Map json) =>
        _$ReconcileAuthenticationFailedImpl(
          message: json['message'] as String,
        );

Map<String, dynamic> _$$ReconcileAuthenticationFailedImplToJson(
        _$ReconcileAuthenticationFailedImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

_$ReconcileInvalidStatusImpl _$$ReconcileInvalidStatusImplFromJson(Map json) =>
    _$ReconcileInvalidStatusImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$ReconcileInvalidStatusImplToJson(
        _$ReconcileInvalidStatusImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

_$ReconcileGeneralFailureImpl _$$ReconcileGeneralFailureImplFromJson(
        Map json) =>
    _$ReconcileGeneralFailureImpl(
      required: json['required'],
    );

Map<String, dynamic> _$$ReconcileGeneralFailureImplToJson(
        _$ReconcileGeneralFailureImpl instance) =>
    <String, dynamic>{
      'required': instance.required,
    };
