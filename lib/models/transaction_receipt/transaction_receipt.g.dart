// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_receipt.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDataImpl _$$TransactionDataImplFromJson(Map json) =>
    _$TransactionDataImpl(
      receipts: (json['receipts'] as List<dynamic>?)
          ?.map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      isNewTransaction: json['isNewTransaction'] as bool?,
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'receipts': instance.receipts?.map((e) => e.toJson()).toList(),
      'isNewTransaction': instance.isNewTransaction,
    };

_$TransactionReceiptImpl _$$TransactionReceiptImplFromJson(Map json) =>
    _$TransactionReceiptImpl(
      receipt_id: json['receipt_id'] as String,
      transaction_uuid: json['transaction_uuid'] as String,
      merchant:
          Merchant.fromJson(Map<String, dynamic>.from(json['merchant'] as Map)),
      start_date: json['start_date'] as String,
      start_time: json['start_time'] as String,
      card_scheme_sponsor: json['card_scheme_sponsor'] as String,
      tid: json['tid'] as String,
      system_trace_audit_number: json['system_trace_audit_number'] as String?,
      pos_software_version_number:
          json['pos_software_version_number'] as String,
      retrieval_reference_number: json['retrieval_reference_number'] as String?,
      card_scheme: NameField<String>.fromJson(
          Map<String, dynamic>.from(json['card_scheme'] as Map)),
      transaction_type: NameField<String>.fromJson(
          Map<String, dynamic>.from(json['transaction_type'] as Map)),
      pan: json['pan'] as String,
      card_expiration: json['card_expiration'] as String?,
      amount_authorized: LabelField<String>.fromJson(
          Map<String, dynamic>.from(json['amount_authorized'] as Map)),
      amount_other: json['amount_other'] == null
          ? null
          : LabelField<String>.fromJson(
              Map<String, dynamic>.from(json['amount_other'] as Map)),
      currency: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['currency'] as Map)),
      status_message: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['status_message'] as Map)),
      is_approved: json['is_approved'] as bool,
      is_refunded: json['is_refunded'] as bool,
      is_reversed: json['is_reversed'] as bool,
      approval_code: json['approval_code'] == null
          ? null
          : LabelField<String>.fromJson(
              Map<String, dynamic>.from(json['approval_code'] as Map)),
      verification_method: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['verification_method'] as Map)),
      end_date: json['end_date'] as String,
      end_time: json['end_time'] as String,
      receipt_line_one: json['receipt_line_one'] == null
          ? null
          : LocalizationField.fromJson(
              Map<String, dynamic>.from(json['receipt_line_one'] as Map)),
      thanks_message: json['thanks_message'] == null
          ? null
          : LocalizationField.fromJson(
              Map<String, dynamic>.from(json['thanks_message'] as Map)),
      save_receipt_message: json['save_receipt_message'] == null
          ? null
          : LocalizationField.fromJson(
              Map<String, dynamic>.from(json['save_receipt_message'] as Map)),
      entry_mode: json['entry_mode'] as String?,
      action_code: json['action_code'] as String,
      application_identifier: json['application_identifier'] as String,
      terminal_verification_result:
          json['terminal_verification_result'] as String,
      transaction_state_information:
          json['transaction_state_information'] as String?,
      cardholader_verfication_result:
          json['cardholader_verfication_result'] as String,
      cryptogram_information_data:
          json['cryptogram_information_data'] as String?,
      application_cryptogram: json['application_cryptogram'] as String?,
      kernel_id: json['kernel_id'] as String?,
      payment_account_reference: json['payment_account_reference'] as String?,
      receipt_line_two: json['receipt_line_two'] == null
          ? null
          : LocalizationField.fromJson(
              Map<String, dynamic>.from(json['receipt_line_two'] as Map)),
      pan_suffix: json['pan_suffix'] as String?,
      auth: json['auth'] as String?,
      serial_num: json['serial_num'] as String?,
      invoice: json['invoice'] as String?,
      batch: json['batch'] as String?,
      bank_net_data: json['bank_net_data'] as String?,
      vas_data: json['vas_data'] as String?,
      customer_reference_number:
          json['customer_reference_number'] as String? ?? '',
      created_at: json['created_at'] as String? ?? '',
      updated_at: json['updated_at'] as String? ?? '',
      receipt_standard: json['receipt_standard'] as String? ?? '',
      qr_code: json['qr_code'] as String,
    );

Map<String, dynamic> _$$TransactionReceiptImplToJson(
        _$TransactionReceiptImpl instance) =>
    <String, dynamic>{
      'receipt_id': instance.receipt_id,
      'transaction_uuid': instance.transaction_uuid,
      'merchant': instance.merchant.toJson(),
      'start_date': instance.start_date,
      'start_time': instance.start_time,
      'card_scheme_sponsor': instance.card_scheme_sponsor,
      'tid': instance.tid,
      'system_trace_audit_number': instance.system_trace_audit_number,
      'pos_software_version_number': instance.pos_software_version_number,
      'retrieval_reference_number': instance.retrieval_reference_number,
      'card_scheme': instance.card_scheme.toJson(),
      'transaction_type': instance.transaction_type.toJson(),
      'pan': instance.pan,
      'card_expiration': instance.card_expiration,
      'amount_authorized': instance.amount_authorized.toJson(),
      'amount_other': instance.amount_other?.toJson(),
      'currency': instance.currency.toJson(),
      'status_message': instance.status_message.toJson(),
      'is_approved': instance.is_approved,
      'is_refunded': instance.is_refunded,
      'is_reversed': instance.is_reversed,
      'approval_code': instance.approval_code?.toJson(),
      'verification_method': instance.verification_method.toJson(),
      'end_date': instance.end_date,
      'end_time': instance.end_time,
      'receipt_line_one': instance.receipt_line_one?.toJson(),
      'thanks_message': instance.thanks_message?.toJson(),
      'save_receipt_message': instance.save_receipt_message?.toJson(),
      'entry_mode': instance.entry_mode,
      'action_code': instance.action_code,
      'application_identifier': instance.application_identifier,
      'terminal_verification_result': instance.terminal_verification_result,
      'transaction_state_information': instance.transaction_state_information,
      'cardholader_verfication_result': instance.cardholader_verfication_result,
      'cryptogram_information_data': instance.cryptogram_information_data,
      'application_cryptogram': instance.application_cryptogram,
      'kernel_id': instance.kernel_id,
      'payment_account_reference': instance.payment_account_reference,
      'receipt_line_two': instance.receipt_line_two?.toJson(),
      'pan_suffix': instance.pan_suffix,
      'auth': instance.auth,
      'serial_num': instance.serial_num,
      'invoice': instance.invoice,
      'batch': instance.batch,
      'bank_net_data': instance.bank_net_data,
      'vas_data': instance.vas_data,
      'customer_reference_number': instance.customer_reference_number,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'receipt_standard': instance.receipt_standard,
      'qr_code': instance.qr_code,
    };
