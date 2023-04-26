import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'label_field.g.dart';

@JsonSerializable(explicitToJson: true)
class LabelField<T> {
  LabelField({required this.label, required this.value});

  @JsonKey(name: "label")
  LocalizationField label;

  @JsonKey(name: "value")
  dynamic value;

  factory LabelField.fromJson(Map<String, dynamic> json) =>
      _$LabelFieldFromJson(json);

  Map<String, dynamic> toJson() => _$LabelFieldToJson(this);
}
