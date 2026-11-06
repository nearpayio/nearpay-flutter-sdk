// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionAuthenticationFailed {

 String get message;
/// Create a copy of SessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionAuthenticationFailedCopyWith<SessionAuthenticationFailed> get copyWith => _$SessionAuthenticationFailedCopyWithImpl<SessionAuthenticationFailed>(this as SessionAuthenticationFailed, _$identity);

  /// Serializes this SessionAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SessionAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $SessionAuthenticationFailedCopyWith<$Res>  {
  factory $SessionAuthenticationFailedCopyWith(SessionAuthenticationFailed value, $Res Function(SessionAuthenticationFailed) _then) = _$SessionAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SessionAuthenticationFailedCopyWithImpl<$Res>
    implements $SessionAuthenticationFailedCopyWith<$Res> {
  _$SessionAuthenticationFailedCopyWithImpl(this._self, this._then);

  final SessionAuthenticationFailed _self;
  final $Res Function(SessionAuthenticationFailed) _then;

/// Create a copy of SessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionAuthenticationFailed].
extension SessionAuthenticationFailedPatterns on SessionAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _SessionAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _SessionAuthenticationFailed() when $default != null:
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
case _SessionAuthenticationFailed() when $default != null:
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
case _SessionAuthenticationFailed():
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
case _SessionAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionAuthenticationFailed extends SessionAuthenticationFailed {
  const _SessionAuthenticationFailed({required this.message}): super._();
  factory _SessionAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$SessionAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of SessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionAuthenticationFailedCopyWith<_SessionAuthenticationFailed> get copyWith => __$SessionAuthenticationFailedCopyWithImpl<_SessionAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SessionAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SessionAuthenticationFailedCopyWith<$Res> implements $SessionAuthenticationFailedCopyWith<$Res> {
  factory _$SessionAuthenticationFailedCopyWith(_SessionAuthenticationFailed value, $Res Function(_SessionAuthenticationFailed) _then) = __$SessionAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SessionAuthenticationFailedCopyWithImpl<$Res>
    implements _$SessionAuthenticationFailedCopyWith<$Res> {
  __$SessionAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _SessionAuthenticationFailed _self;
  final $Res Function(_SessionAuthenticationFailed) _then;

/// Create a copy of SessionAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SessionAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SessionFailureMessage {

 String get message;
/// Create a copy of SessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionFailureMessageCopyWith<SessionFailureMessage> get copyWith => _$SessionFailureMessageCopyWithImpl<SessionFailureMessage>(this as SessionFailureMessage, _$identity);

  /// Serializes this SessionFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SessionFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $SessionFailureMessageCopyWith<$Res>  {
  factory $SessionFailureMessageCopyWith(SessionFailureMessage value, $Res Function(SessionFailureMessage) _then) = _$SessionFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SessionFailureMessageCopyWithImpl<$Res>
    implements $SessionFailureMessageCopyWith<$Res> {
  _$SessionFailureMessageCopyWithImpl(this._self, this._then);

  final SessionFailureMessage _self;
  final $Res Function(SessionFailureMessage) _then;

/// Create a copy of SessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionFailureMessage].
extension SessionFailureMessagePatterns on SessionFailureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionFailureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _SessionFailureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _SessionFailureMessage() when $default != null:
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
case _SessionFailureMessage() when $default != null:
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
case _SessionFailureMessage():
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
case _SessionFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionFailureMessage extends SessionFailureMessage {
  const _SessionFailureMessage({required this.message}): super._();
  factory _SessionFailureMessage.fromJson(Map<String, dynamic> json) => _$SessionFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of SessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionFailureMessageCopyWith<_SessionFailureMessage> get copyWith => __$SessionFailureMessageCopyWithImpl<_SessionFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SessionFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SessionFailureMessageCopyWith<$Res> implements $SessionFailureMessageCopyWith<$Res> {
  factory _$SessionFailureMessageCopyWith(_SessionFailureMessage value, $Res Function(_SessionFailureMessage) _then) = __$SessionFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SessionFailureMessageCopyWithImpl<$Res>
    implements _$SessionFailureMessageCopyWith<$Res> {
  __$SessionFailureMessageCopyWithImpl(this._self, this._then);

  final _SessionFailureMessage _self;
  final $Res Function(_SessionFailureMessage) _then;

/// Create a copy of SessionFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SessionFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SessionInvalidStatus {

 dynamic get required;
/// Create a copy of SessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionInvalidStatusCopyWith<SessionInvalidStatus> get copyWith => _$SessionInvalidStatusCopyWithImpl<SessionInvalidStatus>(this as SessionInvalidStatus, _$identity);

  /// Serializes this SessionInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'SessionInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $SessionInvalidStatusCopyWith<$Res>  {
  factory $SessionInvalidStatusCopyWith(SessionInvalidStatus value, $Res Function(SessionInvalidStatus) _then) = _$SessionInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$SessionInvalidStatusCopyWithImpl<$Res>
    implements $SessionInvalidStatusCopyWith<$Res> {
  _$SessionInvalidStatusCopyWithImpl(this._self, this._then);

  final SessionInvalidStatus _self;
  final $Res Function(SessionInvalidStatus) _then;

/// Create a copy of SessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionInvalidStatus].
extension SessionInvalidStatusPatterns on SessionInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _SessionInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _SessionInvalidStatus() when $default != null:
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
case _SessionInvalidStatus() when $default != null:
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
case _SessionInvalidStatus():
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
case _SessionInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionInvalidStatus extends SessionInvalidStatus {
  const _SessionInvalidStatus({this.required}): super._();
  factory _SessionInvalidStatus.fromJson(Map<String, dynamic> json) => _$SessionInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of SessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionInvalidStatusCopyWith<_SessionInvalidStatus> get copyWith => __$SessionInvalidStatusCopyWithImpl<_SessionInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'SessionInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$SessionInvalidStatusCopyWith<$Res> implements $SessionInvalidStatusCopyWith<$Res> {
  factory _$SessionInvalidStatusCopyWith(_SessionInvalidStatus value, $Res Function(_SessionInvalidStatus) _then) = __$SessionInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$SessionInvalidStatusCopyWithImpl<$Res>
    implements _$SessionInvalidStatusCopyWith<$Res> {
  __$SessionInvalidStatusCopyWithImpl(this._self, this._then);

  final _SessionInvalidStatus _self;
  final $Res Function(_SessionInvalidStatus) _then;

/// Create a copy of SessionInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_SessionInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$SessionGeneralFailure {

 dynamic get required;
/// Create a copy of SessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionGeneralFailureCopyWith<SessionGeneralFailure> get copyWith => _$SessionGeneralFailureCopyWithImpl<SessionGeneralFailure>(this as SessionGeneralFailure, _$identity);

  /// Serializes this SessionGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'SessionGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $SessionGeneralFailureCopyWith<$Res>  {
  factory $SessionGeneralFailureCopyWith(SessionGeneralFailure value, $Res Function(SessionGeneralFailure) _then) = _$SessionGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$SessionGeneralFailureCopyWithImpl<$Res>
    implements $SessionGeneralFailureCopyWith<$Res> {
  _$SessionGeneralFailureCopyWithImpl(this._self, this._then);

  final SessionGeneralFailure _self;
  final $Res Function(SessionGeneralFailure) _then;

/// Create a copy of SessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionGeneralFailure].
extension SessionGeneralFailurePatterns on SessionGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _SessionGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _SessionGeneralFailure() when $default != null:
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
case _SessionGeneralFailure() when $default != null:
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
case _SessionGeneralFailure():
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
case _SessionGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionGeneralFailure extends SessionGeneralFailure {
  const _SessionGeneralFailure({this.required}): super._();
  factory _SessionGeneralFailure.fromJson(Map<String, dynamic> json) => _$SessionGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of SessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionGeneralFailureCopyWith<_SessionGeneralFailure> get copyWith => __$SessionGeneralFailureCopyWithImpl<_SessionGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'SessionGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$SessionGeneralFailureCopyWith<$Res> implements $SessionGeneralFailureCopyWith<$Res> {
  factory _$SessionGeneralFailureCopyWith(_SessionGeneralFailure value, $Res Function(_SessionGeneralFailure) _then) = __$SessionGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$SessionGeneralFailureCopyWithImpl<$Res>
    implements _$SessionGeneralFailureCopyWith<$Res> {
  __$SessionGeneralFailureCopyWithImpl(this._self, this._then);

  final _SessionGeneralFailure _self;
  final $Res Function(_SessionGeneralFailure) _then;

/// Create a copy of SessionGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_SessionGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
