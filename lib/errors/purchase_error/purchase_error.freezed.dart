// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PurchaseRejected _$PurchaseRejectedFromJson(Map<String, dynamic> json) {
  return _PurchaseRejected.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRejected {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseRejectedCopyWith<PurchaseRejected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseRejectedCopyWith<$Res> {
  factory $PurchaseRejectedCopyWith(
          PurchaseRejected value, $Res Function(PurchaseRejected) then) =
      _$PurchaseRejectedCopyWithImpl<$Res, PurchaseRejected>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PurchaseRejectedCopyWithImpl<$Res, $Val extends PurchaseRejected>
    implements $PurchaseRejectedCopyWith<$Res> {
  _$PurchaseRejectedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseRejectedCopyWith<$Res>
    implements $PurchaseRejectedCopyWith<$Res> {
  factory _$$_PurchaseRejectedCopyWith(
          _$_PurchaseRejected value, $Res Function(_$_PurchaseRejected) then) =
      __$$_PurchaseRejectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PurchaseRejectedCopyWithImpl<$Res>
    extends _$PurchaseRejectedCopyWithImpl<$Res, _$_PurchaseRejected>
    implements _$$_PurchaseRejectedCopyWith<$Res> {
  __$$_PurchaseRejectedCopyWithImpl(
      _$_PurchaseRejected _value, $Res Function(_$_PurchaseRejected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PurchaseRejected(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseRejected implements _PurchaseRejected {
  const _$_PurchaseRejected({required this.message});

  factory _$_PurchaseRejected.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseRejectedFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseRejected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseRejected &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseRejectedCopyWith<_$_PurchaseRejected> get copyWith =>
      __$$_PurchaseRejectedCopyWithImpl<_$_PurchaseRejected>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseRejectedToJson(
      this,
    );
  }
}

abstract class _PurchaseRejected implements PurchaseRejected {
  const factory _PurchaseRejected({required final String message}) =
      _$_PurchaseRejected;

  factory _PurchaseRejected.fromJson(Map<String, dynamic> json) =
      _$_PurchaseRejected.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseRejectedCopyWith<_$_PurchaseRejected> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseDeclined _$PurchaseDeclinedFromJson(Map<String, dynamic> json) {
  return _PurchaseDeclined.fromJson(json);
}

/// @nodoc
mixin _$PurchaseDeclined {
  List<TransactionReceipt> get receipts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseDeclinedCopyWith<PurchaseDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseDeclinedCopyWith<$Res> {
  factory $PurchaseDeclinedCopyWith(
          PurchaseDeclined value, $Res Function(PurchaseDeclined) then) =
      _$PurchaseDeclinedCopyWithImpl<$Res, PurchaseDeclined>;
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class _$PurchaseDeclinedCopyWithImpl<$Res, $Val extends PurchaseDeclined>
    implements $PurchaseDeclinedCopyWith<$Res> {
  _$PurchaseDeclinedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_value.copyWith(
      receipts: null == receipts
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseDeclinedCopyWith<$Res>
    implements $PurchaseDeclinedCopyWith<$Res> {
  factory _$$_PurchaseDeclinedCopyWith(
          _$_PurchaseDeclined value, $Res Function(_$_PurchaseDeclined) then) =
      __$$_PurchaseDeclinedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class __$$_PurchaseDeclinedCopyWithImpl<$Res>
    extends _$PurchaseDeclinedCopyWithImpl<$Res, _$_PurchaseDeclined>
    implements _$$_PurchaseDeclinedCopyWith<$Res> {
  __$$_PurchaseDeclinedCopyWithImpl(
      _$_PurchaseDeclined _value, $Res Function(_$_PurchaseDeclined) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_$_PurchaseDeclined(
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseDeclined implements _PurchaseDeclined {
  const _$_PurchaseDeclined({required final List<TransactionReceipt> receipts})
      : _receipts = receipts;

  factory _$_PurchaseDeclined.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseDeclinedFromJson(json);

  final List<TransactionReceipt> _receipts;
  @override
  List<TransactionReceipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString() {
    return 'PurchaseDeclined(receipts: $receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseDeclined &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseDeclinedCopyWith<_$_PurchaseDeclined> get copyWith =>
      __$$_PurchaseDeclinedCopyWithImpl<_$_PurchaseDeclined>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseDeclinedToJson(
      this,
    );
  }
}

abstract class _PurchaseDeclined implements PurchaseDeclined {
  const factory _PurchaseDeclined(
      {required final List<TransactionReceipt> receipts}) = _$_PurchaseDeclined;

  factory _PurchaseDeclined.fromJson(Map<String, dynamic> json) =
      _$_PurchaseDeclined.fromJson;

  @override
  List<TransactionReceipt> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseDeclinedCopyWith<_$_PurchaseDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseAuthenticationFailed _$PurchaseAuthenticationFailedFromJson(
    Map<String, dynamic> json) {
  return _PurchaseAuthenticationFailed.fromJson(json);
}

/// @nodoc
mixin _$PurchaseAuthenticationFailed {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseAuthenticationFailedCopyWith<PurchaseAuthenticationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseAuthenticationFailedCopyWith<$Res> {
  factory $PurchaseAuthenticationFailedCopyWith(
          PurchaseAuthenticationFailed value,
          $Res Function(PurchaseAuthenticationFailed) then) =
      _$PurchaseAuthenticationFailedCopyWithImpl<$Res,
          PurchaseAuthenticationFailed>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PurchaseAuthenticationFailedCopyWithImpl<$Res,
        $Val extends PurchaseAuthenticationFailed>
    implements $PurchaseAuthenticationFailedCopyWith<$Res> {
  _$PurchaseAuthenticationFailedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseAuthenticationFailedCopyWith<$Res>
    implements $PurchaseAuthenticationFailedCopyWith<$Res> {
  factory _$$_PurchaseAuthenticationFailedCopyWith(
          _$_PurchaseAuthenticationFailed value,
          $Res Function(_$_PurchaseAuthenticationFailed) then) =
      __$$_PurchaseAuthenticationFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PurchaseAuthenticationFailedCopyWithImpl<$Res>
    extends _$PurchaseAuthenticationFailedCopyWithImpl<$Res,
        _$_PurchaseAuthenticationFailed>
    implements _$$_PurchaseAuthenticationFailedCopyWith<$Res> {
  __$$_PurchaseAuthenticationFailedCopyWithImpl(
      _$_PurchaseAuthenticationFailed _value,
      $Res Function(_$_PurchaseAuthenticationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PurchaseAuthenticationFailed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseAuthenticationFailed implements _PurchaseAuthenticationFailed {
  const _$_PurchaseAuthenticationFailed({required this.message});

  factory _$_PurchaseAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseAuthenticationFailedFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseAuthenticationFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseAuthenticationFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseAuthenticationFailedCopyWith<_$_PurchaseAuthenticationFailed>
      get copyWith => __$$_PurchaseAuthenticationFailedCopyWithImpl<
          _$_PurchaseAuthenticationFailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseAuthenticationFailedToJson(
      this,
    );
  }
}

abstract class _PurchaseAuthenticationFailed
    implements PurchaseAuthenticationFailed {
  const factory _PurchaseAuthenticationFailed({required final String message}) =
      _$_PurchaseAuthenticationFailed;

  factory _PurchaseAuthenticationFailed.fromJson(Map<String, dynamic> json) =
      _$_PurchaseAuthenticationFailed.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseAuthenticationFailedCopyWith<_$_PurchaseAuthenticationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

PurchaseInvalidStatus _$PurchaseInvalidStatusFromJson(
    Map<String, dynamic> json) {
  return _PurchaseInvalidStatus.fromJson(json);
}

/// @nodoc
mixin _$PurchaseInvalidStatus {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseInvalidStatusCopyWith<PurchaseInvalidStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseInvalidStatusCopyWith<$Res> {
  factory $PurchaseInvalidStatusCopyWith(PurchaseInvalidStatus value,
          $Res Function(PurchaseInvalidStatus) then) =
      _$PurchaseInvalidStatusCopyWithImpl<$Res, PurchaseInvalidStatus>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$PurchaseInvalidStatusCopyWithImpl<$Res,
        $Val extends PurchaseInvalidStatus>
    implements $PurchaseInvalidStatusCopyWith<$Res> {
  _$PurchaseInvalidStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseInvalidStatusCopyWith<$Res>
    implements $PurchaseInvalidStatusCopyWith<$Res> {
  factory _$$_PurchaseInvalidStatusCopyWith(_$_PurchaseInvalidStatus value,
          $Res Function(_$_PurchaseInvalidStatus) then) =
      __$$_PurchaseInvalidStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$_PurchaseInvalidStatusCopyWithImpl<$Res>
    extends _$PurchaseInvalidStatusCopyWithImpl<$Res, _$_PurchaseInvalidStatus>
    implements _$$_PurchaseInvalidStatusCopyWith<$Res> {
  __$$_PurchaseInvalidStatusCopyWithImpl(_$_PurchaseInvalidStatus _value,
      $Res Function(_$_PurchaseInvalidStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$_PurchaseInvalidStatus(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseInvalidStatus implements _PurchaseInvalidStatus {
  const _$_PurchaseInvalidStatus({this.required});

  factory _$_PurchaseInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseInvalidStatusFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'PurchaseInvalidStatus(required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseInvalidStatus &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseInvalidStatusCopyWith<_$_PurchaseInvalidStatus> get copyWith =>
      __$$_PurchaseInvalidStatusCopyWithImpl<_$_PurchaseInvalidStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseInvalidStatusToJson(
      this,
    );
  }
}

abstract class _PurchaseInvalidStatus implements PurchaseInvalidStatus {
  const factory _PurchaseInvalidStatus({final dynamic required}) =
      _$_PurchaseInvalidStatus;

  factory _PurchaseInvalidStatus.fromJson(Map<String, dynamic> json) =
      _$_PurchaseInvalidStatus.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseInvalidStatusCopyWith<_$_PurchaseInvalidStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseGeneralFailure _$PurchaseGeneralFailureFromJson(
    Map<String, dynamic> json) {
  return _PurchaseGeneralFailure.fromJson(json);
}

/// @nodoc
mixin _$PurchaseGeneralFailure {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseGeneralFailureCopyWith<PurchaseGeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseGeneralFailureCopyWith<$Res> {
  factory $PurchaseGeneralFailureCopyWith(PurchaseGeneralFailure value,
          $Res Function(PurchaseGeneralFailure) then) =
      _$PurchaseGeneralFailureCopyWithImpl<$Res, PurchaseGeneralFailure>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$PurchaseGeneralFailureCopyWithImpl<$Res,
        $Val extends PurchaseGeneralFailure>
    implements $PurchaseGeneralFailureCopyWith<$Res> {
  _$PurchaseGeneralFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_value.copyWith(
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseGeneralFailureCopyWith<$Res>
    implements $PurchaseGeneralFailureCopyWith<$Res> {
  factory _$$_PurchaseGeneralFailureCopyWith(_$_PurchaseGeneralFailure value,
          $Res Function(_$_PurchaseGeneralFailure) then) =
      __$$_PurchaseGeneralFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$_PurchaseGeneralFailureCopyWithImpl<$Res>
    extends _$PurchaseGeneralFailureCopyWithImpl<$Res,
        _$_PurchaseGeneralFailure>
    implements _$$_PurchaseGeneralFailureCopyWith<$Res> {
  __$$_PurchaseGeneralFailureCopyWithImpl(_$_PurchaseGeneralFailure _value,
      $Res Function(_$_PurchaseGeneralFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$_PurchaseGeneralFailure(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PurchaseGeneralFailure implements _PurchaseGeneralFailure {
  const _$_PurchaseGeneralFailure({this.required});

  factory _$_PurchaseGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$$_PurchaseGeneralFailureFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'PurchaseGeneralFailure(required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseGeneralFailure &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseGeneralFailureCopyWith<_$_PurchaseGeneralFailure> get copyWith =>
      __$$_PurchaseGeneralFailureCopyWithImpl<_$_PurchaseGeneralFailure>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PurchaseGeneralFailureToJson(
      this,
    );
  }
}

abstract class _PurchaseGeneralFailure implements PurchaseGeneralFailure {
  const factory _PurchaseGeneralFailure({final dynamic required}) =
      _$_PurchaseGeneralFailure;

  factory _PurchaseGeneralFailure.fromJson(Map<String, dynamic> json) =
      _$_PurchaseGeneralFailure.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseGeneralFailureCopyWith<_$_PurchaseGeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
