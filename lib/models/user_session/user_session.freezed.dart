// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserSession _$UserSessionFromJson(Map<String, dynamic> json) {
  return _UserSession.fromJson(json);
}

/// @nodoc
mixin _$UserSession {
  @JsonKey(name: "userName", defaultValue: null)
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "phone", defaultValue: null)
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "email", defaultValue: null)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "tid", defaultValue: null)
  String? get tid => throw _privateConstructorUsedError;
  @JsonKey(name: "merchantEn", defaultValue: null)
  String? get merchantEn => throw _privateConstructorUsedError;
  @JsonKey(name: "merchantAr", defaultValue: null)
  String? get merchantAr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserSessionCopyWith<UserSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSessionCopyWith<$Res> {
  factory $UserSessionCopyWith(
          UserSession value, $Res Function(UserSession) then) =
      _$UserSessionCopyWithImpl<$Res, UserSession>;
  @useResult
  $Res call(
      {@JsonKey(name: "userName", defaultValue: null) String? userName,
      @JsonKey(name: "phone", defaultValue: null) String? phone,
      @JsonKey(name: "email", defaultValue: null) String? email,
      @JsonKey(name: "tid", defaultValue: null) String? tid,
      @JsonKey(name: "merchantEn", defaultValue: null) String? merchantEn,
      @JsonKey(name: "merchantAr", defaultValue: null) String? merchantAr});
}

/// @nodoc
class _$UserSessionCopyWithImpl<$Res, $Val extends UserSession>
    implements $UserSessionCopyWith<$Res> {
  _$UserSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? tid = freezed,
    Object? merchantEn = freezed,
    Object? merchantAr = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantEn: freezed == merchantEn
          ? _value.merchantEn
          : merchantEn // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAr: freezed == merchantAr
          ? _value.merchantAr
          : merchantAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSessionImplCopyWith<$Res>
    implements $UserSessionCopyWith<$Res> {
  factory _$$UserSessionImplCopyWith(
          _$UserSessionImpl value, $Res Function(_$UserSessionImpl) then) =
      __$$UserSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userName", defaultValue: null) String? userName,
      @JsonKey(name: "phone", defaultValue: null) String? phone,
      @JsonKey(name: "email", defaultValue: null) String? email,
      @JsonKey(name: "tid", defaultValue: null) String? tid,
      @JsonKey(name: "merchantEn", defaultValue: null) String? merchantEn,
      @JsonKey(name: "merchantAr", defaultValue: null) String? merchantAr});
}

/// @nodoc
class __$$UserSessionImplCopyWithImpl<$Res>
    extends _$UserSessionCopyWithImpl<$Res, _$UserSessionImpl>
    implements _$$UserSessionImplCopyWith<$Res> {
  __$$UserSessionImplCopyWithImpl(
      _$UserSessionImpl _value, $Res Function(_$UserSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? tid = freezed,
    Object? merchantEn = freezed,
    Object? merchantAr = freezed,
  }) {
    return _then(_$UserSessionImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tid: freezed == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantEn: freezed == merchantEn
          ? _value.merchantEn
          : merchantEn // ignore: cast_nullable_to_non_nullable
              as String?,
      merchantAr: freezed == merchantAr
          ? _value.merchantAr
          : merchantAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSessionImpl implements _UserSession {
  const _$UserSessionImpl(
      {@JsonKey(name: "userName", defaultValue: null) this.userName,
      @JsonKey(name: "phone", defaultValue: null) this.phone,
      @JsonKey(name: "email", defaultValue: null) this.email,
      @JsonKey(name: "tid", defaultValue: null) this.tid,
      @JsonKey(name: "merchantEn", defaultValue: null) this.merchantEn,
      @JsonKey(name: "merchantAr", defaultValue: null) this.merchantAr});

  factory _$UserSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSessionImplFromJson(json);

  @override
  @JsonKey(name: "userName", defaultValue: null)
  final String? userName;
  @override
  @JsonKey(name: "phone", defaultValue: null)
  final String? phone;
  @override
  @JsonKey(name: "email", defaultValue: null)
  final String? email;
  @override
  @JsonKey(name: "tid", defaultValue: null)
  final String? tid;
  @override
  @JsonKey(name: "merchantEn", defaultValue: null)
  final String? merchantEn;
  @override
  @JsonKey(name: "merchantAr", defaultValue: null)
  final String? merchantAr;

  @override
  String toString() {
    return 'UserSession(userName: $userName, phone: $phone, email: $email, tid: $tid, merchantEn: $merchantEn, merchantAr: $merchantAr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSessionImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tid, tid) || other.tid == tid) &&
            (identical(other.merchantEn, merchantEn) ||
                other.merchantEn == merchantEn) &&
            (identical(other.merchantAr, merchantAr) ||
                other.merchantAr == merchantAr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, phone, email, tid, merchantEn, merchantAr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      __$$UserSessionImplCopyWithImpl<_$UserSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSessionImplToJson(
      this,
    );
  }
}

abstract class _UserSession implements UserSession {
  const factory _UserSession(
      {@JsonKey(name: "userName", defaultValue: null) final String? userName,
      @JsonKey(name: "phone", defaultValue: null) final String? phone,
      @JsonKey(name: "email", defaultValue: null) final String? email,
      @JsonKey(name: "tid", defaultValue: null) final String? tid,
      @JsonKey(name: "merchantEn", defaultValue: null) final String? merchantEn,
      @JsonKey(name: "merchantAr", defaultValue: null)
      final String? merchantAr}) = _$UserSessionImpl;

  factory _UserSession.fromJson(Map<String, dynamic> json) =
      _$UserSessionImpl.fromJson;

  @override
  @JsonKey(name: "userName", defaultValue: null)
  String? get userName;
  @override
  @JsonKey(name: "phone", defaultValue: null)
  String? get phone;
  @override
  @JsonKey(name: "email", defaultValue: null)
  String? get email;
  @override
  @JsonKey(name: "tid", defaultValue: null)
  String? get tid;
  @override
  @JsonKey(name: "merchantEn", defaultValue: null)
  String? get merchantEn;
  @override
  @JsonKey(name: "merchantAr", defaultValue: null)
  String? get merchantAr;
  @override
  @JsonKey(ignore: true)
  _$$UserSessionImplCopyWith<_$UserSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
