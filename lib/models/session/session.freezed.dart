// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "client_id")
  String get client_id => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  String get expired_at => throw _privateConstructorUsedError;
  @JsonKey(name: "reference_id")
  String get reference_id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String get updated_at => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction")
  SessionTransaction get transaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "client_id") String client_id,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "expired_at") String expired_at,
      @JsonKey(name: "reference_id") String reference_id,
      @JsonKey(name: "created_at") String created_at,
      @JsonKey(name: "updated_at") String updated_at,
      @JsonKey(name: "transaction") SessionTransaction transaction});

  $SessionTransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? client_id = null,
    Object? amount = null,
    Object? expired_at = null,
    Object? reference_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      client_id: null == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      expired_at: null == expired_at
          ? _value.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as String,
      reference_id: null == reference_id
          ? _value.reference_id
          : reference_id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SessionTransaction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionTransactionCopyWith<$Res> get transaction {
    return $SessionTransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "client_id") String client_id,
      @JsonKey(name: "amount") String amount,
      @JsonKey(name: "expired_at") String expired_at,
      @JsonKey(name: "reference_id") String reference_id,
      @JsonKey(name: "created_at") String created_at,
      @JsonKey(name: "updated_at") String updated_at,
      @JsonKey(name: "transaction") SessionTransaction transaction});

  @override
  $SessionTransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? type = null,
    Object? client_id = null,
    Object? amount = null,
    Object? expired_at = null,
    Object? reference_id = null,
    Object? created_at = null,
    Object? updated_at = null,
    Object? transaction = null,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      client_id: null == client_id
          ? _value.client_id
          : client_id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      expired_at: null == expired_at
          ? _value.expired_at
          : expired_at // ignore: cast_nullable_to_non_nullable
              as String,
      reference_id: null == reference_id
          ? _value.reference_id
          : reference_id // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as SessionTransaction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "client_id") required this.client_id,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "expired_at") required this.expired_at,
      @JsonKey(name: "reference_id") required this.reference_id,
      @JsonKey(name: "created_at") required this.created_at,
      @JsonKey(name: "updated_at") required this.updated_at,
      @JsonKey(name: "transaction") required this.transaction});

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "client_id")
  final String client_id;
  @override
  @JsonKey(name: "amount")
  final String amount;
  @override
  @JsonKey(name: "expired_at")
  final String expired_at;
  @override
  @JsonKey(name: "reference_id")
  final String reference_id;
  @override
  @JsonKey(name: "created_at")
  final String created_at;
  @override
  @JsonKey(name: "updated_at")
  final String updated_at;
  @override
  @JsonKey(name: "transaction")
  final SessionTransaction transaction;

  @override
  String toString() {
    return 'Session(id: $id, status: $status, type: $type, client_id: $client_id, amount: $amount, expired_at: $expired_at, reference_id: $reference_id, created_at: $created_at, updated_at: $updated_at, transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.client_id, client_id) ||
                other.client_id == client_id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.expired_at, expired_at) ||
                other.expired_at == expired_at) &&
            (identical(other.reference_id, reference_id) ||
                other.reference_id == reference_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, type, client_id,
      amount, expired_at, reference_id, created_at, updated_at, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "status") required final String status,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "client_id") required final String client_id,
      @JsonKey(name: "amount") required final String amount,
      @JsonKey(name: "expired_at") required final String expired_at,
      @JsonKey(name: "reference_id") required final String reference_id,
      @JsonKey(name: "created_at") required final String created_at,
      @JsonKey(name: "updated_at") required final String updated_at,
      @JsonKey(name: "transaction")
      required final SessionTransaction transaction}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "client_id")
  String get client_id;
  @override
  @JsonKey(name: "amount")
  String get amount;
  @override
  @JsonKey(name: "expired_at")
  String get expired_at;
  @override
  @JsonKey(name: "reference_id")
  String get reference_id;
  @override
  @JsonKey(name: "created_at")
  String get created_at;
  @override
  @JsonKey(name: "updated_at")
  String get updated_at;
  @override
  @JsonKey(name: "transaction")
  SessionTransaction get transaction;
  @override
  @JsonKey(ignore: true)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
