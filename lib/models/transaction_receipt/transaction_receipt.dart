import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/merchant/merchant.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';
import 'package:nearpay_flutter_sdk/models/util/label_field.dart';
import 'package:nearpay_flutter_sdk/models/util/name_field.dart';

part 'transaction_receipt.g.dart';
part 'transaction_receipt.freezed.dart';

// @Freezed()
// class TransactionReceipt {
//   TransactionReceipt({
//     required this.receiptId,
//     required this.startDate,
//     required this.amountAuthorized,
//     required this.actionCode,
//     required this.amountOther,
//     required this.applicationCryptogram,
//     required this.applicationIdentifier,
//     required this.approvalCode,
//     required this.cardExpiration,
//     required this.cardScheme,
//     required this.cardSchemeSponsor,
//     required this.cardholaderVerficationResult,
//     required this.createdAt,
//     required this.cryptogramInformationData,
//     required this.currency,
//     required this.endTime,
//     required this.entryMode,
//     required this.isApproved,
//     required this.isRefunded,
//     required this.isReversed,
//     required this.kernelId,
//     required this.merchant,
//     required this.pan,
//     required this.endDate,
//     required this.panSuffix,
//     required this.paymentAccountReference,
//     required this.posSoftwareVersionNumber,
//     required this.qrCode,
//     required this.receiptLineOne,
//     required this.receiptLineTwo,
//     required this.retrievalReferenceNumber,
//     required this.saveReceiptMessage,
//     required this.startTime,
//     required this.statusMessage,
//     required this.systemTraceAuditNumber,
//     required this.terminalVerificationResult,
//     required this.thanksMessage,
//     required this.tid,
//     required this.transactionStateInformation,
//     required this.transactionType,
//     required this.transactionUuid,
//     required this.updatedAt,
//     required this.verificationMethod,
//   });

//   @JsonKey(name: 'receipt_id')
//   String receiptId;

//   @JsonKey(name: "merchant")
//   Merchant merchant;

//   @JsonKey(name: "start_date")
//   String startDate;

//   @JsonKey(name: "start_time")
//   String startTime;

//   @JsonKey(name: "card_scheme_sponsor")
//   String cardSchemeSponsor;

//   @JsonKey(name: "tid")
//   String tid;

//   @JsonKey(name: "system_trace_audit_number")
//   String systemTraceAuditNumber;

//   @JsonKey(name: "pos_software_version_number")
//   String posSoftwareVersionNumber;

//   @JsonKey(name: "retrieval_reference_number")
//   String retrievalReferenceNumber;

//   @JsonKey(name: "card_scheme")
//   NameField<String> cardScheme;

//   // TODO: change it to (TransactionType) later
//   @JsonKey(name: "transaction_type")
//   NameField<String> transactionType;

//   @JsonKey(name: "pan")
//   String pan;

//   @JsonKey(name: "card_expiration")
//   String cardExpiration;

//   @JsonKey(name: "amount_authorized")
//   LabelField<String> amountAuthorized;

//   @JsonKey(name: "amount_other")
//   LabelField<String> amountOther;

//   @JsonKey(name: "currency")
//   LocalizationField currency;

//   @JsonKey(name: "status_message")
//   LocalizationField statusMessage;

//   @JsonKey(name: "is_approved")
//   bool isApproved;

//   @JsonKey(name: "is_refunded")
//   bool isRefunded;

//   @JsonKey(name: "is_reversed")
//   bool isReversed;

//   @JsonKey(name: "approval_code")
//   LabelField<String>? approvalCode;

//   @JsonKey(name: "verification_method")
//   LocalizationField verificationMethod;

//   @JsonKey(name: "end_date")
//   String endDate;

//   @JsonKey(name: "end_time")
//   String endTime;

//   @JsonKey(name: "receipt_line_one")
//   LocalizationField receiptLineOne;

//   @JsonKey(name: "receipt_line_two")
//   LocalizationField receiptLineTwo;

//   @JsonKey(name: "thanks_message")
//   LocalizationField thanksMessage;

//   @JsonKey(name: "save_receipt_message")
//   LocalizationField saveReceiptMessage;

