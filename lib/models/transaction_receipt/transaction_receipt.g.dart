// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionReceipt _$TransactionReceiptFromJson(Map json) => TransactionReceipt(
      receiptId: json['receipt_id'] as String,
      startDate: json['start_date'] as String,
      amountAuthorized: LabelField<String>.fromJson(
          Map<String, dynamic>.from(json['amount_authorized'] as Map)),
      actionCode: json['action_code'] as String,
      amountOther: LabelField<String>.fromJson(
          Map<String, dynamic>.from(json['amount_other'] as Map)),
      applicationCryptogram: json['application_cryptogram'] as String,
      applicationIdentifier: json['application_identifier'] as String,
      approvalCode: json['approval_code'] == null
          ? null
          : LabelField<String>.fromJson(
              Map<String, dynamic>.from(json['approval_code'] as Map)),
      cardExpiration: json['card_expiration'] as String,
      cardScheme: NameField<String>.fromJson(
          Map<String, dynamic>.from(json['card_scheme'] as Map)),
      cardSchemeSponsor: json['card_scheme_sponsor'] as String,
      cardholaderVerficationResult:
          json['cardholader_verfication_result'] as String,
      createdAt: json['created_at'] as String?,
      cryptogramInformationData: json['cryptogram_information_data'] as String,
      currency: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['currency'] as Map)),
      endTime: json['end_time'] as String,
      entryMode: json['entry_mode'] as String,
      isApproved: json['is_approved'] as bool,
      isRefunded: json['is_refunded'] as bool,
      isReversed: json['is_reversed'] as bool,
      kernelId: json['kernel_id'] as String,
      merchant:
          Merchant.fromJson(Map<String, dynamic>.from(json['merchant'] as Map)),
      pan: json['pan'] as String,
      endDate: json['end_date'] as String,
      panSuffix: json['pan_suffix'] as String?,
      paymentAccountReference: json['payment_account_reference'] as String?,
      posSoftwareVersionNumber: json['pos_software_version_number'] as String,
      qrCode: json['qr_code'] as String,
      receiptLineOne: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['receipt_line_one'] as Map)),
      receiptLineTwo: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['receipt_line_two'] as Map)),
      retrievalReferenceNumber: json['retrieval_reference_number'] as String,
      saveReceiptMessage: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['save_receipt_message'] as Map)),
      startTime: json['start_time'] as String,
      statusMessage: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['status_message'] as Map)),
      systemTraceAuditNumber: json['system_trace_audit_number'] as String,
      terminalVerificationResult:
          json['terminal_verification_result'] as String,
      thanksMessage: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['thanks_message'] as Map)),
      tid: json['tid'] as String,
      transactionStateInformation:
          json['transaction_state_information'] as String,
      transactionType: NameField<String>.fromJson(
          Map<String, dynamic>.from(json['transaction_type'] as Map)),
      transactionUuid: json['transaction_uuid'] as String,
      updatedAt: json['updated_at'] as String,
      verificationMethod: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['verification_method'] as Map)),
    );

Map<String, dynamic> _$TransactionReceiptToJson(TransactionReceipt instance) =>
    <String, dynamic>{
      'receipt_id': instance.receiptId,
      'merchant': instance.merchant.toJson(),
      'start_date': instance.startDate,
      'start_time': instance.startTime,
      'card_scheme_sponsor': instance.cardSchemeSponsor,
      'tid': instance.tid,
      'system_trace_audit_number': instance.systemTraceAuditNumber,
      'pos_software_version_number': instance.posSoftwareVersionNumber,
      'retrieval_reference_number': instance.retrievalReferenceNumber,
      'card_scheme': instance.cardScheme.toJson(),
      'transaction_type': instance.transactionType.toJson(),
      'pan': instance.pan,
      'card_expiration': instance.cardExpiration,
      'amount_authorized': instance.amountAuthorized.toJson(),
      'amount_other': instance.amountOther.toJson(),
      'currency': instance.currency.toJson(),
      'status_message': instance.statusMessage.toJson(),
      'is_approved': instance.isApproved,
      'is_refunded': instance.isRefunded,
      'is_reversed': instance.isReversed,
      'approval_code': instance.approvalCode?.toJson(),
      'verification_method': instance.verificationMethod.toJson(),
      'end_date': instance.endDate,
      'end_time': instance.endTime,
      'receipt_line_one': instance.receiptLineOne.toJson(),
      'receipt_line_two': instance.receiptLineTwo.toJson(),
      'thanks_message': instance.thanksMessage.toJson(),
      'save_receipt_message': instance.saveReceiptMessage.toJson(),
      'entry_mode': instance.entryMode,
      'action_code': instance.actionCode,
      'application_identifier': instance.applicationIdentifier,
      'terminal_verification_result': instance.terminalVerificationResult,
      'transaction_state_information': instance.transactionStateInformation,
      'cardholader_verfication_result': instance.cardholaderVerficationResult,
      'cryptogram_information_data': instance.cryptogramInformationData,
      'application_cryptogram': instance.applicationCryptogram,
      'kernel_id': instance.kernelId,
      'payment_account_reference': instance.paymentAccountReference,
      'pan_suffix': instance.panSuffix,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'qr_code': instance.qrCode,
      'transaction_uuid': instance.transactionUuid,
    };
