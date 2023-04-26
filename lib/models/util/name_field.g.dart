// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameField<T> _$NameFieldFromJson<T>(Map json) => NameField<T>(
      name: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['name'] as Map)),
      id: json['id'],
    );

Map<String, dynamic> _$NameFieldToJson<T>(NameField<T> instance) =>
    <String, dynamic>{
      'name': instance.name.toJson(),
      'id': instance.id,
    };