//   @JsonKey(name: "entry_mode")
//   String entryMode;

//   @JsonKey(name: "action_code")
//   String actionCode;

//   @JsonKey(name: "application_identifier")
//   String applicationIdentifier;

//   @JsonKey(name: "terminal_verification_result")
//   String terminalVerificationResult;

//   @JsonKey(name: "transaction_state_information")
//   String transactionStateInformation;

//   @JsonKey(name: "cardholader_verfication_result")
//   String cardholaderVerficationResult;

//   @JsonKey(name: "cryptogram_information_data")
//   String cryptogramInformationData;

//   @JsonKey(name: "application_cryptogram")
//   String applicationCryptogram;

//   @JsonKey(name: "kernel_id")
//   String kernelId;

//   @JsonKey(name: "payment_account_reference")
//   String? paymentAccountReference;

//   @JsonKey(name: "pan_suffix")
//   String? panSuffix;

//   @JsonKey(name: "created_at")
//   String? createdAt;

//   @JsonKey(name: "updated_at")
//   String updatedAt;

//   @JsonKey(name: "qr_code")
//   String qrCode;

//   @JsonKey(name: "transaction_uuid")
//   String transactionUuid;

//   /// A necessary factory constructor for creating a new User instance
//   /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
//   /// The constructor is named after the source class, in this case, User.
//   factory TransactionReceipt.fromJson(Map<String, dynamic> json) =>
//       _$TransactionReceiptFromJson(json);

//   /// `toJson` is the convention for a class to declare support for serialization
//   /// to JSON. The implementation simply calls the private, generated
//   /// helper method `_$TransactionReceiptToJson`.
//   Map<dynamic, dynamic> toJson() => _$TransactionReceiptToJson(this);
// }

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
    @JsonKey(name: "system_trace_audit_number")
        required String system_trace_audit_number,
    @JsonKey(name: "pos_software_version_number")
        required String pos_software_version_number,
    @JsonKey(name: "retrieval_reference_number")
        required String retrieval_reference_number,
    @JsonKey(name: "card_scheme")
        required NameField<String> card_scheme,
    @JsonKey(name: "transaction_type")
        required NameField<String> transaction_type,
    @JsonKey(name: "pan")
        required String pan,
    @JsonKey(name: "card_expiration")
        required String card_expiration,
    @JsonKey(name: "amount_authorized")
        required LabelField<String> amount_authorized,
    @JsonKey(name: "amount_other")
        required LabelField<String> amount_other,
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
    @JsonKey(name: "receipt_line_one")
        required LocalizationField receipt_line_one,
    @JsonKey(name: "receipt_line_two")
        required LocalizationField receipt_line_two,
    @JsonKey(name: "thanks_message")
        required LocalizationField thanks_message,
    @JsonKey(name: "save_receipt_message")
        required LocalizationField save_receipt_message,
    @JsonKey(name: "entry_mode")
        required String entry_mode,
    @JsonKey(name: "action_code")
        required String action_code,
    @JsonKey(name: "application_identifier")
        required String application_identifier,
    @JsonKey(name: "terminal_verification_result")
        required String terminal_verification_result,
    @JsonKey(name: "transaction_state_information")
        required String transaction_state_information,
    @JsonKey(name: "cardholader_verfication_result")
        required String cardholader_verfication_result,
    @JsonKey(name: "cryptogram_information_data")
        required String cryptogram_information_data,
    @JsonKey(name: "application_cryptogram")
        required String application_cryptogram,
    @JsonKey(name: "kernel_id")
        required String kernel_id,
    @JsonKey(
      name: "payment_account_reference",
      nullable: true,
    )
        String? payment_account_reference,
    @JsonKey(
      name: "pan_suffix",
      nullable: true,
    )
        String? pan_suffix,
    @JsonKey(name: "created_at", nullable: true, defaultValue: "")
        String? created_at,
    @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
        String? updated_at,
    @JsonKey(name: "qr_code")
        required String qr_code,
  }) = _TransactionReceipt;

  factory TransactionReceipt.fromJson(Map<String, dynamic> json) =>
      _$TransactionReceiptFromJson(json);
}
