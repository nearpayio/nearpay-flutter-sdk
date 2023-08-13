// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NameField<T> _$$_NameFieldFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) =>
    _$_NameField<T>(
      name: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['name'] as Map)),
      id: json['id'],
    );

Map<String, dynamic> _$$_NameFieldToJson<T>(
  _$_NameField<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'name': instance.name.toJson(),
      'id': instance.id,
    };
