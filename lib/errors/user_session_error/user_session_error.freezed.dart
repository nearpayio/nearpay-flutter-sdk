// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_session_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSessionAuthenticationFailed {

 String get message;
/// Create a copy of UserSessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionAuthenticationFailedCopyWith<UserSessionAuthenticationFailed> get copyWith => _$UserSessionAuthenticationFailedCopyWithImpl<UserSessionAuthenticationFailed>(this as UserSessionAuthenticationFailed, _$identity);

  /// Serializes this UserSessionAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserSessionAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserSessionAuthenticationFailedCopyWith<$Res>  {
  factory $UserSessionAuthenticationFailedCopyWith(UserSessionAuthenticationFailed value, $Res Function(UserSessionAuthenticationFailed) _then) = _$UserSessionAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserSessionAuthenticationFailedCopyWithImpl<$Res>
    implements $UserSessionAuthenticationFailedCopyWith<$Res> {
  _$UserSessionAuthenticationFailedCopyWithImpl(this._self, this._then);

  final UserSessionAuthenticationFailed _self;
  final $Res Function(UserSessionAuthenticationFailed) _then;

/// Create a copy of UserSessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSessionAuthenticationFailed].
extension UserSessionAuthenticationFailedPatterns on UserSessionAuthenticationFailed {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSessionAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSessionAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSessionAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed():
return $default(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _UserSessionAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSessionAuthenticationFailed extends UserSessionAuthenticationFailed {
  const _UserSessionAuthenticationFailed({required this.message}): super._();
  factory _UserSessionAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$UserSessionAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of UserSessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionAuthenticationFailedCopyWith<_UserSessionAuthenticationFailed> get copyWith => __$UserSessionAuthenticationFailedCopyWithImpl<_UserSessionAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSessionAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSessionAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserSessionAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserSessionAuthenticationFailedCopyWith<$Res> implements $UserSessionAuthenticationFailedCopyWith<$Res> {
  factory _$UserSessionAuthenticationFailedCopyWith(_UserSessionAuthenticationFailed value, $Res Function(_UserSessionAuthenticationFailed) _then) = __$UserSessionAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UserSessionAuthenticationFailedCopyWithImpl<$Res>
    implements _$UserSessionAuthenticationFailedCopyWith<$Res> {
  __$UserSessionAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _UserSessionAuthenticationFailed _self;
  final $Res Function(_UserSessionAuthenticationFailed) _then;

/// Create a copy of UserSessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UserSessionAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserSessionFailureMessage {

 String get message;
/// Create a copy of UserSessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionFailureMessageCopyWith<UserSessionFailureMessage> get copyWith => _$UserSessionFailureMessageCopyWithImpl<UserSessionFailureMessage>(this as UserSessionFailureMessage, _$identity);

  /// Serializes this UserSessionFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserSessionFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $UserSessionFailureMessageCopyWith<$Res>  {
  factory $UserSessionFailureMessageCopyWith(UserSessionFailureMessage value, $Res Function(UserSessionFailureMessage) _then) = _$UserSessionFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UserSessionFailureMessageCopyWithImpl<$Res>
    implements $UserSessionFailureMessageCopyWith<$Res> {
  _$UserSessionFailureMessageCopyWithImpl(this._self, this._then);

  final UserSessionFailureMessage _self;
  final $Res Function(UserSessionFailureMessage) _then;

/// Create a copy of UserSessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSessionFailureMessage].
extension UserSessionFailureMessagePatterns on UserSessionFailureMessage {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSessionFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSessionFailureMessage() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSessionFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _UserSessionFailureMessage():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSessionFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _UserSessionFailureMessage() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSessionFailureMessage() when $default != null:
return $default(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _UserSessionFailureMessage():
return $default(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _UserSessionFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSessionFailureMessage extends UserSessionFailureMessage {
  const _UserSessionFailureMessage({required this.message}): super._();
  factory _UserSessionFailureMessage.fromJson(Map<String, dynamic> json) => _$UserSessionFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of UserSessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionFailureMessageCopyWith<_UserSessionFailureMessage> get copyWith => __$UserSessionFailureMessageCopyWithImpl<_UserSessionFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSessionFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSessionFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UserSessionFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UserSessionFailureMessageCopyWith<$Res> implements $UserSessionFailureMessageCopyWith<$Res> {
  factory _$UserSessionFailureMessageCopyWith(_UserSessionFailureMessage value, $Res Function(_UserSessionFailureMessage) _then) = __$UserSessionFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UserSessionFailureMessageCopyWithImpl<$Res>
    implements _$UserSessionFailureMessageCopyWith<$Res> {
  __$UserSessionFailureMessageCopyWithImpl(this._self, this._then);

  final _UserSessionFailureMessage _self;
  final $Res Function(_UserSessionFailureMessage) _then;

/// Create a copy of UserSessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UserSessionFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserSessionInvalidStatus {

 dynamic get required;
/// Create a copy of UserSessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionInvalidStatusCopyWith<UserSessionInvalidStatus> get copyWith => _$UserSessionInvalidStatusCopyWithImpl<UserSessionInvalidStatus>(this as UserSessionInvalidStatus, _$identity);

  /// Serializes this UserSessionInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'UserSessionInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $UserSessionInvalidStatusCopyWith<$Res>  {
  factory $UserSessionInvalidStatusCopyWith(UserSessionInvalidStatus value, $Res Function(UserSessionInvalidStatus) _then) = _$UserSessionInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$UserSessionInvalidStatusCopyWithImpl<$Res>
    implements $UserSessionInvalidStatusCopyWith<$Res> {
  _$UserSessionInvalidStatusCopyWithImpl(this._self, this._then);

  final UserSessionInvalidStatus _self;
  final $Res Function(UserSessionInvalidStatus) _then;

/// Create a copy of UserSessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSessionInvalidStatus].
extension UserSessionInvalidStatusPatterns on UserSessionInvalidStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSessionInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSessionInvalidStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSessionInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _UserSessionInvalidStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSessionInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _UserSessionInvalidStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic required)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSessionInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic required)  $default,) {final _that = this;
switch (_that) {
case _UserSessionInvalidStatus():
return $default(_that.required);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic required)?  $default,) {final _that = this;
switch (_that) {
case _UserSessionInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSessionInvalidStatus extends UserSessionInvalidStatus {
  const _UserSessionInvalidStatus({this.required}): super._();
  factory _UserSessionInvalidStatus.fromJson(Map<String, dynamic> json) => _$UserSessionInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of UserSessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionInvalidStatusCopyWith<_UserSessionInvalidStatus> get copyWith => __$UserSessionInvalidStatusCopyWithImpl<_UserSessionInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSessionInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSessionInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'UserSessionInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$UserSessionInvalidStatusCopyWith<$Res> implements $UserSessionInvalidStatusCopyWith<$Res> {
  factory _$UserSessionInvalidStatusCopyWith(_UserSessionInvalidStatus value, $Res Function(_UserSessionInvalidStatus) _then) = __$UserSessionInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$UserSessionInvalidStatusCopyWithImpl<$Res>
    implements _$UserSessionInvalidStatusCopyWith<$Res> {
  __$UserSessionInvalidStatusCopyWithImpl(this._self, this._then);

  final _UserSessionInvalidStatus _self;
  final $Res Function(_UserSessionInvalidStatus) _then;

/// Create a copy of UserSessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_UserSessionInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$UserSessionGeneralFailure {

 dynamic get required;
/// Create a copy of UserSessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSessionGeneralFailureCopyWith<UserSessionGeneralFailure> get copyWith => _$UserSessionGeneralFailureCopyWithImpl<UserSessionGeneralFailure>(this as UserSessionGeneralFailure, _$identity);

  /// Serializes this UserSessionGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSessionGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'UserSessionGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $UserSessionGeneralFailureCopyWith<$Res>  {
  factory $UserSessionGeneralFailureCopyWith(UserSessionGeneralFailure value, $Res Function(UserSessionGeneralFailure) _then) = _$UserSessionGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$UserSessionGeneralFailureCopyWithImpl<$Res>
    implements $UserSessionGeneralFailureCopyWith<$Res> {
  _$UserSessionGeneralFailureCopyWithImpl(this._self, this._then);

  final UserSessionGeneralFailure _self;
  final $Res Function(UserSessionGeneralFailure) _then;

/// Create a copy of UserSessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSessionGeneralFailure].
extension UserSessionGeneralFailurePatterns on UserSessionGeneralFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSessionGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSessionGeneralFailure() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSessionGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _UserSessionGeneralFailure():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSessionGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _UserSessionGeneralFailure() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic required)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSessionGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic required)  $default,) {final _that = this;
switch (_that) {
case _UserSessionGeneralFailure():
return $default(_that.required);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic required)?  $default,) {final _that = this;
switch (_that) {
case _UserSessionGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSessionGeneralFailure extends UserSessionGeneralFailure {
  const _UserSessionGeneralFailure({this.required}): super._();
  factory _UserSessionGeneralFailure.fromJson(Map<String, dynamic> json) => _$UserSessionGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of UserSessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSessionGeneralFailureCopyWith<_UserSessionGeneralFailure> get copyWith => __$UserSessionGeneralFailureCopyWithImpl<_UserSessionGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSessionGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSessionGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'UserSessionGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$UserSessionGeneralFailureCopyWith<$Res> implements $UserSessionGeneralFailureCopyWith<$Res> {
  factory _$UserSessionGeneralFailureCopyWith(_UserSessionGeneralFailure value, $Res Function(_UserSessionGeneralFailure) _then) = __$UserSessionGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$UserSessionGeneralFailureCopyWithImpl<$Res>
    implements _$UserSessionGeneralFailureCopyWith<$Res> {
  __$UserSessionGeneralFailureCopyWithImpl(this._self, this._then);

  final _UserSessionGeneralFailure _self;
  final $Res Function(_UserSessionGeneralFailure) _then;

/// Create a copy of UserSessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_UserSessionGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
