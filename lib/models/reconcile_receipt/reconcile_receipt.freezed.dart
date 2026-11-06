// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reconcile_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReconciliationReceipt _$ReconciliationReceiptFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationReciept.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationReceipt {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "is_balanced")
  LabelField<bool> get is_balanced => throw _privateConstructorUsedError;
  @JsonKey(name: "details")
  ReconciliationDetails get details => throw _privateConstructorUsedError;
  @JsonKey(name: "schemes")
  List<ReconciliationSchemes> get schemes => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  LocalizationField get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String get qr_code => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant")
  Merchant get merchant => throw _privateConstructorUsedError;
  @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
  String? get tid => throw _privateConstructorUsedError;
  @JsonKey(name: "system_trace_audit_number")
  String get system_trace_audit_number => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_software_version_number")
  String get pos_software_version_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationReceiptCopyWith<ReconciliationReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationReceiptCopyWith<$Res> {
  factory $ReconciliationReceiptCopyWith(ReconciliationReceipt value,
          $Res Function(ReconciliationReceipt) then) =
      _$ReconciliationReceiptCopyWithImpl<$Res, ReconciliationReceipt>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "date")
          String date,
      @JsonKey(name: "time")
          String time,
      @JsonKey(name: "is_balanced")
          LabelField<bool> is_balanced,
      @JsonKey(name: "details")
          ReconciliationDetails details,
      @JsonKey(name: "schemes")
          List<ReconciliationSchemes> schemes,
      @JsonKey(name: "currency")
          LocalizationField currency,
      @JsonKey(name: "qr_code")
          String qr_code,
      @JsonKey(name: "merchant")
          Merchant merchant,
      @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
          String? tid,
      @JsonKey(name: "system_trace_audit_number")
          String system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
          String pos_software_version_number});

  $LabelFieldCopyWith<bool, $Res> get is_balanced;
  $ReconciliationDetailsCopyWith<$Res> get details;
  $MerchantCopyWith<$Res> get merchant;
}

