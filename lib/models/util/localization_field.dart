import 'package:json_annotation/json_annotation.dart';

part 'localization_field.g.dart';

@JsonSerializable(explicitToJson: true)
class LocalizationField {
  LocalizationField({required this.arabic, required this.english});

  @JsonKey(name: "arabic")
  String arabic;

  @JsonKey(name: "english")
  String english;

  factory LocalizationField.fromJson(Map<dynamic, dynamic> json) =>
      _$LocalizationFieldFromJson(json);

  Map<dynamic, dynamic> toJson() => _$LocalizationFieldToJson(this);
}
