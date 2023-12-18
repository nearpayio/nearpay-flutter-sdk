import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/merchant/merchant.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';
import 'package:nearpay_flutter_sdk/models/util/label_field.dart';
import 'package:nearpay_flutter_sdk/models/util/name_field.dart';

part 'transaction_receipt.g.dart';
part 'transaction_receipt.freezed.dart';

@Freezed()
class TransactionData with _$TransactionData {
  const factory TransactionData({
    @JsonKey(name: 'receipts', nullable: true)
        List<TransactionReceipt>? receipts,
    @JsonKey(name: 'isNewTransaction', nullable: true) bool? isNewTransaction,
  }) = _TransactionData;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);
}

@Freezed()
class TransactionReceipt with _$TransactionReceipt {
  const factory TransactionReceipt({
    @JsonKey(name: "receipt_id")
        required String receipt_id,
    @JsonKey(name: "transaction_uuid")
        required String transaction_uuid,
    @JsonKey(name: "merchant")
        required Merchant merchant,
    @JsonKey(name: "start_date")
        required String start_date,
    @JsonKey(name: "start_time")
        required String start_time,
    @JsonKey(name: "card_scheme_sponsor")
        required String card_scheme_sponsor,
    @JsonKey(name: "tid")
        required String tid,
    @JsonKey(name: "system_trace_audit_number", nullable: true)
         String? system_trace_audit_number,
    @JsonKey(name: "pos_software_version_number")
        required String pos_software_version_number,
    @JsonKey(name: "retrieval_reference_number", nullable: true)
         String? retrieval_reference_number,
    @JsonKey(name: "card_scheme")
        required NameField<String> card_scheme,
    @JsonKey(name: "transaction_type")
        required NameField<String> transaction_type,
    @JsonKey(name: "pan")
        required String pan,
    @JsonKey(name: "card_expiration", nullable: true)
         String? card_expiration,
    @JsonKey(name: "amount_authorized")
        required LabelField<String> amount_authorized,
    @JsonKey(name: "amount_other", nullable: true)
         LabelField<String>? amount_other,
    @JsonKey(name: "currency")
        required LocalizationField currency,
    @JsonKey(name: "status_message")
        required LocalizationField status_message,
    @JsonKey(name: "is_approved")
        required bool is_approved,
    @JsonKey(name: "is_refunded")
        required bool is_refunded,
    @JsonKey(name: "is_reversed")
        required bool is_reversed,
    @JsonKey(name: "approval_code", nullable: true)
        LabelField<String>? approval_code,
    @JsonKey(name: "verification_method")
        required LocalizationField verification_method,
    @JsonKey(name: "end_date")
        required String end_date,
    @JsonKey(name: "end_time")
        required String end_time,
    @JsonKey(name: "receipt_line_one", nullable: true )
         LocalizationField? receipt_line_one,
    @JsonKey(name: "thanks_message", nullable: true )
         LocalizationField? thanks_message,
    @JsonKey(name: "save_receipt_message", nullable: true)
         LocalizationField? save_receipt_message,
    @JsonKey(name: "entry_mode", nullable: true)
         String? entry_mode,
    @JsonKey(name: "action_code")
        required String action_code,
    @JsonKey(name: "application_identifier")
        required String application_identifier,
    @JsonKey(name: "terminal_verification_result")
        required String terminal_verification_result,
    @JsonKey(name: "transaction_state_information", nullable: true)
         String? transaction_state_information,
    @JsonKey(name: "cardholader_verfication_result")
        required String cardholader_verfication_result,
    @JsonKey(name: "cryptogram_information_data", nullable: true)
         String? cryptogram_information_data,
    @JsonKey(name: "application_cryptogram", nullable: true)
         String? application_cryptogram,
    @JsonKey(name: "kernel_id", nullable: true)
         String? kernel_id,
    @JsonKey(name: "payment_account_reference", nullable: true,)
        String? payment_account_reference,
    @JsonKey(name: "receipt_line_two" , nullable: true,)
       LocalizationField? receipt_line_two,
    @JsonKey(name: "pan_suffix", nullable: true,)
        String? pan_suffix,
    @JsonKey(name: "auth", nullable: true,)
    String? auth,
    @JsonKey(name: "serial_num", nullable: true,)
    String? serial_num,
    @JsonKey(name: "invoice", nullable: true,)
    String? invoice,
    @JsonKey(name: "batch", nullable: true,)
    String? batch,
    @JsonKey(name: "bank_net_data", nullable: true,)
    String? bank_net_data,
    @JsonKey(name: "vas_data", nullable: true,)
    String? vas_data,
    @JsonKey(name: "customer_reference_number", nullable: true, defaultValue: "")
    String? customer_reference_number,
    @JsonKey(name: "created_at", nullable: true, defaultValue: "")
        String? created_at,
    @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
        String? updated_at,
    @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
    String? receipt_standard,
    @JsonKey(name: "qr_code")
    required String qr_code,
  }) = _TransactionReceipt;

  factory TransactionReceipt.fromJson(Map<String, dynamic> json) =>
      _$TransactionReceiptFromJson(json);
}



