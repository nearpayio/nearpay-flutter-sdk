// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionTransaction _$$_SessionTransactionFromJson(Map json) =>
    _$_SessionTransaction(
      id: json['id'] as String,
      uuid: json['uuid'] as String,
      amount_authorized: json['amount_authorized'] as String,
      transaction_currency_code: json['transaction_currency_code'] as String,
      cardholder_verification_result:
          json['cardholder_verification_result'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      transaction_type: json['transaction_type'] as String,
      card_scheme_id: json['card_scheme_id'] as String,
      system_trace_audit_number: json['system_trace_audit_number'] as String,
      is_approved: json['is_approved'] as bool,
      is_reversed: json['is_reversed'] as bool,
      is_reconcilied: json['is_reconcilied'] as bool,
      device_id: json['device_id'] as String,
      user_id: json['user_id'] as String,
      merchant_id: json['merchant_id'] as String,
      customer_reference_number: json['customer_reference_number'] as String,
      pos_confirmed: json['pos_confirmed'] as bool,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      receipts: (json['receipts'] as List<dynamic>)
          .map((e) =>
              TransactionReceipt.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      card_scheme: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['card_scheme'] as Map)),
      type: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['type'] as Map)),
      verification_method: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['verification_method'] as Map)),
    );

Map<String, dynamic> _$$_SessionTransactionToJson(
        _$_SessionTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'amount_authorized': instance.amount_authorized,
      'transaction_currency_code': instance.transaction_currency_code,
      'cardholder_verification_result': instance.cardholder_verification_result,
      'lat': instance.lat,
      'lon': instance.lon,
      'transaction_type': instance.transaction_type,
      'card_scheme_id': instance.card_scheme_id,
      'system_trace_audit_number': instance.system_trace_audit_number,
      'is_approved': instance.is_approved,
      'is_reversed': instance.is_reversed,
      'is_reconcilied': instance.is_reconcilied,
      'device_id': instance.device_id,
      'user_id': instance.user_id,
      'merchant_id': instance.merchant_id,
      'customer_reference_number': instance.customer_reference_number,
      'pos_confirmed': instance.pos_confirmed,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'receipts': instance.receipts.map((e) => e.toJson()).toList(),
      'card_scheme': instance.card_scheme.toJson(),
      'type': instance.type.toJson(),
      'verification_method': instance.verification_method.toJson(),
    };
