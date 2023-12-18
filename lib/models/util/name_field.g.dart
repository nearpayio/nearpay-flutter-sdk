// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameFieldImpl<T> _$$NameFieldImplFromJson<T>(Map json) => _$NameFieldImpl<T>(
      name: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['name'] as Map)),
      id: json['id'],
    );

Map<String, dynamic> _$$NameFieldImplToJson<T>(_$NameFieldImpl<T> instance) =>
    <String, dynamic>{
      'name': instance.name.toJson(),
      'id': instance.id,
    };
