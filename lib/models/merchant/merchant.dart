import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part "merchant.g.dart";
part 'merchant.freezed.dart';

@Freezed()
class Merchant with _$Merchant {
  const factory Merchant({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required LocalizationField name,
    @JsonKey(name: "address") required LocalizationField address,
    @JsonKey(name: "category_code") required String categoryCode,
  }) = _Merchant;

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);
}
