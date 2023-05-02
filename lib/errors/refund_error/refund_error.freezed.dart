// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RefundRejected _$RefundRejectedFromJson(Map<String, dynamic> json) {
  return _RefundRejected.fromJson(json);
}

/// @nodoc
mixin _$RefundRejected {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundRejectedCopyWith<RefundRejected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundRejectedCopyWith<$Res> {
  factory $RefundRejectedCopyWith(
          RefundRejected value, $Res Function(RefundRejected) then) =
      _$RefundRejectedCopyWithImpl<$Res, RefundRejected>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RefundRejectedCopyWithImpl<$Res, $Val extends RefundRejected>
    implements $RefundRejectedCopyWith<$Res> {
  _$RefundRejectedCopyWithImpl(this._value, this._then);

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
abstract class _$$_RefundRejectedCopyWith<$Res>
    implements $RefundRejectedCopyWith<$Res> {
  factory _$$_RefundRejectedCopyWith(
          _$_RefundRejected value, $Res Function(_$_RefundRejected) then) =
      __$$_RefundRejectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RefundRejectedCopyWithImpl<$Res>
    extends _$RefundRejectedCopyWithImpl<$Res, _$_RefundRejected>
    implements _$$_RefundRejectedCopyWith<$Res> {
  __$$_RefundRejectedCopyWithImpl(
      _$_RefundRejected _value, $Res Function(_$_RefundRejected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RefundRejected(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundRejected implements _RefundRejected {
  const _$_RefundRejected({required this.message});

  factory _$_RefundRejected.fromJson(Map<String, dynamic> json) =>
      _$$_RefundRejectedFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'RefundRejected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundRejected &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundRejectedCopyWith<_$_RefundRejected> get copyWith =>
      __$$_RefundRejectedCopyWithImpl<_$_RefundRejected>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundRejectedToJson(
      this,
    );
  }
}

abstract class _RefundRejected implements RefundRejected {
  const factory _RefundRejected({required final String message}) =
      _$_RefundRejected;

  factory _RefundRejected.fromJson(Map<String, dynamic> json) =
      _$_RefundRejected.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RefundRejectedCopyWith<_$_RefundRejected> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundDeclined _$RefundDeclinedFromJson(Map<String, dynamic> json) {
  return _RefundDeclined.fromJson(json);
}

/// @nodoc
mixin _$RefundDeclined {
  List<TransactionReceipt> get receipts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundDeclinedCopyWith<RefundDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundDeclinedCopyWith<$Res> {
  factory $RefundDeclinedCopyWith(
          RefundDeclined value, $Res Function(RefundDeclined) then) =
      _$RefundDeclinedCopyWithImpl<$Res, RefundDeclined>;
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class _$RefundDeclinedCopyWithImpl<$Res, $Val extends RefundDeclined>
    implements $RefundDeclinedCopyWith<$Res> {
  _$RefundDeclinedCopyWithImpl(this._value, this._then);

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
abstract class _$$_RefundDeclinedCopyWith<$Res>
    implements $RefundDeclinedCopyWith<$Res> {
  factory _$$_RefundDeclinedCopyWith(
          _$_RefundDeclined value, $Res Function(_$_RefundDeclined) then) =
      __$$_RefundDeclinedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class __$$_RefundDeclinedCopyWithImpl<$Res>
    extends _$RefundDeclinedCopyWithImpl<$Res, _$_RefundDeclined>
    implements _$$_RefundDeclinedCopyWith<$Res> {
  __$$_RefundDeclinedCopyWithImpl(
      _$_RefundDeclined _value, $Res Function(_$_RefundDeclined) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_$_RefundDeclined(
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundDeclined implements _RefundDeclined {
  const _$_RefundDeclined({required final List<TransactionReceipt> receipts})
      : _receipts = receipts;

  factory _$_RefundDeclined.fromJson(Map<String, dynamic> json) =>
      _$$_RefundDeclinedFromJson(json);

  final List<TransactionReceipt> _receipts;
  @override
  List<TransactionReceipt> get receipts {
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receipts);
  }

  @override
  String toString() {
    return 'RefundDeclined(receipts: $receipts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundDeclined &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundDeclinedCopyWith<_$_RefundDeclined> get copyWith =>
      __$$_RefundDeclinedCopyWithImpl<_$_RefundDeclined>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundDeclinedToJson(
      this,
    );
  }
}

abstract class _RefundDeclined implements RefundDeclined {
  const factory _RefundDeclined(
      {required final List<TransactionReceipt> receipts}) = _$_RefundDeclined;

  factory _RefundDeclined.fromJson(Map<String, dynamic> json) =
      _$_RefundDeclined.fromJson;

  @override
  List<TransactionReceipt> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$_RefundDeclinedCopyWith<_$_RefundDeclined> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundAuthenticationFailed _$RefundAuthenticationFailedFromJson(
    Map<String, dynamic> json) {
  return _RefundAuthenticationFailed.fromJson(json);
}

/// @nodoc
mixin _$RefundAuthenticationFailed {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundAuthenticationFailedCopyWith<RefundAuthenticationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundAuthenticationFailedCopyWith<$Res> {
  factory $RefundAuthenticationFailedCopyWith(RefundAuthenticationFailed value,
          $Res Function(RefundAuthenticationFailed) then) =
      _$RefundAuthenticationFailedCopyWithImpl<$Res,
          RefundAuthenticationFailed>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RefundAuthenticationFailedCopyWithImpl<$Res,
        $Val extends RefundAuthenticationFailed>
    implements $RefundAuthenticationFailedCopyWith<$Res> {
  _$RefundAuthenticationFailedCopyWithImpl(this._value, this._then);

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
abstract class _$$_RefundAuthenticationFailedCopyWith<$Res>
    implements $RefundAuthenticationFailedCopyWith<$Res> {
  factory _$$_RefundAuthenticationFailedCopyWith(
          _$_RefundAuthenticationFailed value,
          $Res Function(_$_RefundAuthenticationFailed) then) =
      __$$_RefundAuthenticationFailedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RefundAuthenticationFailedCopyWithImpl<$Res>
    extends _$RefundAuthenticationFailedCopyWithImpl<$Res,
        _$_RefundAuthenticationFailed>
    implements _$$_RefundAuthenticationFailedCopyWith<$Res> {
  __$$_RefundAuthenticationFailedCopyWithImpl(
      _$_RefundAuthenticationFailed _value,
      $Res Function(_$_RefundAuthenticationFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RefundAuthenticationFailed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundAuthenticationFailed implements _RefundAuthenticationFailed {
  const _$_RefundAuthenticationFailed({required this.message});

  factory _$_RefundAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$$_RefundAuthenticationFailedFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'RefundAuthenticationFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundAuthenticationFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundAuthenticationFailedCopyWith<_$_RefundAuthenticationFailed>
      get copyWith => __$$_RefundAuthenticationFailedCopyWithImpl<
          _$_RefundAuthenticationFailed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundAuthenticationFailedToJson(
      this,
    );
  }
}

abstract class _RefundAuthenticationFailed
    implements RefundAuthenticationFailed {
  const factory _RefundAuthenticationFailed({required final String message}) =
      _$_RefundAuthenticationFailed;

  factory _RefundAuthenticationFailed.fromJson(Map<String, dynamic> json) =
      _$_RefundAuthenticationFailed.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RefundAuthenticationFailedCopyWith<_$_RefundAuthenticationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

RefundInvalidStatus _$RefundInvalidStatusFromJson(Map<String, dynamic> json) {
  return _RefundInvalidStatus.fromJson(json);
}

/// @nodoc
mixin _$RefundInvalidStatus {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundInvalidStatusCopyWith<RefundInvalidStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundInvalidStatusCopyWith<$Res> {
  factory $RefundInvalidStatusCopyWith(
          RefundInvalidStatus value, $Res Function(RefundInvalidStatus) then) =
      _$RefundInvalidStatusCopyWithImpl<$Res, RefundInvalidStatus>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$RefundInvalidStatusCopyWithImpl<$Res, $Val extends RefundInvalidStatus>
    implements $RefundInvalidStatusCopyWith<$Res> {
  _$RefundInvalidStatusCopyWithImpl(this._value, this._then);

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
abstract class _$$_RefundInvalidStatusCopyWith<$Res>
    implements $RefundInvalidStatusCopyWith<$Res> {
  factory _$$_RefundInvalidStatusCopyWith(_$_RefundInvalidStatus value,
          $Res Function(_$_RefundInvalidStatus) then) =
      __$$_RefundInvalidStatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$_RefundInvalidStatusCopyWithImpl<$Res>
    extends _$RefundInvalidStatusCopyWithImpl<$Res, _$_RefundInvalidStatus>
    implements _$$_RefundInvalidStatusCopyWith<$Res> {
  __$$_RefundInvalidStatusCopyWithImpl(_$_RefundInvalidStatus _value,
      $Res Function(_$_RefundInvalidStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$_RefundInvalidStatus(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundInvalidStatus implements _RefundInvalidStatus {
  const _$_RefundInvalidStatus({this.required});

  factory _$_RefundInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$$_RefundInvalidStatusFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'RefundInvalidStatus(required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundInvalidStatus &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundInvalidStatusCopyWith<_$_RefundInvalidStatus> get copyWith =>
      __$$_RefundInvalidStatusCopyWithImpl<_$_RefundInvalidStatus>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundInvalidStatusToJson(
      this,
    );
  }
}

abstract class _RefundInvalidStatus implements RefundInvalidStatus {
  const factory _RefundInvalidStatus({final dynamic required}) =
      _$_RefundInvalidStatus;

  factory _RefundInvalidStatus.fromJson(Map<String, dynamic> json) =
      _$_RefundInvalidStatus.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_RefundInvalidStatusCopyWith<_$_RefundInvalidStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

RefundGeneralFailure _$RefundGeneralFailureFromJson(Map<String, dynamic> json) {
  return _RefundGeneralFailure.fromJson(json);
}

/// @nodoc
mixin _$RefundGeneralFailure {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RefundGeneralFailureCopyWith<RefundGeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundGeneralFailureCopyWith<$Res> {
  factory $RefundGeneralFailureCopyWith(RefundGeneralFailure value,
          $Res Function(RefundGeneralFailure) then) =
      _$RefundGeneralFailureCopyWithImpl<$Res, RefundGeneralFailure>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$RefundGeneralFailureCopyWithImpl<$Res,
        $Val extends RefundGeneralFailure>
    implements $RefundGeneralFailureCopyWith<$Res> {
  _$RefundGeneralFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$_RefundGeneralFailureCopyWith<$Res>
    implements $RefundGeneralFailureCopyWith<$Res> {
  factory _$$_RefundGeneralFailureCopyWith(_$_RefundGeneralFailure value,
          $Res Function(_$_RefundGeneralFailure) then) =
      __$$_RefundGeneralFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$_RefundGeneralFailureCopyWithImpl<$Res>
    extends _$RefundGeneralFailureCopyWithImpl<$Res, _$_RefundGeneralFailure>
    implements _$$_RefundGeneralFailureCopyWith<$Res> {
  __$$_RefundGeneralFailureCopyWithImpl(_$_RefundGeneralFailure _value,
      $Res Function(_$_RefundGeneralFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$_RefundGeneralFailure(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RefundGeneralFailure implements _RefundGeneralFailure {
  const _$_RefundGeneralFailure({this.required});

  factory _$_RefundGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$$_RefundGeneralFailureFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'RefundGeneralFailure(required: $required)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefundGeneralFailure &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RefundGeneralFailureCopyWith<_$_RefundGeneralFailure> get copyWith =>
      __$$_RefundGeneralFailureCopyWithImpl<_$_RefundGeneralFailure>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RefundGeneralFailureToJson(
      this,
    );
  }
}

abstract class _RefundGeneralFailure implements RefundGeneralFailure {
  const factory _RefundGeneralFailure({final dynamic required}) =
      _$_RefundGeneralFailure;

  factory _RefundGeneralFailure.fromJson(Map<String, dynamic> json) =
      _$_RefundGeneralFailure.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$_RefundGeneralFailureCopyWith<_$_RefundGeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
