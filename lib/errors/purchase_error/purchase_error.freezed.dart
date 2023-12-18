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
abstract class _$$PurchaseRejectedImplCopyWith<$Res>
    implements $PurchaseRejectedCopyWith<$Res> {
  factory _$$PurchaseRejectedImplCopyWith(_$PurchaseRejectedImpl value,
          $Res Function(_$PurchaseRejectedImpl) then) =
      __$$PurchaseRejectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PurchaseRejectedImplCopyWithImpl<$Res>
    extends _$PurchaseRejectedCopyWithImpl<$Res, _$PurchaseRejectedImpl>
    implements _$$PurchaseRejectedImplCopyWith<$Res> {
  __$$PurchaseRejectedImplCopyWithImpl(_$PurchaseRejectedImpl _value,
      $Res Function(_$PurchaseRejectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PurchaseRejectedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseRejectedImpl implements _PurchaseRejected {
  const _$PurchaseRejectedImpl({required this.message});

  factory _$PurchaseRejectedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseRejectedImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseRejected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseRejectedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseRejectedImplCopyWith<_$PurchaseRejectedImpl> get copyWith =>
      __$$PurchaseRejectedImplCopyWithImpl<_$PurchaseRejectedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseRejectedImplToJson(
      this,
    );
  }
}

abstract class _PurchaseRejected implements PurchaseRejected {
  const factory _PurchaseRejected({required final String message}) =
      _$PurchaseRejectedImpl;

  factory _PurchaseRejected.fromJson(Map<String, dynamic> json) =
      _$PurchaseRejectedImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseRejectedImplCopyWith<_$PurchaseRejectedImpl> get copyWith =>
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
abstract class _$$PurchaseDeclinedImplCopyWith<$Res>
    implements $PurchaseDeclinedCopyWith<$Res> {
  factory _$$PurchaseDeclinedImplCopyWith(_$PurchaseDeclinedImpl value,
          $Res Function(_$PurchaseDeclinedImpl) then) =
      __$$PurchaseDeclinedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TransactionReceipt> receipts});
}

/// @nodoc
class __$$PurchaseDeclinedImplCopyWithImpl<$Res>
    extends _$PurchaseDeclinedCopyWithImpl<$Res, _$PurchaseDeclinedImpl>
    implements _$$PurchaseDeclinedImplCopyWith<$Res> {
  __$$PurchaseDeclinedImplCopyWithImpl(_$PurchaseDeclinedImpl _value,
      $Res Function(_$PurchaseDeclinedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = null,
  }) {
    return _then(_$PurchaseDeclinedImpl(
      receipts: null == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseDeclinedImpl implements _PurchaseDeclined {
  const _$PurchaseDeclinedImpl(
      {required final List<TransactionReceipt> receipts})
      : _receipts = receipts;

  factory _$PurchaseDeclinedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseDeclinedImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseDeclinedImpl &&
            const DeepCollectionEquality().equals(other._receipts, _receipts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_receipts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseDeclinedImplCopyWith<_$PurchaseDeclinedImpl> get copyWith =>
      __$$PurchaseDeclinedImplCopyWithImpl<_$PurchaseDeclinedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseDeclinedImplToJson(
      this,
    );
  }
}

abstract class _PurchaseDeclined implements PurchaseDeclined {
  const factory _PurchaseDeclined(
          {required final List<TransactionReceipt> receipts}) =
      _$PurchaseDeclinedImpl;

  factory _PurchaseDeclined.fromJson(Map<String, dynamic> json) =
      _$PurchaseDeclinedImpl.fromJson;

  @override
  List<TransactionReceipt> get receipts;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseDeclinedImplCopyWith<_$PurchaseDeclinedImpl> get copyWith =>
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
abstract class _$$PurchaseAuthenticationFailedImplCopyWith<$Res>
    implements $PurchaseAuthenticationFailedCopyWith<$Res> {
  factory _$$PurchaseAuthenticationFailedImplCopyWith(
          _$PurchaseAuthenticationFailedImpl value,
          $Res Function(_$PurchaseAuthenticationFailedImpl) then) =
      __$$PurchaseAuthenticationFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PurchaseAuthenticationFailedImplCopyWithImpl<$Res>
    extends _$PurchaseAuthenticationFailedCopyWithImpl<$Res,
        _$PurchaseAuthenticationFailedImpl>
    implements _$$PurchaseAuthenticationFailedImplCopyWith<$Res> {
  __$$PurchaseAuthenticationFailedImplCopyWithImpl(
      _$PurchaseAuthenticationFailedImpl _value,
      $Res Function(_$PurchaseAuthenticationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PurchaseAuthenticationFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseAuthenticationFailedImpl
    implements _PurchaseAuthenticationFailed {
  const _$PurchaseAuthenticationFailedImpl({required this.message});

  factory _$PurchaseAuthenticationFailedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PurchaseAuthenticationFailedImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseAuthenticationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseAuthenticationFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseAuthenticationFailedImplCopyWith<
          _$PurchaseAuthenticationFailedImpl>
      get copyWith => __$$PurchaseAuthenticationFailedImplCopyWithImpl<
          _$PurchaseAuthenticationFailedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseAuthenticationFailedImplToJson(
      this,
    );
  }
}

abstract class _PurchaseAuthenticationFailed
    implements PurchaseAuthenticationFailed {
  const factory _PurchaseAuthenticationFailed({required final String message}) =
      _$PurchaseAuthenticationFailedImpl;

  factory _PurchaseAuthenticationFailed.fromJson(Map<String, dynamic> json) =
      _$PurchaseAuthenticationFailedImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseAuthenticationFailedImplCopyWith<
          _$PurchaseAuthenticationFailedImpl>
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
abstract class _$$PurchaseInvalidStatusImplCopyWith<$Res>
    implements $PurchaseInvalidStatusCopyWith<$Res> {
  factory _$$PurchaseInvalidStatusImplCopyWith(
          _$PurchaseInvalidStatusImpl value,
          $Res Function(_$PurchaseInvalidStatusImpl) then) =
      __$$PurchaseInvalidStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$PurchaseInvalidStatusImplCopyWithImpl<$Res>
    extends _$PurchaseInvalidStatusCopyWithImpl<$Res,
        _$PurchaseInvalidStatusImpl>
    implements _$$PurchaseInvalidStatusImplCopyWith<$Res> {
  __$$PurchaseInvalidStatusImplCopyWithImpl(_$PurchaseInvalidStatusImpl _value,
      $Res Function(_$PurchaseInvalidStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$PurchaseInvalidStatusImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseInvalidStatusImpl implements _PurchaseInvalidStatus {
  const _$PurchaseInvalidStatusImpl({this.required});

  factory _$PurchaseInvalidStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseInvalidStatusImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'PurchaseInvalidStatus(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseInvalidStatusImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseInvalidStatusImplCopyWith<_$PurchaseInvalidStatusImpl>
      get copyWith => __$$PurchaseInvalidStatusImplCopyWithImpl<
          _$PurchaseInvalidStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseInvalidStatusImplToJson(
      this,
    );
  }
}

abstract class _PurchaseInvalidStatus implements PurchaseInvalidStatus {
  const factory _PurchaseInvalidStatus({final dynamic required}) =
      _$PurchaseInvalidStatusImpl;

  factory _PurchaseInvalidStatus.fromJson(Map<String, dynamic> json) =
      _$PurchaseInvalidStatusImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseInvalidStatusImplCopyWith<_$PurchaseInvalidStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$PurchaseGeneralFailureImplCopyWith<$Res>
    implements $PurchaseGeneralFailureCopyWith<$Res> {
  factory _$$PurchaseGeneralFailureImplCopyWith(
          _$PurchaseGeneralFailureImpl value,
          $Res Function(_$PurchaseGeneralFailureImpl) then) =
      __$$PurchaseGeneralFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$PurchaseGeneralFailureImplCopyWithImpl<$Res>
    extends _$PurchaseGeneralFailureCopyWithImpl<$Res,
        _$PurchaseGeneralFailureImpl>
    implements _$$PurchaseGeneralFailureImplCopyWith<$Res> {
  __$$PurchaseGeneralFailureImplCopyWithImpl(
      _$PurchaseGeneralFailureImpl _value,
      $Res Function(_$PurchaseGeneralFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$PurchaseGeneralFailureImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseGeneralFailureImpl implements _PurchaseGeneralFailure {
  const _$PurchaseGeneralFailureImpl({this.required});

  factory _$PurchaseGeneralFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseGeneralFailureImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'PurchaseGeneralFailure(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseGeneralFailureImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseGeneralFailureImplCopyWith<_$PurchaseGeneralFailureImpl>
      get copyWith => __$$PurchaseGeneralFailureImplCopyWithImpl<
          _$PurchaseGeneralFailureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseGeneralFailureImplToJson(
      this,
    );
  }
}

abstract class _PurchaseGeneralFailure implements PurchaseGeneralFailure {
  const factory _PurchaseGeneralFailure({final dynamic required}) =
      _$PurchaseGeneralFailureImpl;

  factory _PurchaseGeneralFailure.fromJson(Map<String, dynamic> json) =
      _$PurchaseGeneralFailureImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseGeneralFailureImplCopyWith<_$PurchaseGeneralFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