/// @nodoc
class _$ReconciliationReceiptCopyWithImpl<$Res,
        $Val extends ReconciliationReceipt>
    implements $ReconciliationReceiptCopyWith<$Res> {
  _$ReconciliationReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? is_balanced = null,
    Object? details = null,
    Object? schemes = null,
    Object? currency = null,
    Object? qr_code = null,
    Object? merchant = null,
    Object? tid = freezed,
    Object? system_trace_audit_number = null,
    Object? pos_software_version_number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      is_balanced: null == is_balanced
          ? _value.is_balanced
          : is_balanced // ignore: cast_nullable_to_non_nullable
              as LabelField<bool>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ReconciliationDetails,
      schemes: null == schemes
          ? _value.schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<ReconciliationSchemes>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      qr_code: null == qr_code
          ? _value.qr_code
          : qr_code // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      system_trace_audit_number: null == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String,
      pos_software_version_number: null == pos_software_version_number
          ? _value.pos_software_version_number
          : pos_software_version_number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<bool, $Res> get is_balanced {
    return $LabelFieldCopyWith<bool, $Res>(_value.is_balanced, (value) {
      return _then(_value.copyWith(is_balanced: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationDetailsCopyWith<$Res> get details {
    return $ReconciliationDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantCopyWith<$Res> get merchant {
    return $MerchantCopyWith<$Res>(_value.merchant, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReconciliationRecieptCopyWith<$Res>
    implements $ReconciliationReceiptCopyWith<$Res> {
  factory _$$_ReconciliationRecieptCopyWith(_$_ReconciliationReciept value,
          $Res Function(_$_ReconciliationReciept) then) =
      __$$_ReconciliationRecieptCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          String id,
      @JsonKey(name: "date")
          String date,
      @JsonKey(name: "time")
          String time,
      @JsonKey(name: "is_balanced")
          LabelField<bool> is_balanced,
      @JsonKey(name: "details")
          ReconciliationDetails details,
      @JsonKey(name: "schemes")
          List<ReconciliationSchemes> schemes,
      @JsonKey(name: "currency")
          LocalizationField currency,
      @JsonKey(name: "qr_code")
          String qr_code,
      @JsonKey(name: "merchant")
          Merchant merchant,
      @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
          String? tid,
      @JsonKey(name: "system_trace_audit_number")
          String system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
          String pos_software_version_number});

  @override
  $LabelFieldCopyWith<bool, $Res> get is_balanced;
  @override
  $ReconciliationDetailsCopyWith<$Res> get details;
  @override
  $MerchantCopyWith<$Res> get merchant;
}

/// @nodoc
class __$$_ReconciliationRecieptCopyWithImpl<$Res>
    extends _$ReconciliationReceiptCopyWithImpl<$Res, _$_ReconciliationReciept>
    implements _$$_ReconciliationRecieptCopyWith<$Res> {
  __$$_ReconciliationRecieptCopyWithImpl(_$_ReconciliationReciept _value,
      $Res Function(_$_ReconciliationReciept) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? is_balanced = null,
    Object? details = null,
    Object? schemes = null,
    Object? currency = null,
    Object? qr_code = null,
    Object? merchant = null,
    Object? tid = freezed,
    Object? system_trace_audit_number = null,
    Object? pos_software_version_number = null,
  }) {
    return _then(_$_ReconciliationReciept(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      is_balanced: null == is_balanced
          ? _value.is_balanced
          : is_balanced // ignore: cast_nullable_to_non_nullable
              as LabelField<bool>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ReconciliationDetails,
      schemes: null == schemes
          ? _value._schemes
          : schemes // ignore: cast_nullable_to_non_nullable
              as List<ReconciliationSchemes>,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      qr_code: null == qr_code
          ? _value.qr_code
          : qr_code // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      system_trace_audit_number: null == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String,
      pos_software_version_number: null == pos_software_version_number
          ? _value.pos_software_version_number
          : pos_software_version_number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReconciliationReciept implements _ReconciliationReciept {
  const _$_ReconciliationReciept(
      {@JsonKey(name: "id")
          required this.id,
      @JsonKey(name: "date")
          required this.date,
      @JsonKey(name: "time")
          required this.time,
      @JsonKey(name: "is_balanced")
          required this.is_balanced,
      @JsonKey(name: "details")
          required this.details,
      @JsonKey(name: "schemes")
          required final List<ReconciliationSchemes> schemes,
      @JsonKey(name: "currency")
          required this.currency,
      @JsonKey(name: "qr_code")
          required this.qr_code,
      @JsonKey(name: "merchant")
          required this.merchant,
      @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
          this.tid,
      @JsonKey(name: "system_trace_audit_number")
          required this.system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
          required this.pos_software_version_number})
      : _schemes = schemes;

  factory _$_ReconciliationReciept.fromJson(Map<String, dynamic> json) =>
      _$$_ReconciliationRecieptFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "date")
  final String date;
  @override
  @JsonKey(name: "time")
  final String time;
  @override
  @JsonKey(name: "is_balanced")
  final LabelField<bool> is_balanced;
  @override
  @JsonKey(name: "details")
  final ReconciliationDetails details;
  final List<ReconciliationSchemes> _schemes;
  @override
  @JsonKey(name: "schemes")
  List<ReconciliationSchemes> get schemes {
    if (_schemes is EqualUnmodifiableListView) return _schemes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_schemes);
  }

  @override
  @JsonKey(name: "currency")
  final LocalizationField currency;
  @override
  @JsonKey(name: "qr_code")
  final String qr_code;
  @override
  @JsonKey(name: "merchant")
  final Merchant merchant;
  @override
  @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
  final String? tid;
  @override
  @JsonKey(name: "system_trace_audit_number")
  final String system_trace_audit_number;
  @override
  @JsonKey(name: "pos_software_version_number")
  final String pos_software_version_number;

  @override
  String toString() {
    return 'ReconciliationReceipt(id: $id, date: $date, time: $time, is_balanced: $is_balanced, details: $details, schemes: $schemes, currency: $currency, qr_code: $qr_code, merchant: $merchant, tid: $tid, system_trace_audit_number: $system_trace_audit_number, pos_software_version_number: $pos_software_version_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReconciliationReciept &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.is_balanced, is_balanced) ||
                other.is_balanced == is_balanced) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(other._schemes, _schemes) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.qr_code, qr_code) || other.qr_code == qr_code) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.tid, tid) || other.tid == tid) &&
            (identical(other.system_trace_audit_number,
                    system_trace_audit_number) ||
                other.system_trace_audit_number == system_trace_audit_number) &&
            (identical(other.pos_software_version_number,
                    pos_software_version_number) ||
                other.pos_software_version_number ==
                    pos_software_version_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      time,
      is_balanced,
      details,
      const DeepCollectionEquality().hash(_schemes),
      currency,
      qr_code,
      merchant,
      tid,
      system_trace_audit_number,
      pos_software_version_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReconciliationRecieptCopyWith<_$_ReconciliationReciept> get copyWith =>
      __$$_ReconciliationRecieptCopyWithImpl<_$_ReconciliationReciept>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReconciliationRecieptToJson(
      this,
    );
  }
}

abstract class _ReconciliationReciept implements ReconciliationReceipt {
  const factory _ReconciliationReciept(
          {@JsonKey(name: "id")
              required final String id,
          @JsonKey(name: "date")
              required final String date,
          @JsonKey(name: "time")
              required final String time,
          @JsonKey(name: "is_balanced")
              required final LabelField<bool> is_balanced,
          @JsonKey(name: "details")
              required final ReconciliationDetails details,
          @JsonKey(name: "schemes")
              required final List<ReconciliationSchemes> schemes,
          @JsonKey(name: "currency")
              required final LocalizationField currency,
          @JsonKey(name: "qr_code")
              required final String qr_code,
          @JsonKey(name: "merchant")
              required final Merchant merchant,
          @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
              final String? tid,
          @JsonKey(name: "system_trace_audit_number")
              required final String system_trace_audit_number,
          @JsonKey(name: "pos_software_version_number")
              required final String pos_software_version_number}) =
      _$_ReconciliationReciept;

  factory _ReconciliationReciept.fromJson(Map<String, dynamic> json) =
      _$_ReconciliationReciept.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "time")
  String get time;
  @override
  @JsonKey(name: "is_balanced")
  LabelField<bool> get is_balanced;
  @override
  @JsonKey(name: "details")
  ReconciliationDetails get details;
  @override
  @JsonKey(name: "schemes")
  List<ReconciliationSchemes> get schemes;
  @override
  @JsonKey(name: "currency")
  LocalizationField get currency;
  @override
  @JsonKey(name: "qr_code")
  String get qr_code;
  @override
  @JsonKey(name: "merchant")
  Merchant get merchant;
  @override
  @JsonKey(name: "card_acceptor_terminal_id", nullable: true)
  String? get tid;
  @override
  @JsonKey(name: "system_trace_audit_number")
  String get system_trace_audit_number;
  @override
  @JsonKey(name: "pos_software_version_number")
  String get pos_software_version_number;
  @override
  @JsonKey(ignore: true)
  _$$_ReconciliationRecieptCopyWith<_$_ReconciliationReciept> get copyWith =>
      throw _privateConstructorUsedError;
}

ReconciliationDetails _$ReconciliationDetailsFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationDetails.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationDetails {
  @JsonKey(name: "purchase")
  ReconciliationLabelField get purchase => throw _privateConstructorUsedError;
  @JsonKey(name: "refund")
  ReconciliationLabelField get refund => throw _privateConstructorUsedError;
  @JsonKey(name: "purchase_reversal")
  ReconciliationLabelField get purchase_reversal =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "refund_reversal")
  ReconciliationLabelField get refund_reversal =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  ReconciliationLabelField get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationDetailsCopyWith<ReconciliationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationDetailsCopyWith<$Res> {
  factory $ReconciliationDetailsCopyWith(ReconciliationDetails value,
          $Res Function(ReconciliationDetails) then) =
      _$ReconciliationDetailsCopyWithImpl<$Res, ReconciliationDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "purchase")
          ReconciliationLabelField purchase,
      @JsonKey(name: "refund")
          ReconciliationLabelField refund,
      @JsonKey(name: "purchase_reversal")
          ReconciliationLabelField purchase_reversal,
      @JsonKey(name: "refund_reversal")
          ReconciliationLabelField refund_reversal,
      @JsonKey(name: "total")
          ReconciliationLabelField total});

  $ReconciliationLabelFieldCopyWith<$Res> get purchase;
  $ReconciliationLabelFieldCopyWith<$Res> get refund;
  $ReconciliationLabelFieldCopyWith<$Res> get purchase_reversal;
  $ReconciliationLabelFieldCopyWith<$Res> get refund_reversal;
  $ReconciliationLabelFieldCopyWith<$Res> get total;
}

