import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'transaction_banner.g.dart';
part 'transaction_banner.freezed.dart';

@Freezed()
class TransactionBannerList with _$TransactionBannerList {
  const factory TransactionBannerList({
    @JsonKey(name: "count") required double count,
    @JsonKey(name: "transactionBanners", defaultValue: [])
        required List<TransactionBanner> transactionBanners,
  }) = _TransactionBannerList;

  factory TransactionBannerList.fromJson(Map<String, dynamic> json) =>
      _$TransactionBannerListFromJson(json);
}

@Freezed()
class TransactionBanner with _$TransactionBanner {
  const factory TransactionBanner({
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "scheme") required String scheme,
    @JsonKey(name: "pan") required String pan,
    @JsonKey(name: "amount_authorized") required String amountAuthorized,
    @JsonKey(name: "currency") required LocalizationField currency,
    @JsonKey(name: "transaction_type") required String transactionType,
    @JsonKey(name: "is_approved") required bool isApproved,
    @JsonKey(name: "is_reversed") required bool isReversed,
    @JsonKey(name: "start_date") required String startDate,
    @JsonKey(name: "start_time") required String startTime,
    @JsonKey(name: "customer_reference_number")
        String? customer_reference_number,
    @JsonKey(name: "retrieval_reference_number") String? retrieval_reference_number,

}) = _TransactionBanner;

  factory TransactionBanner.fromJson(Map<String, dynamic> json) =>
      _$TransactionBannerFromJson(json);
}
