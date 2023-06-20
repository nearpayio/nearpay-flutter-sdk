import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/label_field.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'reconcile_banner.freezed.dart';
part 'reconcile_banner.g.dart';

@Freezed()
class ReconciliationBannerList with _$ReconciliationBannerList {
  const factory ReconciliationBannerList(
      {@JsonKey(name: "total")
          required double total,
      @JsonKey(name: "reconciliations", defaultValue: [])
          List<ReconciliationItem>? reconciliations}) = _ReconciliationReciept;

  factory ReconciliationBannerList.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationBannerListFromJson(json);
}

@Freezed()
class ReconciliationItem with _$ReconciliationItem {
  const factory ReconciliationItem({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "time") required String time,
    @JsonKey(name: "is_balanced") required LabelField<bool> isBalanced,
    @JsonKey(name: "total") required String total,
    @JsonKey(name: "currency") required LocalizationField currency,
  }) = _ReconciliationItem;

  factory ReconciliationItem.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationItemFromJson(json);
}