/// @nodoc
class _$ReconciliationDetailsCopyWithImpl<$Res,
        $Val extends ReconciliationDetails>
    implements $ReconciliationDetailsCopyWith<$Res> {
  _$ReconciliationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchase = null,
    Object? refund = null,
    Object? purchase_reversal = null,
    Object? refund_reversal = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      purchase: null == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      refund: null == refund
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      purchase_reversal: null == purchase_reversal
          ? _value.purchase_reversal
          : purchase_reversal // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      refund_reversal: null == refund_reversal
          ? _value.refund_reversal
          : refund_reversal // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get purchase {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.purchase, (value) {
      return _then(_value.copyWith(purchase: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get refund {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.refund, (value) {
      return _then(_value.copyWith(refund: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get purchase_reversal {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.purchase_reversal,
        (value) {
      return _then(_value.copyWith(purchase_reversal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get refund_reversal {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.refund_reversal,
        (value) {
      return _then(_value.copyWith(refund_reversal: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get total {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReconciliationDetailsCopyWith<$Res>
    implements $ReconciliationDetailsCopyWith<$Res> {
  factory _$$_ReconciliationDetailsCopyWith(_$_ReconciliationDetails value,
          $Res Function(_$_ReconciliationDetails) then) =
      __$$_ReconciliationDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "purchase")
          ReconciliationLabelField purchase,
      @JsonKey(name: "refund")
          ReconciliationLabelField refund,
      @JsonKey(name: "purchase_reversal")
          ReconciliationLabelField purchase_reversal,
      @JsonKey(name: "refund_reversal")
          ReconciliationLabelField refund_reversal,
      @JsonKey(name: "total")
          ReconciliationLabelField total});

  @override
  $ReconciliationLabelFieldCopyWith<$Res> get purchase;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get refund;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get purchase_reversal;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get refund_reversal;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get total;
}

/// @nodoc
class __$$_ReconciliationDetailsCopyWithImpl<$Res>
    extends _$ReconciliationDetailsCopyWithImpl<$Res, _$_ReconciliationDetails>
    implements _$$_ReconciliationDetailsCopyWith<$Res> {
  __$$_ReconciliationDetailsCopyWithImpl(_$_ReconciliationDetails _value,
      $Res Function(_$_ReconciliationDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchase = null,
    Object? refund = null,
    Object? purchase_reversal = null,
    Object? refund_reversal = null,
    Object? total = null,
  }) {
    return _then(_$_ReconciliationDetails(
      purchase: null == purchase
          ? _value.purchase
          : purchase // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      refund: null == refund
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      purchase_reversal: null == purchase_reversal
          ? _value.purchase_reversal
          : purchase_reversal // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      refund_reversal: null == refund_reversal
          ? _value.refund_reversal
          : refund_reversal // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReconciliationDetails implements _ReconciliationDetails {
  const _$_ReconciliationDetails(
      {@JsonKey(name: "purchase") required this.purchase,
      @JsonKey(name: "refund") required this.refund,
      @JsonKey(name: "purchase_reversal") required this.purchase_reversal,
      @JsonKey(name: "refund_reversal") required this.refund_reversal,
      @JsonKey(name: "total") required this.total});

  factory _$_ReconciliationDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ReconciliationDetailsFromJson(json);

  @override
  @JsonKey(name: "purchase")
  final ReconciliationLabelField purchase;
  @override
  @JsonKey(name: "refund")
  final ReconciliationLabelField refund;
  @override
  @JsonKey(name: "purchase_reversal")
  final ReconciliationLabelField purchase_reversal;
  @override
  @JsonKey(name: "refund_reversal")
  final ReconciliationLabelField refund_reversal;
  @override
  @JsonKey(name: "total")
  final ReconciliationLabelField total;

  @override
  String toString() {
    return 'ReconciliationDetails(purchase: $purchase, refund: $refund, purchase_reversal: $purchase_reversal, refund_reversal: $refund_reversal, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReconciliationDetails &&
            (identical(other.purchase, purchase) ||
                other.purchase == purchase) &&
            (identical(other.refund, refund) || other.refund == refund) &&
            (identical(other.purchase_reversal, purchase_reversal) ||
                other.purchase_reversal == purchase_reversal) &&
            (identical(other.refund_reversal, refund_reversal) ||
                other.refund_reversal == refund_reversal) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, purchase, refund, purchase_reversal, refund_reversal, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReconciliationDetailsCopyWith<_$_ReconciliationDetails> get copyWith =>
      __$$_ReconciliationDetailsCopyWithImpl<_$_ReconciliationDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReconciliationDetailsToJson(
      this,
    );
  }
}

abstract class _ReconciliationDetails implements ReconciliationDetails {
  const factory _ReconciliationDetails(
          {@JsonKey(name: "purchase")
              required final ReconciliationLabelField purchase,
          @JsonKey(name: "refund")
              required final ReconciliationLabelField refund,
          @JsonKey(name: "purchase_reversal")
              required final ReconciliationLabelField purchase_reversal,
          @JsonKey(name: "refund_reversal")
              required final ReconciliationLabelField refund_reversal,
          @JsonKey(name: "total")
              required final ReconciliationLabelField total}) =
      _$_ReconciliationDetails;

  factory _ReconciliationDetails.fromJson(Map<String, dynamic> json) =
      _$_ReconciliationDetails.fromJson;

  @override
  @JsonKey(name: "purchase")
  ReconciliationLabelField get purchase;
  @override
  @JsonKey(name: "refund")
  ReconciliationLabelField get refund;
  @override
  @JsonKey(name: "purchase_reversal")
  ReconciliationLabelField get purchase_reversal;
  @override
  @JsonKey(name: "refund_reversal")
  ReconciliationLabelField get refund_reversal;
  @override
  @JsonKey(name: "total")
  ReconciliationLabelField get total;
  @override
  @JsonKey(ignore: true)
  _$$_ReconciliationDetailsCopyWith<_$_ReconciliationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

ReconciliationSchemes _$ReconciliationSchemesFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationSchemes.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationSchemes {
  @JsonKey(name: "name")
  LabelField<String> get name => throw _privateConstructorUsedError;
  @JsonKey(name: "pos")
  ReconciliationSchemesDetails get pos => throw _privateConstructorUsedError;
  @JsonKey(name: "host")
  ReconciliationSchemesDetails get host => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationSchemesCopyWith<ReconciliationSchemes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationSchemesCopyWith<$Res> {
  factory $ReconciliationSchemesCopyWith(ReconciliationSchemes value,
          $Res Function(ReconciliationSchemes) then) =
      _$ReconciliationSchemesCopyWithImpl<$Res, ReconciliationSchemes>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") LabelField<String> name,
      @JsonKey(name: "pos") ReconciliationSchemesDetails pos,
      @JsonKey(name: "host") ReconciliationSchemesDetails host});

  $LabelFieldCopyWith<String, $Res> get name;
  $ReconciliationSchemesDetailsCopyWith<$Res> get pos;
  $ReconciliationSchemesDetailsCopyWith<$Res> get host;
}

/// @nodoc
class _$ReconciliationSchemesCopyWithImpl<$Res,
        $Val extends ReconciliationSchemes>
    implements $ReconciliationSchemesCopyWith<$Res> {
  _$ReconciliationSchemesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pos = null,
    Object? host = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LabelField<String>,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as ReconciliationSchemesDetails,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as ReconciliationSchemesDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<String, $Res> get name {
    return $LabelFieldCopyWith<String, $Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationSchemesDetailsCopyWith<$Res> get pos {
    return $ReconciliationSchemesDetailsCopyWith<$Res>(_value.pos, (value) {
      return _then(_value.copyWith(pos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationSchemesDetailsCopyWith<$Res> get host {
    return $ReconciliationSchemesDetailsCopyWith<$Res>(_value.host, (value) {
      return _then(_value.copyWith(host: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReconciliationSchemesCopyWith<$Res>
    implements $ReconciliationSchemesCopyWith<$Res> {
  factory _$$_ReconciliationSchemesCopyWith(_$_ReconciliationSchemes value,
          $Res Function(_$_ReconciliationSchemes) then) =
      __$$_ReconciliationSchemesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") LabelField<String> name,
      @JsonKey(name: "pos") ReconciliationSchemesDetails pos,
      @JsonKey(name: "host") ReconciliationSchemesDetails host});

  @override
  $LabelFieldCopyWith<String, $Res> get name;
  @override
  $ReconciliationSchemesDetailsCopyWith<$Res> get pos;
  @override
  $ReconciliationSchemesDetailsCopyWith<$Res> get host;
}

/// @nodoc
class __$$_ReconciliationSchemesCopyWithImpl<$Res>
    extends _$ReconciliationSchemesCopyWithImpl<$Res, _$_ReconciliationSchemes>
    implements _$$_ReconciliationSchemesCopyWith<$Res> {
  __$$_ReconciliationSchemesCopyWithImpl(_$_ReconciliationSchemes _value,
      $Res Function(_$_ReconciliationSchemes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pos = null,
    Object? host = null,
  }) {
    return _then(_$_ReconciliationSchemes(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LabelField<String>,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as ReconciliationSchemesDetails,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as ReconciliationSchemesDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReconciliationSchemes implements _ReconciliationSchemes {
  const _$_ReconciliationSchemes(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "pos") required this.pos,
      @JsonKey(name: "host") required this.host});

  factory _$_ReconciliationSchemes.fromJson(Map<String, dynamic> json) =>
      _$$_ReconciliationSchemesFromJson(json);

  @override
  @JsonKey(name: "name")
  final LabelField<String> name;
  @override
  @JsonKey(name: "pos")
  final ReconciliationSchemesDetails pos;
  @override
  @JsonKey(name: "host")
  final ReconciliationSchemesDetails host;

  @override
  String toString() {
    return 'ReconciliationSchemes(name: $name, pos: $pos, host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReconciliationSchemes &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.host, host) || other.host == host));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, pos, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReconciliationSchemesCopyWith<_$_ReconciliationSchemes> get copyWith =>
      __$$_ReconciliationSchemesCopyWithImpl<_$_ReconciliationSchemes>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReconciliationSchemesToJson(
      this,
    );
  }
}

abstract class _ReconciliationSchemes implements ReconciliationSchemes {
  const factory _ReconciliationSchemes(
          {@JsonKey(name: "name")
              required final LabelField<String> name,
          @JsonKey(name: "pos")
              required final ReconciliationSchemesDetails pos,
          @JsonKey(name: "host")
              required final ReconciliationSchemesDetails host}) =
      _$_ReconciliationSchemes;

  factory _ReconciliationSchemes.fromJson(Map<String, dynamic> json) =
      _$_ReconciliationSchemes.fromJson;

  @override
  @JsonKey(name: "name")
  LabelField<String> get name;
  @override
  @JsonKey(name: "pos")
  ReconciliationSchemesDetails get pos;
  @override
  @JsonKey(name: "host")
  ReconciliationSchemesDetails get host;
  @override
  @JsonKey(ignore: true)
  _$$_ReconciliationSchemesCopyWith<_$_ReconciliationSchemes> get copyWith =>
      throw _privateConstructorUsedError;
}

ReconciliationSchemesDetails _$ReconciliationSchemesDetailsFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationSchemesDetails.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationSchemesDetails {
  @JsonKey(name: "debit")
  ReconciliationLabelField get debit => throw _privateConstructorUsedError;
  @JsonKey(name: "credit")
  ReconciliationLabelField get credit => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  ReconciliationLabelField get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationSchemesDetailsCopyWith<ReconciliationSchemesDetails>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationSchemesDetailsCopyWith<$Res> {
  factory $ReconciliationSchemesDetailsCopyWith(
          ReconciliationSchemesDetails value,
          $Res Function(ReconciliationSchemesDetails) then) =
      _$ReconciliationSchemesDetailsCopyWithImpl<$Res,
          ReconciliationSchemesDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "debit") ReconciliationLabelField debit,
      @JsonKey(name: "credit") ReconciliationLabelField credit,
      @JsonKey(name: "total") ReconciliationLabelField total});

  $ReconciliationLabelFieldCopyWith<$Res> get debit;
  $ReconciliationLabelFieldCopyWith<$Res> get credit;
  $ReconciliationLabelFieldCopyWith<$Res> get total;
}

/// @nodoc
class _$ReconciliationSchemesDetailsCopyWithImpl<$Res,
        $Val extends ReconciliationSchemesDetails>
    implements $ReconciliationSchemesDetailsCopyWith<$Res> {
  _$ReconciliationSchemesDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debit = null,
    Object? credit = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      debit: null == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get debit {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.debit, (value) {
      return _then(_value.copyWith(debit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get credit {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.credit, (value) {
      return _then(_value.copyWith(credit: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReconciliationLabelFieldCopyWith<$Res> get total {
    return $ReconciliationLabelFieldCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReconciliationSchemesDetailsCopyWith<$Res>
    implements $ReconciliationSchemesDetailsCopyWith<$Res> {
  factory _$$_ReconciliationSchemesDetailsCopyWith(
          _$_ReconciliationSchemesDetails value,
          $Res Function(_$_ReconciliationSchemesDetails) then) =
      __$$_ReconciliationSchemesDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "debit") ReconciliationLabelField debit,
      @JsonKey(name: "credit") ReconciliationLabelField credit,
      @JsonKey(name: "total") ReconciliationLabelField total});

  @override
  $ReconciliationLabelFieldCopyWith<$Res> get debit;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get credit;
  @override
  $ReconciliationLabelFieldCopyWith<$Res> get total;
}

/// @nodoc
class __$$_ReconciliationSchemesDetailsCopyWithImpl<$Res>
    extends _$ReconciliationSchemesDetailsCopyWithImpl<$Res,
        _$_ReconciliationSchemesDetails>
    implements _$$_ReconciliationSchemesDetailsCopyWith<$Res> {
  __$$_ReconciliationSchemesDetailsCopyWithImpl(
      _$_ReconciliationSchemesDetails _value,
      $Res Function(_$_ReconciliationSchemesDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? debit = null,
    Object? credit = null,
    Object? total = null,
  }) {
    return _then(_$_ReconciliationSchemesDetails(
      debit: null == debit
          ? _value.debit
          : debit // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      credit: null == credit
          ? _value.credit
          : credit // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as ReconciliationLabelField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReconciliationSchemesDetails implements _ReconciliationSchemesDetails {
  const _$_ReconciliationSchemesDetails(
      {@JsonKey(name: "debit") required this.debit,
      @JsonKey(name: "credit") required this.credit,
      @JsonKey(name: "total") required this.total});

  factory _$_ReconciliationSchemesDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ReconciliationSchemesDetailsFromJson(json);

  @override
  @JsonKey(name: "debit")
  final ReconciliationLabelField debit;
  @override
  @JsonKey(name: "credit")
  final ReconciliationLabelField credit;
  @override
  @JsonKey(name: "total")
  final ReconciliationLabelField total;

  @override
  String toString() {
    return 'ReconciliationSchemesDetails(debit: $debit, credit: $credit, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReconciliationSchemesDetails &&
            (identical(other.debit, debit) || other.debit == debit) &&
            (identical(other.credit, credit) || other.credit == credit) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, debit, credit, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReconciliationSchemesDetailsCopyWith<_$_ReconciliationSchemesDetails>
      get copyWith => __$$_ReconciliationSchemesDetailsCopyWithImpl<
          _$_ReconciliationSchemesDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReconciliationSchemesDetailsToJson(
      this,
    );
  }
}

abstract class _ReconciliationSchemesDetails
    implements ReconciliationSchemesDetails {
  const factory _ReconciliationSchemesDetails(
          {@JsonKey(name: "debit")
              required final ReconciliationLabelField debit,
          @JsonKey(name: "credit")
              required final ReconciliationLabelField credit,
          @JsonKey(name: "total")
              required final ReconciliationLabelField total}) =
      _$_ReconciliationSchemesDetails;

  factory _ReconciliationSchemesDetails.fromJson(Map<String, dynamic> json) =
      _$_ReconciliationSchemesDetails.fromJson;

  @override
  @JsonKey(name: "debit")
  ReconciliationLabelField get debit;
  @override
  @JsonKey(name: "credit")
  ReconciliationLabelField get credit;
  @override
  @JsonKey(name: "total")
  ReconciliationLabelField get total;
  @override
  @JsonKey(ignore: true)
  _$$_ReconciliationSchemesDetailsCopyWith<_$_ReconciliationSchemesDetails>
      get copyWith => throw _privateConstructorUsedError;
}

ReconciliationLabelField _$ReconciliationLabelFieldFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationLabelField.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationLabelField {
  @JsonKey(name: "label")
  LocalizationField get label => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  double get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationLabelFieldCopyWith<ReconciliationLabelField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationLabelFieldCopyWith<$Res> {
  factory $ReconciliationLabelFieldCopyWith(ReconciliationLabelField value,
          $Res Function(ReconciliationLabelField) then) =
      _$ReconciliationLabelFieldCopyWithImpl<$Res, ReconciliationLabelField>;
  @useResult
  $Res call(
      {@JsonKey(name: "label") LocalizationField label,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "count") double count});
}

/// @nodoc
class _$ReconciliationLabelFieldCopyWithImpl<$Res,
        $Val extends ReconciliationLabelField>
    implements $ReconciliationLabelFieldCopyWith<$Res> {
  _$ReconciliationLabelFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? total = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReconciliationLabelFieldCopyWith<$Res>
    implements $ReconciliationLabelFieldCopyWith<$Res> {
  factory _$$_ReconciliationLabelFieldCopyWith(
          _$_ReconciliationLabelField value,
          $Res Function(_$_ReconciliationLabelField) then) =
      __$$_ReconciliationLabelFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label") LocalizationField label,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "count") double count});
}

/// @nodoc
class __$$_ReconciliationLabelFieldCopyWithImpl<$Res>
    extends _$ReconciliationLabelFieldCopyWithImpl<$Res,
        _$_ReconciliationLabelField>
    implements _$$_ReconciliationLabelFieldCopyWith<$Res> {
  __$$_ReconciliationLabelFieldCopyWithImpl(_$_ReconciliationLabelField _value,
      $Res Function(_$_ReconciliationLabelField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? total = null,
    Object? count = null,
  }) {
    return _then(_$_ReconciliationLabelField(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReconciliationLabelField implements _ReconciliationLabelField {
  const _$_ReconciliationLabelField(
      {@JsonKey(name: "label") required this.label,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "count") required this.count});

  factory _$_ReconciliationLabelField.fromJson(Map<String, dynamic> json) =>
      _$$_ReconciliationLabelFieldFromJson(json);

  @override
  @JsonKey(name: "label")
  final LocalizationField label;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "count")
  final double count;

  @override
  String toString() {
    return 'ReconciliationLabelField(label: $label, total: $total, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReconciliationLabelField &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, total, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReconciliationLabelFieldCopyWith<_$_ReconciliationLabelField>
      get copyWith => __$$_ReconciliationLabelFieldCopyWithImpl<
          _$_ReconciliationLabelField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReconciliationLabelFieldToJson(
      this,
    );
  }
}

abstract class _ReconciliationLabelField implements ReconciliationLabelField {
  const factory _ReconciliationLabelField(
          {@JsonKey(name: "label") required final LocalizationField label,
          @JsonKey(name: "total") required final String total,
          @JsonKey(name: "count") required final double count}) =
      _$_ReconciliationLabelField;

  factory _ReconciliationLabelField.fromJson(Map<String, dynamic> json) =
      _$_ReconciliationLabelField.fromJson;

  @override
  @JsonKey(name: "label")
  LocalizationField get label;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "count")
  double get count;
  @override
  @JsonKey(ignore: true)
  _$$_ReconciliationLabelFieldCopyWith<_$_ReconciliationLabelField>
      get copyWith => throw _privateConstructorUsedError;
}
