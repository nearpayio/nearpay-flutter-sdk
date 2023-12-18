// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionTransaction _$SessionTransactionFromJson(Map<String, dynamic> json) {
  return _SessionTransaction.fromJson(json);
}

/// @nodoc
mixin _$SessionTransaction {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_authorized")
  String get amount_authorized => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_currency_code")
  String get transaction_currency_code => throw _privateConstructorUsedError;
  @JsonKey(name: "cardholder_verification_result")
  String get cardholder_verification_result =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "lat")
  String get lat => throw _privateConstructorUsedError;
  @JsonKey(name: "lon")
  String get lon => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  String get transaction_type => throw _privateConstructorUsedError;
  @JsonKey(name: "card_scheme_id")
  String get card_scheme_id => throw _privateConstructorUsedError;
  @JsonKey(name: "system_trace_audit_number")
  String get system_trace_audit_number => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved")
  bool get is_approved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reversed")
  bool get is_reversed => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reconcilied")
  bool get is_reconcilied => throw _privateConstructorUsedError;
  @JsonKey(name: "device_id")
  String get device_id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get user_id => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant_id")
  String get merchant_id => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_reference_number")
  String get customer_reference_number => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_confirmed")
  bool get pos_confirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updated_at => throw _privateConstructorUsedError;
  @JsonKey(name: "receipts")
  List<TransactionReceipt> get receipts => throw _privateConstructorUsedError;
  @JsonKey(name: "card_scheme")
  LocalizationField get card_scheme => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  LocalizationField get type => throw _privateConstructorUsedError;
  @JsonKey(name: "verification_method")
  LocalizationField get verification_method =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionTransactionCopyWith<SessionTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionTransactionCopyWith<$Res> {
  factory $SessionTransactionCopyWith(
          SessionTransaction value, $Res Function(SessionTransaction) then) =
      _$SessionTransactionCopyWithImpl<$Res, SessionTransaction>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "uuid") String uuid,
      @JsonKey(name: "amount_authorized") String amount_authorized,
      @JsonKey(name: "transaction_currency_code")
      String transaction_currency_code,
      @JsonKey(name: "cardholder_verification_result")
      String cardholder_verification_result,
      @JsonKey(name: "lat") String lat,
      @JsonKey(name: "lon") String lon,
      @JsonKey(name: "transaction_type") String transaction_type,
      @JsonKey(name: "card_scheme_id") String card_scheme_id,
      @JsonKey(name: "system_trace_audit_number")
      String system_trace_audit_number,
      @JsonKey(name: "is_approved") bool is_approved,
      @JsonKey(name: "is_reversed") bool is_reversed,
      @JsonKey(name: "is_reconcilied") bool is_reconcilied,
      @JsonKey(name: "device_id") String device_id,
      @JsonKey(name: "user_id") String user_id,
      @JsonKey(name: "merchant_id") String merchant_id,
      @JsonKey(name: "customer_reference_number")
      String customer_reference_number,
      @JsonKey(name: "pos_confirmed") bool pos_confirmed,
      @JsonKey(name: "created_at") String created_at,
      @JsonKey(name: "updated_at") String updated_at,
      @JsonKey(name: "receipts") List<TransactionReceipt> receipts,
      @JsonKey(name: "card_scheme") LocalizationField card_scheme,
      @JsonKey(name: "type") LocalizationField type,
      @JsonKey(name: "verification_method")
      LocalizationField verification_method});
}

