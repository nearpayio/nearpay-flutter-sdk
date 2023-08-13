import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'label_field.g.dart';
part 'label_field.freezed.dart';

@Freezed()
class LabelField<T> with _$LabelField {
  const factory LabelField({
    @JsonKey(name: "label") required LocalizationField label,
    @JsonKey(name: "value") required dynamic value,
  }) = _LabelField;

  factory LabelField.fromJson(Map<String, dynamic> json) =>
      _$LabelFieldFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class LabelField<T> {
//   LabelField({required this.label, required this.value});

//   @JsonKey(name: "label")
//   LocalizationField label;

//   @JsonKey(name: "value")
//   dynamic value;

//   factory LabelField.fromJson(Map<String, dynamic> json) =>
//       _$LabelFieldFromJson(json);

//   Map<String, dynamic> toJson() => _$LabelFieldToJson(this);
// }
