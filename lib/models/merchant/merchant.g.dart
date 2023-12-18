// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MerchantImpl _$$MerchantImplFromJson(Map json) => _$MerchantImpl(
      id: json['id'] as String,
      name: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['name'] as Map)),
      address: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['address'] as Map)),
      categoryCode: json['category_code'] as String,
    );

Map<String, dynamic> _$$MerchantImplToJson(_$MerchantImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name.toJson(),
      'address': instance.address.toJson(),
      'category_code': instance.categoryCode,
    };