/// @nodoc
class _$SessionTransactionCopyWithImpl<$Res, $Val extends SessionTransaction>
    implements $SessionTransactionCopyWith<$Res> {
  _$SessionTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? amount_authorized = null,
    Object? transaction_currency_code = null,
    Object? cardholder_verification_result = null,
    Object? lat = null,
    Object? lon = null,
    Object? transaction_type = null,
    Object? card_scheme_id = null,
    Object? system_trace_audit_number = null,
    Object? is_approved = null,
    Object? is_reversed = null,
    Object? is_reconcilied = null,
    Object? device_id = null,
    Object? user_id = null,
    Object? merchant_id = null,
    Object? customer_reference_number = null,
    Object? pos_confirmed = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? receipts = null,
    Object? card_scheme = null,
    Object? type = null,
    Object? verification_method = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount_authorized: null == amount_authorized
          ? _value.amount_authorized
          : amount_authorized // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_currency_code: null == transaction_currency_code
          ? _value.transaction_currency_code
          : transaction_currency_code // ignore: cast_nullable_to_non_nullable
              as String,
      cardholder_verification_result: null == cardholder_verification_result
          ? _value.cardholder_verification_result
          : cardholder_verification_result // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_type: null == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as String,
      card_scheme_id: null == card_scheme_id
          ? _value.card_scheme_id
          : card_scheme_id // ignore: cast_nullable_to_non_nullable
              as String,
      system_trace_audit_number: null == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String,
      is_approved: null == is_approved
          ? _value.is_approved
          : is_approved // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reversed: null == is_reversed
          ? _value.is_reversed
          : is_reversed // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reconcilied: null == is_reconcilied
          ? _value.is_reconcilied
          : is_reconcilied // ignore: cast_nullable_to_non_nullable
              as bool,
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      merchant_id: null == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String,
      customer_reference_number: null == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String,
      pos_confirmed: null == pos_confirmed
          ? _value.pos_confirmed
          : pos_confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      receipts: null == receipts
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
      card_scheme: null == card_scheme
          ? _value.card_scheme
          : card_scheme // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      verification_method: null == verification_method
          ? _value.verification_method
          : verification_method // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionTransactionImplCopyWith<$Res>
    implements $SessionTransactionCopyWith<$Res> {
  factory _$$SessionTransactionImplCopyWith(_$SessionTransactionImpl value,
          $Res Function(_$SessionTransactionImpl) then) =
      __$$SessionTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "uuid") String uuid,
      @JsonKey(name: "amount_authorized") String amount_authorized,
      @JsonKey(name: "transaction_currency_code")
      String transaction_currency_code,
      @JsonKey(name: "cardholder_verification_result")
      String cardholder_verification_result,
      @JsonKey(name: "lat") String lat,
      @JsonKey(name: "lon") String lon,
      @JsonKey(name: "transaction_type") String transaction_type,
      @JsonKey(name: "card_scheme_id") String card_scheme_id,
      @JsonKey(name: "system_trace_audit_number")
      String system_trace_audit_number,
      @JsonKey(name: "is_approved") bool is_approved,
      @JsonKey(name: "is_reversed") bool is_reversed,
      @JsonKey(name: "is_reconcilied") bool is_reconcilied,
      @JsonKey(name: "device_id") String device_id,
      @JsonKey(name: "user_id") String user_id,
      @JsonKey(name: "merchant_id") String merchant_id,
      @JsonKey(name: "customer_reference_number")
      String customer_reference_number,
      @JsonKey(name: "pos_confirmed") bool pos_confirmed,
      @JsonKey(name: "created_at") String created_at,
      @JsonKey(name: "updated_at") String updated_at,
      @JsonKey(name: "receipts") List<TransactionReceipt> receipts,
      @JsonKey(name: "card_scheme") LocalizationField card_scheme,
      @JsonKey(name: "type") LocalizationField type,
      @JsonKey(name: "verification_method")
      LocalizationField verification_method});
}

