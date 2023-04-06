import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/merchant/merchant.dart';
import 'package:nearpay_flutter_sdk/models/util/localization_field.dart';
import 'package:nearpay_flutter_sdk/models/util/label_field.dart';
import 'package:nearpay_flutter_sdk/models/util/name_field.dart';

part 'transaction_receipt.g.dart';

@JsonSerializable()
class TransactionReceipt {
  TransactionReceipt({
    required this.receiptId,
    required this.startDate,
    required this.amountAuthorized,
    required this.actionCode,
    required this.amountOther,
    required this.applicationCryptogram,
    required this.applicationIdentifier,
    required this.approvalCode,
    required this.cardExpiration,
    required this.cardScheme,
    required this.cardSchemeSponsor,
    required this.cardholaderVerficationResult,
    required this.createdAt,
    required this.cryptogramInformationData,
    required this.currency,
    required this.endTime,
    required this.entryMode,
    required this.isApproved,
    required this.isRefunded,
    required this.isReversed,
    required this.kernelId,
    required this.merchant,
    required this.pan,
    required this.endDate,
    required this.panSuffix,
    required this.paymentAccountReference,
    required this.posSoftwareVersionNumber,
    required this.qrCode,
    required this.receiptLineOne,
    required this.receiptLineTwo,
    required this.retrievalReferenceNumber,
    required this.saveReceiptMessage,
    required this.startTime,
    required this.statusMessage,
    required this.systemTraceAuditNumber,
    required this.terminalVerificationResult,
    required this.thanksMessage,
    required this.tid,
    required this.transactionStateInformation,
    required this.transactionType,
    required this.transactionUuid,
    required this.updatedAt,
    required this.verificationMethod,
  });

  @JsonKey(name: 'receipt_id')
  String receiptId;

  @JsonKey(name: "merchant")
  Merchant merchant;

  @JsonKey(name: "start_date")
  String startDate;

  @JsonKey(name: "start_time")
  String startTime;

  @JsonKey(name: "card_scheme_sponsor")
  String cardSchemeSponsor;

  @JsonKey(name: "tid")
  String tid;

  @JsonKey(name: "system_trace_audit_number")
  String systemTraceAuditNumber;

  @JsonKey(name: "pos_software_version_number")
  String posSoftwareVersionNumber;

  @JsonKey(name: "retrieval_reference_number")
  String retrievalReferenceNumber;

  @JsonKey(name: "card_scheme")
  NameField<String> cardScheme;

  // TODO: change it to (TransactionType) later
  @JsonKey(name: "transaction_type")
  NameField<String> transactionType;

  @JsonKey(name: "pan")
  String pan;

  @JsonKey(name: "card_expiration")
  String cardExpiration;

  @JsonKey(name: "amount_authorized")
  LabelField<String> amountAuthorized;

  @JsonKey(name: "amount_other")
  LabelField<String> amountOther;

  @JsonKey(name: "currency")
  LocalizationField currency;

  @JsonKey(name: "status_message")
  LocalizationField statusMessage;

  @JsonKey(name: "is_approved")
  bool isApproved;

  @JsonKey(name: "is_refunded")
  bool isRefunded;

  @JsonKey(name: "is_reversed")
  bool isReversed;

  @JsonKey(name: "approval_code")
  LabelField<String>? approvalCode;

  @JsonKey(name: "verification_method")
  LocalizationField verificationMethod;

  @JsonKey(name: "end_date")
  String endDate;

  @JsonKey(name: "end_time")
  String endTime;

  @JsonKey(name: "receipt_line_one")
  LocalizationField receiptLineOne;

  @JsonKey(name: "receipt_line_two")
  LocalizationField receiptLineTwo;

  @JsonKey(name: "thanks_message")
  LocalizationField thanksMessage;

  @JsonKey(name: "save_receipt_message")
  LocalizationField saveReceiptMessage;

  @JsonKey(name: "entry_mode")
  String entryMode;

  @JsonKey(name: "action_code")
  String actionCode;

  @JsonKey(name: "application_identifier")
  String applicationIdentifier;

  @JsonKey(name: "terminal_verification_result")
  String terminalVerificationResult;

  @JsonKey(name: "transaction_state_information")
  String transactionStateInformation;

  @JsonKey(name: "cardholader_verfication_result")
  String cardholaderVerficationResult;

  @JsonKey(name: "cryptogram_information_data")
  String cryptogramInformationData;

  @JsonKey(name: "application_cryptogram")
  String applicationCryptogram;

  @JsonKey(name: "kernel_id")
  String kernelId;

  @JsonKey(name: "payment_account_reference")
  String? paymentAccountReference;

  @JsonKey(name: "pan_suffix")
  String? panSuffix;

  @JsonKey(name: "created_at")
  String? createdAt;

  @JsonKey(name: "updated_at")
  String updatedAt;

  @JsonKey(name: "qr_code")
  String qrCode;

  @JsonKey(name: "transaction_uuid")
  String transactionUuid;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory TransactionReceipt.fromJson(Map<dynamic, dynamic> json) =>
      _$TransactionReceiptFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$TransactionReceiptToJson`.
  Map<dynamic, dynamic> toJson() => _$TransactionReceiptToJson(this);
}
