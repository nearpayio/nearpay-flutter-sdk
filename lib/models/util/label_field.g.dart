// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LabelField<T> _$LabelFieldFromJson<T>(Map json) => LabelField<T>(
      label: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['label'] as Map)),
      value: json['value'],
    );

Map<String, dynamic> _$LabelFieldToJson<T>(LabelField<T> instance) =>
    <String, dynamic>{
      'label': instance.label.toJson(),
      'value': instance.value,
    };