/// @nodoc
class __$$SessionTransactionImplCopyWithImpl<$Res>
    extends _$SessionTransactionCopyWithImpl<$Res, _$SessionTransactionImpl>
    implements _$$SessionTransactionImplCopyWith<$Res> {
  __$$SessionTransactionImplCopyWithImpl(_$SessionTransactionImpl _value,
      $Res Function(_$SessionTransactionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? amount_authorized = null,
    Object? transaction_currency_code = null,
    Object? cardholder_verification_result = null,
    Object? lat = null,
    Object? lon = null,
    Object? transaction_type = null,
    Object? card_scheme_id = null,
    Object? system_trace_audit_number = null,
    Object? is_approved = null,
    Object? is_reversed = null,
    Object? is_reconcilied = null,
    Object? device_id = null,
    Object? user_id = null,
    Object? merchant_id = null,
    Object? customer_reference_number = null,
    Object? pos_confirmed = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? receipts = null,
    Object? card_scheme = null,
    Object? type = null,
    Object? verification_method = null,
  }) {
    return _then(_$SessionTransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount_authorized: null == amount_authorized
          ? _value.amount_authorized
          : amount_authorized // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_currency_code: null == transaction_currency_code
          ? _value.transaction_currency_code
          : transaction_currency_code // ignore: cast_nullable_to_non_nullable
              as String,
      cardholder_verification_result: null == cardholder_verification_result
          ? _value.cardholder_verification_result
          : cardholder_verification_result // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_type: null == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as String,
      card_scheme_id: null == card_scheme_id
          ? _value.card_scheme_id
          : card_scheme_id // ignore: cast_nullable_to_non_nullable
              as String,
      system_trace_audit_number: null == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String,
      is_approved: null == is_approved
          ? _value.is_approved
          : is_approved // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reversed: null == is_reversed
          ? _value.is_reversed
          : is_reversed // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reconcilied: null == is_reconcilied
          ? _value.is_reconcilied
          : is_reconcilied // ignore: cast_nullable_to_non_nullable
              as bool,
      device_id: null == device_id
          ? _value.device_id
          : device_id // ignore: cast_nullable_to_non_nullable
              as String,
      user_id: null == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as String,
      merchant_id: null == merchant_id
          ? _value.merchant_id
          : merchant_id // ignore: cast_nullable_to_non_nullable
              as String,
      customer_reference_number: null == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String,
      pos_confirmed: null == pos_confirmed
          ? _value.pos_confirmed
          : pos_confirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
      card_scheme: null == card_scheme
          ? _value.card_scheme
          : card_scheme // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      verification_method: null == verification_method
          ? _value.verification_method
          : verification_method // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionTransactionImpl implements _SessionTransaction {
  const _$SessionTransactionImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "uuid") required this.uuid,
      @JsonKey(name: "amount_authorized") required this.amount_authorized,
      @JsonKey(name: "transaction_currency_code")
      required this.transaction_currency_code,
      @JsonKey(name: "cardholder_verification_result")
      required this.cardholder_verification_result,
      @JsonKey(name: "lat") required this.lat,
      @JsonKey(name: "lon") required this.lon,
      @JsonKey(name: "transaction_type") required this.transaction_type,
      @JsonKey(name: "card_scheme_id") required this.card_scheme_id,
      @JsonKey(name: "system_trace_audit_number")
      required this.system_trace_audit_number,
      @JsonKey(name: "is_approved") required this.is_approved,
      @JsonKey(name: "is_reversed") required this.is_reversed,
      @JsonKey(name: "is_reconcilied") required this.is_reconcilied,
      @JsonKey(name: "device_id") required this.device_id,
      @JsonKey(name: "user_id") required this.user_id,
      @JsonKey(name: "merchant_id") required this.merchant_id,
      @JsonKey(name: "customer_reference_number")
      required this.customer_reference_number,
      @JsonKey(name: "pos_confirmed") required this.pos_confirmed,
      @JsonKey(name: "created_at") required this.created_at,
      @JsonKey(name: "updated_at") required this.updated_at,
      @JsonKey(name: "receipts")
      required final List<TransactionReceipt> receipts,
      @JsonKey(name: "card_scheme") required this.card_scheme,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "verification_method") required this.verification_method})
      : _receipts = receipts;

  factory _$SessionTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionTransactionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "amount_authorized")
  final String amount_authorized;
  @override
  @JsonKey(name: "transaction_currency_code")
  final String transaction_currency_code;
  @override
  @JsonKey(name: "cardholder_verification_result")
  final String cardholder_verification_result;
  @override
  @JsonKey(name: "lat")
  final String lat;
  @override
  @JsonKey(name: "lon")
  final String lon;
  @override
  @JsonKey(name: "transaction_type")
  final String transaction_type;
  @override
  @JsonKey(name: "card_scheme_id")
  final String card_scheme_id;
  @override
  @JsonKey(name: "system_trace_audit_number")
  final String system_trace_audit_number;
  @override
  @JsonKey(name: "is_approved")
  final bool is_approved;
  @override
  @JsonKey(name: "is_reversed")
  final bool is_reversed;
  @override
  @JsonKey(name: "is_reconcilied")
  final bool is_reconcilied;
  @override
  @JsonKey(name: "device_id")
  final String device_id;
  @override
  @JsonKey(name: "user_id")
  final String user_id;
  @override
  @JsonKey(name: "merchant_id")
  final String merchant_id;
  @override
  @JsonKey(name: "customer_reference_number")
  final String customer_reference_number;
  @override
  @JsonKey(name: "pos_confirmed")
  final bool pos_confirmed;
  @override
  @JsonKey(name: "created_at")
  final String created_at;
  @override
  @JsonKey(name: "updated_at")
  final String updated_at;
  final List<TransactionReceipt> _receipts;
  @override
  @JsonKey(name: "receipts")
  List<TransactionReceipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  @JsonKey(name: "card_scheme")
  final LocalizationField card_scheme;
  @override
  @JsonKey(name: "type")
  final LocalizationField type;
  @override
  @JsonKey(name: "verification_method")
  final LocalizationField verification_method;

  @override
  String toString() {
    return 'SessionTransaction(id: $id, uuid: $uuid, amount_authorized: $amount_authorized, transaction_currency_code: $transaction_currency_code, cardholder_verification_result: $cardholder_verification_result, lat: $lat, lon: $lon, transaction_type: $transaction_type, card_scheme_id: $card_scheme_id, system_trace_audit_number: $system_trace_audit_number, is_approved: $is_approved, is_reversed: $is_reversed, is_reconcilied: $is_reconcilied, device_id: $device_id, user_id: $user_id, merchant_id: $merchant_id, customer_reference_number: $customer_reference_number, pos_confirmed: $pos_confirmed, created_at: $created_at, updated_at: $updated_at, receipts: $receipts, card_scheme: $card_scheme, type: $type, verification_method: $verification_method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.amount_authorized, amount_authorized) ||
                other.amount_authorized == amount_authorized) &&
            (identical(other.transaction_currency_code, transaction_currency_code) ||
                other.transaction_currency_code == transaction_currency_code) &&
            (identical(other.cardholder_verification_result,
                    cardholder_verification_result) ||
                other.cardholder_verification_result ==
                    cardholder_verification_result) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.transaction_type, transaction_type) ||
                other.transaction_type == transaction_type) &&
            (identical(other.card_scheme_id, card_scheme_id) ||
                other.card_scheme_id == card_scheme_id) &&
            (identical(other.system_trace_audit_number,
                    system_trace_audit_number) ||
                other.system_trace_audit_number == system_trace_audit_number) &&
            (identical(other.is_approved, is_approved) ||
                other.is_approved == is_approved) &&
            (identical(other.is_reversed, is_reversed) ||
                other.is_reversed == is_reversed) &&
            (identical(other.is_reconcilied, is_reconcilied) ||
                other.is_reconcilied == is_reconcilied) &&
            (identical(other.device_id, device_id) ||
                other.device_id == device_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.merchant_id, merchant_id) ||
                other.merchant_id == merchant_id) &&
            (identical(other.customer_reference_number,
                    customer_reference_number) ||
                other.customer_reference_number == customer_reference_number) &&
            (identical(other.pos_confirmed, pos_confirmed) ||
                other.pos_confirmed == pos_confirmed) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            const DeepCollectionEquality().equals(other._receipts, _receipts) &&
            (identical(other.card_scheme, card_scheme) ||
                other.card_scheme == card_scheme) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.verification_method, verification_method) ||
                other.verification_method == verification_method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uuid,
        amount_authorized,
        transaction_currency_code,
        cardholder_verification_result,
        lat,
        lon,
        transaction_type,
        card_scheme_id,
        system_trace_audit_number,
        is_approved,
        is_reversed,
        is_reconcilied,
        device_id,
        user_id,
        merchant_id,
        customer_reference_number,
        pos_confirmed,
        created_at,
        updated_at,
        const DeepCollectionEquality().hash(_receipts),
        card_scheme,
        type,
        verification_method
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionTransactionImplCopyWith<_$SessionTransactionImpl> get copyWith =>
      __$$SessionTransactionImplCopyWithImpl<_$SessionTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionTransactionImplToJson(
      this,
    );
  }
}

