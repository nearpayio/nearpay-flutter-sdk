// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionImpl _$$SessionImplFromJson(Map json) => _$SessionImpl(
      id: json['id'] as String,
      status: json['status'] as String,
      type: json['type'] as String,
      client_id: json['client_id'] as String,
      amount: json['amount'] as String,
      expired_at: json['expired_at'] as String,
      reference_id: json['reference_id'] as String,
      created_at: json['created_at'] as String,
      updated_at: json['updated_at'] as String,
      transaction: SessionTransaction.fromJson(
          Map<String, dynamic>.from(json['transaction'] as Map)),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'type': instance.type,
      'client_id': instance.client_id,
      'amount': instance.amount,
      'expired_at': instance.expired_at,
      'reference_id': instance.reference_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'transaction': instance.transaction.toJson(),
    };
