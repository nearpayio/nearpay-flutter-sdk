// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reconcile_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReconciliationRecieptImpl _$$ReconciliationRecieptImplFromJson(Map json) =>
    _$ReconciliationRecieptImpl(
      total: (json['total'] as num).toDouble(),
      reconciliations: (json['reconciliations'] as List<dynamic>?)
              ?.map((e) => ReconciliationItem.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$ReconciliationRecieptImplToJson(
        _$ReconciliationRecieptImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'reconciliations':
          instance.reconciliations?.map((e) => e.toJson()).toList(),
    };

_$ReconciliationItemImpl _$$ReconciliationItemImplFromJson(Map json) =>
    _$ReconciliationItemImpl(
      id: json['id'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      isBalanced: LabelField<bool>.fromJson(
          Map<String, dynamic>.from(json['is_balanced'] as Map)),
      total: json['total'] as String,
      currency: LocalizationField.fromJson(
          Map<String, dynamic>.from(json['currency'] as Map)),
    );

Map<String, dynamic> _$$ReconciliationItemImplToJson(
        _$ReconciliationItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'is_balanced': instance.isBalanced.toJson(),
      'total': instance.total,
      'currency': instance.currency.toJson(),
    };