abstract class _SessionTransaction implements SessionTransaction {
  const factory _SessionTransaction(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "uuid") required final String uuid,
      @JsonKey(name: "amount_authorized")
      required final String amount_authorized,
      @JsonKey(name: "transaction_currency_code")
      required final String transaction_currency_code,
      @JsonKey(name: "cardholder_verification_result")
      required final String cardholder_verification_result,
      @JsonKey(name: "lat") required final String lat,
      @JsonKey(name: "lon") required final String lon,
      @JsonKey(name: "transaction_type") required final String transaction_type,
      @JsonKey(name: "card_scheme_id") required final String card_scheme_id,
      @JsonKey(name: "system_trace_audit_number")
      required final String system_trace_audit_number,
      @JsonKey(name: "is_approved") required final bool is_approved,
      @JsonKey(name: "is_reversed") required final bool is_reversed,
      @JsonKey(name: "is_reconcilied") required final bool is_reconcilied,
      @JsonKey(name: "device_id") required final String device_id,
      @JsonKey(name: "user_id") required final String user_id,
      @JsonKey(name: "merchant_id") required final String merchant_id,
      @JsonKey(name: "customer_reference_number")
      required final String customer_reference_number,
      @JsonKey(name: "pos_confirmed") required final bool pos_confirmed,
      @JsonKey(name: "created_at") required final String created_at,
      @JsonKey(name: "updated_at") required final String updated_at,
      @JsonKey(name: "receipts")
      required final List<TransactionReceipt> receipts,
      @JsonKey(name: "card_scheme")
      required final LocalizationField card_scheme,
      @JsonKey(name: "type") required final LocalizationField type,
      @JsonKey(name: "verification_method")
      required final LocalizationField
          verification_method}) = _$SessionTransactionImpl;

  factory _SessionTransaction.fromJson(Map<String, dynamic> json) =
      _$SessionTransactionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "amount_authorized")
  String get amount_authorized;
  @override
  @JsonKey(name: "transaction_currency_code")
  String get transaction_currency_code;
  @override
  @JsonKey(name: "cardholder_verification_result")
  String get cardholder_verification_result;
  @override
  @JsonKey(name: "lat")
  String get lat;
  @override
  @JsonKey(name: "lon")
  String get lon;
  @override
  @JsonKey(name: "transaction_type")
  String get transaction_type;
  @override
  @JsonKey(name: "card_scheme_id")
  String get card_scheme_id;
  @override
  @JsonKey(name: "system_trace_audit_number")
  String get system_trace_audit_number;
  @override
  @JsonKey(name: "is_approved")
  bool get is_approved;
  @override
  @JsonKey(name: "is_reversed")
  bool get is_reversed;
  @override
  @JsonKey(name: "is_reconcilied")
  bool get is_reconcilied;
  @override
  @JsonKey(name: "device_id")
  String get device_id;
  @override
  @JsonKey(name: "user_id")
  String get user_id;
  @override
  @JsonKey(name: "merchant_id")
  String get merchant_id;
  @override
  @JsonKey(name: "customer_reference_number")
  String get customer_reference_number;
  @override
  @JsonKey(name: "pos_confirmed")
  bool get pos_confirmed;
  @override
  @JsonKey(name: "created_at")
  String get created_at;
  @override
  @JsonKey(name: "updated_at")
  String get updated_at;
  @override
  @JsonKey(name: "receipts")
  List<TransactionReceipt> get receipts;
  @override
  @JsonKey(name: "card_scheme")
  LocalizationField get card_scheme;
  @override
  @JsonKey(name: "type")
  LocalizationField get type;
  @override
  @JsonKey(name: "verification_method")
  LocalizationField get verification_method;
  @override
  @JsonKey(ignore: true)
  _$$SessionTransactionImplCopyWith<_$SessionTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
