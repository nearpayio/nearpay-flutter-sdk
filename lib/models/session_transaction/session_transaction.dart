import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';

part 'session_transaction.g.dart';
part 'session_transaction.freezed.dart';

@Freezed()
class SessionTransaction with _$SessionTransaction {
  const factory SessionTransaction({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "amount_authorized") required String amount_authorized,
    @JsonKey(name: "transaction_currency_code")
        required String transaction_currency_code,
    @JsonKey(name: "cardholder_verification_result")
        required String cardholder_verification_result,
    @JsonKey(name: "lat") required String lat,
    @JsonKey(name: "lon") required String lon,
    @JsonKey(name: "transaction_type") required String transaction_type,
    @JsonKey(name: "card_scheme_id") required String card_scheme_id,
    @JsonKey(name: "system_trace_audit_number")
        required String system_trace_audit_number,
    @JsonKey(name: "is_approved") required bool is_approved,
    @JsonKey(name: "is_reversed") required bool is_reversed,
    @JsonKey(name: "is_reconcilied") required bool is_reconcilied,
    @JsonKey(name: "device_id") required String device_id,
    @JsonKey(name: "user_id") required String user_id,
    @JsonKey(name: "merchant_id") required String merchant_id,
    @JsonKey(name: "customer_reference_number")
        required String customer_reference_number,
    @JsonKey(name: "pos_confirmed") required bool pos_confirmed,
    @JsonKey(name: "created_at") required String created_at,
    @JsonKey(name: "updated_at") required String updated_at,
    @JsonKey(name: "receipts") required List<TransactionReceipt> receipts,
    @JsonKey(name: "card_scheme") required LocalizationField card_scheme,
    @JsonKey(name: "type") required LocalizationField type,
    @JsonKey(name: "verification_method")
        required LocalizationField verification_method,
  }) = _SessionTransaction;

  factory SessionTransaction.fromJson(Map<String, dynamic> json) =>
      _$SessionTransactionFromJson(json);
}
