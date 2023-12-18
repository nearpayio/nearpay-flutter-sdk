// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionAuthenticationFailed _$SessionAuthenticationFailedFromJson(
    Map<String, dynamic> json) {
  return _SessionAuthenticationFailed.fromJson(json);
}

/// @nodoc
mixin _$SessionAuthenticationFailed {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionAuthenticationFailedCopyWith<SessionAuthenticationFailed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionAuthenticationFailedCopyWith<$Res> {
  factory $SessionAuthenticationFailedCopyWith(
          SessionAuthenticationFailed value,
          $Res Function(SessionAuthenticationFailed) then) =
      _$SessionAuthenticationFailedCopyWithImpl<$Res,
          SessionAuthenticationFailed>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SessionAuthenticationFailedCopyWithImpl<$Res,
        $Val extends SessionAuthenticationFailed>
    implements $SessionAuthenticationFailedCopyWith<$Res> {
  _$SessionAuthenticationFailedCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionAuthenticationFailedImplCopyWith<$Res>
    implements $SessionAuthenticationFailedCopyWith<$Res> {
  factory _$$SessionAuthenticationFailedImplCopyWith(
          _$SessionAuthenticationFailedImpl value,
          $Res Function(_$SessionAuthenticationFailedImpl) then) =
      __$$SessionAuthenticationFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SessionAuthenticationFailedImplCopyWithImpl<$Res>
    extends _$SessionAuthenticationFailedCopyWithImpl<$Res,
        _$SessionAuthenticationFailedImpl>
    implements _$$SessionAuthenticationFailedImplCopyWith<$Res> {
  __$$SessionAuthenticationFailedImplCopyWithImpl(
      _$SessionAuthenticationFailedImpl _value,
      $Res Function(_$SessionAuthenticationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SessionAuthenticationFailedImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionAuthenticationFailedImpl
    implements _SessionAuthenticationFailed {
  const _$SessionAuthenticationFailedImpl({required this.message});

  factory _$SessionAuthenticationFailedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SessionAuthenticationFailedImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SessionAuthenticationFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionAuthenticationFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionAuthenticationFailedImplCopyWith<_$SessionAuthenticationFailedImpl>
      get copyWith => __$$SessionAuthenticationFailedImplCopyWithImpl<
          _$SessionAuthenticationFailedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionAuthenticationFailedImplToJson(
      this,
    );
  }
}

abstract class _SessionAuthenticationFailed
    implements SessionAuthenticationFailed {
  const factory _SessionAuthenticationFailed({required final String message}) =
      _$SessionAuthenticationFailedImpl;

  factory _SessionAuthenticationFailed.fromJson(Map<String, dynamic> json) =
      _$SessionAuthenticationFailedImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SessionAuthenticationFailedImplCopyWith<_$SessionAuthenticationFailedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionFailureMessage _$SessionFailureMessageFromJson(
    Map<String, dynamic> json) {
  return _SessionFailureMessage.fromJson(json);
}

/// @nodoc
mixin _$SessionFailureMessage {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionFailureMessageCopyWith<SessionFailureMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionFailureMessageCopyWith<$Res> {
  factory $SessionFailureMessageCopyWith(SessionFailureMessage value,
          $Res Function(SessionFailureMessage) then) =
      _$SessionFailureMessageCopyWithImpl<$Res, SessionFailureMessage>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SessionFailureMessageCopyWithImpl<$Res,
        $Val extends SessionFailureMessage>
    implements $SessionFailureMessageCopyWith<$Res> {
  _$SessionFailureMessageCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionFailureMessageImplCopyWith<$Res>
    implements $SessionFailureMessageCopyWith<$Res> {
  factory _$$SessionFailureMessageImplCopyWith(
          _$SessionFailureMessageImpl value,
          $Res Function(_$SessionFailureMessageImpl) then) =
      __$$SessionFailureMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SessionFailureMessageImplCopyWithImpl<$Res>
    extends _$SessionFailureMessageCopyWithImpl<$Res,
        _$SessionFailureMessageImpl>
    implements _$$SessionFailureMessageImplCopyWith<$Res> {
  __$$SessionFailureMessageImplCopyWithImpl(_$SessionFailureMessageImpl _value,
      $Res Function(_$SessionFailureMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SessionFailureMessageImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionFailureMessageImpl implements _SessionFailureMessage {
  const _$SessionFailureMessageImpl({required this.message});

  factory _$SessionFailureMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionFailureMessageImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'SessionFailureMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionFailureMessageImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionFailureMessageImplCopyWith<_$SessionFailureMessageImpl>
      get copyWith => __$$SessionFailureMessageImplCopyWithImpl<
          _$SessionFailureMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionFailureMessageImplToJson(
      this,
    );
  }
}

abstract class _SessionFailureMessage implements SessionFailureMessage {
  const factory _SessionFailureMessage({required final String message}) =
      _$SessionFailureMessageImpl;

  factory _SessionFailureMessage.fromJson(Map<String, dynamic> json) =
      _$SessionFailureMessageImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SessionFailureMessageImplCopyWith<_$SessionFailureMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionInvalidStatus _$SessionInvalidStatusFromJson(Map<String, dynamic> json) {
  return _SessionInvalidStatus.fromJson(json);
}

/// @nodoc
mixin _$SessionInvalidStatus {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionInvalidStatusCopyWith<SessionInvalidStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionInvalidStatusCopyWith<$Res> {
  factory $SessionInvalidStatusCopyWith(SessionInvalidStatus value,
          $Res Function(SessionInvalidStatus) then) =
      _$SessionInvalidStatusCopyWithImpl<$Res, SessionInvalidStatus>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$SessionInvalidStatusCopyWithImpl<$Res,
        $Val extends SessionInvalidStatus>
    implements $SessionInvalidStatusCopyWith<$Res> {
  _$SessionInvalidStatusCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionInvalidStatusImplCopyWith<$Res>
    implements $SessionInvalidStatusCopyWith<$Res> {
  factory _$$SessionInvalidStatusImplCopyWith(_$SessionInvalidStatusImpl value,
          $Res Function(_$SessionInvalidStatusImpl) then) =
      __$$SessionInvalidStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$SessionInvalidStatusImplCopyWithImpl<$Res>
    extends _$SessionInvalidStatusCopyWithImpl<$Res, _$SessionInvalidStatusImpl>
    implements _$$SessionInvalidStatusImplCopyWith<$Res> {
  __$$SessionInvalidStatusImplCopyWithImpl(_$SessionInvalidStatusImpl _value,
      $Res Function(_$SessionInvalidStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$SessionInvalidStatusImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionInvalidStatusImpl implements _SessionInvalidStatus {
  const _$SessionInvalidStatusImpl({this.required});

  factory _$SessionInvalidStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionInvalidStatusImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'SessionInvalidStatus(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionInvalidStatusImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionInvalidStatusImplCopyWith<_$SessionInvalidStatusImpl>
      get copyWith =>
          __$$SessionInvalidStatusImplCopyWithImpl<_$SessionInvalidStatusImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionInvalidStatusImplToJson(
      this,
    );
  }
}

abstract class _SessionInvalidStatus implements SessionInvalidStatus {
  const factory _SessionInvalidStatus({final dynamic required}) =
      _$SessionInvalidStatusImpl;

  factory _SessionInvalidStatus.fromJson(Map<String, dynamic> json) =
      _$SessionInvalidStatusImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$SessionInvalidStatusImplCopyWith<_$SessionInvalidStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SessionGeneralFailure _$SessionGeneralFailureFromJson(
    Map<String, dynamic> json) {
  return _SessionGeneralFailure.fromJson(json);
}

/// @nodoc
mixin _$SessionGeneralFailure {
  dynamic get required => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionGeneralFailureCopyWith<SessionGeneralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionGeneralFailureCopyWith<$Res> {
  factory $SessionGeneralFailureCopyWith(SessionGeneralFailure value,
          $Res Function(SessionGeneralFailure) then) =
      _$SessionGeneralFailureCopyWithImpl<$Res, SessionGeneralFailure>;
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class _$SessionGeneralFailureCopyWithImpl<$Res,
        $Val extends SessionGeneralFailure>
    implements $SessionGeneralFailureCopyWith<$Res> {
  _$SessionGeneralFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$SessionGeneralFailureImplCopyWith<$Res>
    implements $SessionGeneralFailureCopyWith<$Res> {
  factory _$$SessionGeneralFailureImplCopyWith(
          _$SessionGeneralFailureImpl value,
          $Res Function(_$SessionGeneralFailureImpl) then) =
      __$$SessionGeneralFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic required});
}

/// @nodoc
class __$$SessionGeneralFailureImplCopyWithImpl<$Res>
    extends _$SessionGeneralFailureCopyWithImpl<$Res,
        _$SessionGeneralFailureImpl>
    implements _$$SessionGeneralFailureImplCopyWith<$Res> {
  __$$SessionGeneralFailureImplCopyWithImpl(_$SessionGeneralFailureImpl _value,
      $Res Function(_$SessionGeneralFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
  }) {
    return _then(_$SessionGeneralFailureImpl(
      required: freezed == required ? _value.required! : required,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionGeneralFailureImpl implements _SessionGeneralFailure {
  const _$SessionGeneralFailureImpl({this.required});

  factory _$SessionGeneralFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionGeneralFailureImplFromJson(json);

  @override
  final dynamic required;

  @override
  String toString() {
    return 'SessionGeneralFailure(required: $required)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionGeneralFailureImpl &&
            const DeepCollectionEquality().equals(other.required, required));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(required));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionGeneralFailureImplCopyWith<_$SessionGeneralFailureImpl>
      get copyWith => __$$SessionGeneralFailureImplCopyWithImpl<
          _$SessionGeneralFailureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionGeneralFailureImplToJson(
      this,
    );
  }
}

abstract class _SessionGeneralFailure implements SessionGeneralFailure {
  const factory _SessionGeneralFailure({final dynamic required}) =
      _$SessionGeneralFailureImpl;

  factory _SessionGeneralFailure.fromJson(Map<String, dynamic> json) =
      _$SessionGeneralFailureImpl.fromJson;

  @override
  dynamic get required;
  @override
  @JsonKey(ignore: true)
  _$$SessionGeneralFailureImplCopyWith<_$SessionGeneralFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
