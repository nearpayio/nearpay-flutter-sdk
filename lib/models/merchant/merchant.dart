import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part "merchant.g.dart";

@JsonSerializable(explicitToJson: true)
class Merchant {
  Merchant(this.id, this.name, this.address, this.categoryCode);

  @JsonKey(name: "id")
  String id;

  @JsonKey(name: "name")
  LocalizationField name;

  @JsonKey(name: "address")
  LocalizationField address;

  @JsonKey(name: "category_code")
  String categoryCode;

  factory Merchant.fromJson(Map<dynamic, dynamic> json) =>
      _$MerchantFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private , generated
  /// helper method `_$MerchantToJson`.
  Map<dynamic, dynamic> toJson() => _$MerchantToJson(this);
}
