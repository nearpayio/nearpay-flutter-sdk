// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'label_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LabelFieldImpl<T> _$$LabelFieldImplFromJson<T>(Map json) =>
    _$LabelFieldImpl<T>(
      label: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['label'] as Map)),
      value: json['value'],
    );

Map<String, dynamic> _$$LabelFieldImplToJson<T>(_$LabelFieldImpl<T> instance) =>
    <String, dynamic>{
      'label': instance.label.toJson(),
      'value': instance.value,
    };
