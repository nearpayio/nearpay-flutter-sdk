import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'name_field.g.dart';
part 'name_field.freezed.dart';

@Freezed()
class NameField<T> with _$NameField {
  const factory NameField({
    @JsonKey(name: "name") required LocalizationField name,
    @JsonKey(name: "id") required dynamic id,
  }) = _NameField;

  factory NameField.fromJson(Map<String, dynamic> json) =>
      _$NameFieldFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class NameField<T> {
//   NameField({required this.name, required this.id});

//   @JsonKey(name: "name")
//   LocalizationField name;

//   @JsonKey(name: "id")
//   dynamic id;

//   factory NameField.fromJson(Map<String, dynamic> json) =>
//       _$NameFieldFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$NameFieldToJson(this);
// }
