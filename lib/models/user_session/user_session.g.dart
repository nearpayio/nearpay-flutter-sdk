// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSessionImpl _$$UserSessionImplFromJson(Map json) => _$UserSessionImpl(
      userName: json['userName'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      tid: json['tid'] as String?,
      merchantEn: json['merchantEn'] as String?,
      merchantAr: json['merchantAr'] as String?,
    );

Map<String, dynamic> _$$UserSessionImplToJson(_$UserSessionImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'phone': instance.phone,
      'email': instance.email,
      'tid': instance.tid,
      'merchantEn': instance.merchantEn,
      'merchantAr': instance.merchantAr,
    };
