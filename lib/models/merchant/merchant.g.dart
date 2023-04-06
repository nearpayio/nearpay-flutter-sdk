// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Merchant _$MerchantFromJson(Map json) => Merchant(
      json['id'] as String,
      LocalizationField.fromJson(json['name'] as Map),
      LocalizationField.fromJson(json['address'] as Map),
      json['category_code'] as String,
    );

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name.toJson(),
      'address': instance.address.toJson(),
      'category_code': instance.categoryCode,
    };
