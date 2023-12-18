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
abstract class _$$RefundRejectedImplCopyWith<$Res>
    implements $RefundRejectedCopyWith<$Res> {
  factory _$$RefundRejectedImplCopyWith(_$RefundRejectedImpl value,
          $Res Function(_$RefundRejectedImpl) then) =
      __$$RefundRejectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RefundRejectedImplCopyWithImpl<$Res>
    extends _$RefundRejectedCopyWithImpl<$Res, _$RefundRejectedImpl>
    implements _$$RefundRejectedImplCopyWith<$Res> {
  __$$RefundRejectedImplCopyWithImpl(
      _$RefundRejectedImpl _value, $Res Function(_$RefundRejectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RefundRejectedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundRejectedImpl implements _RefundRejected {
  const _$RefundRejectedImpl({required this.message});

  factory _$RefundRejectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundRejectedImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'RefundRejected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundRejectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundRejectedImplCopyWith<_$RefundRejectedImpl> get copyWith =>
      __$$RefundRejectedImplCopyWithImpl<_$RefundRejectedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundRejectedImplToJson(
      this,
    );
  }
}

abstract class _RefundRejected implements RefundRejected {
  const factory _RefundRejected({required final String message}) =
      _$RefundRejectedImpl;

  factory _RefundRejected.fromJson(Map<String, dynamic> json) =
      _$RefundRejectedImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RefundRejectedImplCopyWith<_$RefundRejectedImpl> get copyWith =>
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
abstract class _$$RefundDeclinedImplCopyWith<$Res>
    implements $RefundDeclinedCopyWith<$Res> {
  factory _$$RefundDeclinedImplCopyWith(_$RefundDeclinedImpl value,
          $Res Function(_$RefundDeclinedImpl) then) =
      __$$RefundDeclinedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class __$$RefundDeclinedImplCopyWithImpl<$Res>
    extends _$RefundDeclinedCopyWithImpl<$Res, _$RefundDeclinedImpl>
    implements _$$RefundDeclinedImplCopyWith<$Res> {
  __$$RefundDeclinedImplCopyWithImpl(
      _$RefundDeclinedImpl _value, $Res Function(_$RefundDeclinedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_$RefundDeclinedImpl(
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundDeclinedImpl implements _RefundDeclined {
  const _$RefundDeclinedImpl({required final List<TransactionReceipt> receipts})
      : _receipts = receipts;

  factory _$RefundDeclinedImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundDeclinedImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundDeclinedImpl &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundDeclinedImplCopyWith<_$RefundDeclinedImpl> get copyWith =>
      __$$RefundDeclinedImplCopyWithImpl<_$RefundDeclinedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundDeclinedImplToJson(
      this,
    );
  }
}

abstract class _RefundDeclined implements RefundDeclined {
  const factory _RefundDeclined(
          {required final List<TransactionReceipt> receipts}) =
      _$RefundDeclinedImpl;

  factory _RefundDeclined.fromJson(Map<String, dynamic> json) =
      _$RefundDeclinedImpl.fromJson;

  @override
  List<TransactionReceipt> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$RefundDeclinedImplCopyWith<_$RefundDeclinedImpl> get copyWith =>
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
abstract class _$$RefundAuthenticationFailedImplCopyWith<$Res>
    implements $RefundAuthenticationFailedCopyWith<$Res> {
  factory _$$RefundAuthenticationFailedImplCopyWith(
          _$RefundAuthenticationFailedImpl value,
          $Res Function(_$RefundAuthenticationFailedImpl) then) =
      __$$RefundAuthenticationFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RefundAuthenticationFailedImplCopyWithImpl<$Res>
    extends _$RefundAuthenticationFailedCopyWithImpl<$Res,
        _$RefundAuthenticationFailedImpl>
    implements _$$RefundAuthenticationFailedImplCopyWith<$Res> {
  __$$RefundAuthenticationFailedImplCopyWithImpl(
      _$RefundAuthenticationFailedImpl _value,
      $Res Function(_$RefundAuthenticationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RefundAuthenticationFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundAuthenticationFailedImpl implements _RefundAuthenticationFailed {
  const _$RefundAuthenticationFailedImpl({required this.message});

  factory _$RefundAuthenticationFailedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RefundAuthenticationFailedImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'RefundAuthenticationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundAuthenticationFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundAuthenticationFailedImplCopyWith<_$RefundAuthenticationFailedImpl>
      get copyWith => __$$RefundAuthenticationFailedImplCopyWithImpl<
          _$RefundAuthenticationFailedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundAuthenticationFailedImplToJson(
      this,
    );
  }
}

abstract class _RefundAuthenticationFailed
    implements RefundAuthenticationFailed {
  const factory _RefundAuthenticationFailed({required final String message}) =
      _$RefundAuthenticationFailedImpl;

  factory _RefundAuthenticationFailed.fromJson(Map<String, dynamic> json) =
      _$RefundAuthenticationFailedImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RefundAuthenticationFailedImplCopyWith<_$RefundAuthenticationFailedImpl>
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
abstract class _$$RefundInvalidStatusImplCopyWith<$Res>
    implements $RefundInvalidStatusCopyWith<$Res> {
  factory _$$RefundInvalidStatusImplCopyWith(_$RefundInvalidStatusImpl value,
          $Res Function(_$RefundInvalidStatusImpl) then) =
      __$$RefundInvalidStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$RefundInvalidStatusImplCopyWithImpl<$Res>
    extends _$RefundInvalidStatusCopyWithImpl<$Res, _$RefundInvalidStatusImpl>
    implements _$$RefundInvalidStatusImplCopyWith<$Res> {
  __$$RefundInvalidStatusImplCopyWithImpl(_$RefundInvalidStatusImpl _value,
      $Res Function(_$RefundInvalidStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$RefundInvalidStatusImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundInvalidStatusImpl implements _RefundInvalidStatus {
  const _$RefundInvalidStatusImpl({this.required});

  factory _$RefundInvalidStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundInvalidStatusImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'RefundInvalidStatus(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundInvalidStatusImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundInvalidStatusImplCopyWith<_$RefundInvalidStatusImpl> get copyWith =>
      __$$RefundInvalidStatusImplCopyWithImpl<_$RefundInvalidStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundInvalidStatusImplToJson(
      this,
    );
  }
}

abstract class _RefundInvalidStatus implements RefundInvalidStatus {
  const factory _RefundInvalidStatus({final dynamic required}) =
      _$RefundInvalidStatusImpl;

  factory _RefundInvalidStatus.fromJson(Map<String, dynamic> json) =
      _$RefundInvalidStatusImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$RefundInvalidStatusImplCopyWith<_$RefundInvalidStatusImpl> get copyWith =>
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
abstract class _$$RefundGeneralFailureImplCopyWith<$Res>
    implements $RefundGeneralFailureCopyWith<$Res> {
  factory _$$RefundGeneralFailureImplCopyWith(_$RefundGeneralFailureImpl value,
          $Res Function(_$RefundGeneralFailureImpl) then) =
      __$$RefundGeneralFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$RefundGeneralFailureImplCopyWithImpl<$Res>
    extends _$RefundGeneralFailureCopyWithImpl<$Res, _$RefundGeneralFailureImpl>
    implements _$$RefundGeneralFailureImplCopyWith<$Res> {
  __$$RefundGeneralFailureImplCopyWithImpl(_$RefundGeneralFailureImpl _value,
      $Res Function(_$RefundGeneralFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$RefundGeneralFailureImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundGeneralFailureImpl implements _RefundGeneralFailure {
  const _$RefundGeneralFailureImpl({this.required});

  factory _$RefundGeneralFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundGeneralFailureImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'RefundGeneralFailure(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundGeneralFailureImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundGeneralFailureImplCopyWith<_$RefundGeneralFailureImpl>
      get copyWith =>
          __$$RefundGeneralFailureImplCopyWithImpl<_$RefundGeneralFailureImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundGeneralFailureImplToJson(
      this,
    );
  }
}

abstract class _RefundGeneralFailure implements RefundGeneralFailure {
  const factory _RefundGeneralFailure({final dynamic required}) =
      _$RefundGeneralFailureImpl;

  factory _RefundGeneralFailure.fromJson(Map<String, dynamic> json) =
      _$RefundGeneralFailureImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$RefundGeneralFailureImplCopyWith<_$RefundGeneralFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
