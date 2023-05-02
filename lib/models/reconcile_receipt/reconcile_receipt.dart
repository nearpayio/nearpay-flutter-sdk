import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearpay_flutter_sdk/models/merchant/merchant.dart';
import 'package:nearpay_flutter_sdk/models/util/label_field.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'reconcile_receipt.freezed.dart';
part 'reconcile_receipt.g.dart';

@Freezed()
class ReconciliationReceipt with _$ReconciliationReceipt {
  const factory ReconciliationReceipt(
          {@JsonKey(name: "id")
              required String id,
          @JsonKey(name: "date")
              required String date,
          @JsonKey(name: "time")
              required String time,
          @JsonKey(name: "is_balanced")
              required LabelField<bool> is_balanced,
          @JsonKey(name: "details")
              required ReconciliationDetails details,
          @JsonKey(name: "schemes")
              required List<ReconciliationSchemes> schemes,
          @JsonKey(name: "currency")
              required LocalizationField currency,
          @JsonKey(name: "qr_code")
              required String qr_code,
          @JsonKey(name: "merchant")
              required Merchant merchant,
          @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
              String? tid,
          @JsonKey(name: "system_trace_audit_number")
              required String system_trace_audit_number,
          @JsonKey(name: "pos_software_version_number")
              required String pos_software_version_number}) =
      _ReconciliationReciept;

  factory ReconciliationReceipt.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationReceiptFromJson(json);
}

@Freezed()
class ReconciliationDetails with _$ReconciliationDetails {
  const factory ReconciliationDetails(
      {@JsonKey(name: "purchase")
          required ReconciliationLabelField purchase,
      @JsonKey(name: "refund")
          required ReconciliationLabelField refund,
      @JsonKey(name: "purchase_reversal")
          required ReconciliationLabelField purchase_reversal,
      @JsonKey(name: "refund_reversal")
          required ReconciliationLabelField refund_reversal,
      @JsonKey(name: "total")
          required ReconciliationLabelField total}) = _ReconciliationDetails;

  factory ReconciliationDetails.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationDetailsFromJson(json);
}

@Freezed()
class ReconciliationSchemes with _$ReconciliationSchemes {
  const factory ReconciliationSchemes(
          {@JsonKey(name: "name") required LabelField<String> name,
          @JsonKey(name: "pos") required ReconciliationSchemesDetails pos,
          @JsonKey(name: "host") required ReconciliationSchemesDetails host}) =
      _ReconciliationSchemes;

  factory ReconciliationSchemes.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationSchemesFromJson(json);
}

@Freezed()
class ReconciliationSchemesDetails with _$ReconciliationSchemesDetails {
  const factory ReconciliationSchemesDetails({
    @JsonKey(name: "debit") required ReconciliationLabelField debit,
    @JsonKey(name: "credit") required ReconciliationLabelField credit,
    @JsonKey(name: "total") required ReconciliationLabelField total,
  }) = _ReconciliationSchemesDetails;

  factory ReconciliationSchemesDetails.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationSchemesDetailsFromJson(json);
}

@Freezed()
class ReconciliationLabelField with _$ReconciliationLabelField {
  const factory ReconciliationLabelField(
          {@JsonKey(name: "label") required LocalizationField label,
          @JsonKey(name: "total") required String total,
          @JsonKey(name: "count") required double count}) =
      _ReconciliationLabelField;

  factory ReconciliationLabelField.fromJson(Map<String, dynamic> json) =>
      _$ReconciliationLabelFieldFromJson(json);
}
