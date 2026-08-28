// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogoutAuthenticationFailed {

 String get message;
/// Create a copy of LogoutAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutAuthenticationFailedCopyWith<LogoutAuthenticationFailed> get copyWith => _$LogoutAuthenticationFailedCopyWithImpl<LogoutAuthenticationFailed>(this as LogoutAuthenticationFailed, _$identity);

  /// Serializes this LogoutAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LogoutAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $LogoutAuthenticationFailedCopyWith<$Res>  {
  factory $LogoutAuthenticationFailedCopyWith(LogoutAuthenticationFailed value, $Res Function(LogoutAuthenticationFailed) _then) = _$LogoutAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LogoutAuthenticationFailedCopyWithImpl<$Res>
    implements $LogoutAuthenticationFailedCopyWith<$Res> {
  _$LogoutAuthenticationFailedCopyWithImpl(this._self, this._then);

  final LogoutAuthenticationFailed _self;
  final $Res Function(LogoutAuthenticationFailed) _then;

/// Create a copy of LogoutAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LogoutAuthenticationFailed].
extension LogoutAuthenticationFailedPatterns on LogoutAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogoutAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogoutAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _LogoutAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogoutAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _LogoutAuthenticationFailed() when $default != null:
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
case _LogoutAuthenticationFailed() when $default != null:
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
case _LogoutAuthenticationFailed():
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
case _LogoutAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogoutAuthenticationFailed extends LogoutAuthenticationFailed {
  const _LogoutAuthenticationFailed({required this.message}): super._();
  factory _LogoutAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$LogoutAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of LogoutAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutAuthenticationFailedCopyWith<_LogoutAuthenticationFailed> get copyWith => __$LogoutAuthenticationFailedCopyWithImpl<_LogoutAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogoutAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LogoutAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LogoutAuthenticationFailedCopyWith<$Res> implements $LogoutAuthenticationFailedCopyWith<$Res> {
  factory _$LogoutAuthenticationFailedCopyWith(_LogoutAuthenticationFailed value, $Res Function(_LogoutAuthenticationFailed) _then) = __$LogoutAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LogoutAuthenticationFailedCopyWithImpl<$Res>
    implements _$LogoutAuthenticationFailedCopyWith<$Res> {
  __$LogoutAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _LogoutAuthenticationFailed _self;
  final $Res Function(_LogoutAuthenticationFailed) _then;

/// Create a copy of LogoutAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LogoutAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LogoutFailureMessage {

 String get message;
/// Create a copy of LogoutFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutFailureMessageCopyWith<LogoutFailureMessage> get copyWith => _$LogoutFailureMessageCopyWithImpl<LogoutFailureMessage>(this as LogoutFailureMessage, _$identity);

  /// Serializes this LogoutFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LogoutFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $LogoutFailureMessageCopyWith<$Res>  {
  factory $LogoutFailureMessageCopyWith(LogoutFailureMessage value, $Res Function(LogoutFailureMessage) _then) = _$LogoutFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$LogoutFailureMessageCopyWithImpl<$Res>
    implements $LogoutFailureMessageCopyWith<$Res> {
  _$LogoutFailureMessageCopyWithImpl(this._self, this._then);

  final LogoutFailureMessage _self;
  final $Res Function(LogoutFailureMessage) _then;

/// Create a copy of LogoutFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LogoutFailureMessage].
extension LogoutFailureMessagePatterns on LogoutFailureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogoutFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutFailureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogoutFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _LogoutFailureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogoutFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _LogoutFailureMessage() when $default != null:
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
case _LogoutFailureMessage() when $default != null:
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
case _LogoutFailureMessage():
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
case _LogoutFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogoutFailureMessage extends LogoutFailureMessage {
  const _LogoutFailureMessage({required this.message}): super._();
  factory _LogoutFailureMessage.fromJson(Map<String, dynamic> json) => _$LogoutFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of LogoutFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutFailureMessageCopyWith<_LogoutFailureMessage> get copyWith => __$LogoutFailureMessageCopyWithImpl<_LogoutFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogoutFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LogoutFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$LogoutFailureMessageCopyWith<$Res> implements $LogoutFailureMessageCopyWith<$Res> {
  factory _$LogoutFailureMessageCopyWith(_LogoutFailureMessage value, $Res Function(_LogoutFailureMessage) _then) = __$LogoutFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$LogoutFailureMessageCopyWithImpl<$Res>
    implements _$LogoutFailureMessageCopyWith<$Res> {
  __$LogoutFailureMessageCopyWithImpl(this._self, this._then);

  final _LogoutFailureMessage _self;
  final $Res Function(_LogoutFailureMessage) _then;

/// Create a copy of LogoutFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_LogoutFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$LogoutInvalidStatus {

 dynamic get required;
/// Create a copy of LogoutInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutInvalidStatusCopyWith<LogoutInvalidStatus> get copyWith => _$LogoutInvalidStatusCopyWithImpl<LogoutInvalidStatus>(this as LogoutInvalidStatus, _$identity);

  /// Serializes this LogoutInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'LogoutInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $LogoutInvalidStatusCopyWith<$Res>  {
  factory $LogoutInvalidStatusCopyWith(LogoutInvalidStatus value, $Res Function(LogoutInvalidStatus) _then) = _$LogoutInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$LogoutInvalidStatusCopyWithImpl<$Res>
    implements $LogoutInvalidStatusCopyWith<$Res> {
  _$LogoutInvalidStatusCopyWithImpl(this._self, this._then);

  final LogoutInvalidStatus _self;
  final $Res Function(LogoutInvalidStatus) _then;

/// Create a copy of LogoutInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [LogoutInvalidStatus].
extension LogoutInvalidStatusPatterns on LogoutInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogoutInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogoutInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _LogoutInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogoutInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _LogoutInvalidStatus() when $default != null:
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
case _LogoutInvalidStatus() when $default != null:
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
case _LogoutInvalidStatus():
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
case _LogoutInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogoutInvalidStatus extends LogoutInvalidStatus {
  const _LogoutInvalidStatus({this.required}): super._();
  factory _LogoutInvalidStatus.fromJson(Map<String, dynamic> json) => _$LogoutInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of LogoutInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutInvalidStatusCopyWith<_LogoutInvalidStatus> get copyWith => __$LogoutInvalidStatusCopyWithImpl<_LogoutInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogoutInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'LogoutInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$LogoutInvalidStatusCopyWith<$Res> implements $LogoutInvalidStatusCopyWith<$Res> {
  factory _$LogoutInvalidStatusCopyWith(_LogoutInvalidStatus value, $Res Function(_LogoutInvalidStatus) _then) = __$LogoutInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$LogoutInvalidStatusCopyWithImpl<$Res>
    implements _$LogoutInvalidStatusCopyWith<$Res> {
  __$LogoutInvalidStatusCopyWithImpl(this._self, this._then);

  final _LogoutInvalidStatus _self;
  final $Res Function(_LogoutInvalidStatus) _then;

/// Create a copy of LogoutInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_LogoutInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$LogoutGeneralFailure {

 dynamic get required;
/// Create a copy of LogoutGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogoutGeneralFailureCopyWith<LogoutGeneralFailure> get copyWith => _$LogoutGeneralFailureCopyWithImpl<LogoutGeneralFailure>(this as LogoutGeneralFailure, _$identity);

  /// Serializes this LogoutGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'LogoutGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $LogoutGeneralFailureCopyWith<$Res>  {
  factory $LogoutGeneralFailureCopyWith(LogoutGeneralFailure value, $Res Function(LogoutGeneralFailure) _then) = _$LogoutGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$LogoutGeneralFailureCopyWithImpl<$Res>
    implements $LogoutGeneralFailureCopyWith<$Res> {
  _$LogoutGeneralFailureCopyWithImpl(this._self, this._then);

  final LogoutGeneralFailure _self;
  final $Res Function(LogoutGeneralFailure) _then;

/// Create a copy of LogoutGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [LogoutGeneralFailure].
extension LogoutGeneralFailurePatterns on LogoutGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogoutGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogoutGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogoutGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _LogoutGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogoutGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _LogoutGeneralFailure() when $default != null:
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
case _LogoutGeneralFailure() when $default != null:
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
case _LogoutGeneralFailure():
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
case _LogoutGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LogoutGeneralFailure extends LogoutGeneralFailure {
  const _LogoutGeneralFailure({this.required}): super._();
  factory _LogoutGeneralFailure.fromJson(Map<String, dynamic> json) => _$LogoutGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of LogoutGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutGeneralFailureCopyWith<_LogoutGeneralFailure> get copyWith => __$LogoutGeneralFailureCopyWithImpl<_LogoutGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LogoutGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'LogoutGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$LogoutGeneralFailureCopyWith<$Res> implements $LogoutGeneralFailureCopyWith<$Res> {
  factory _$LogoutGeneralFailureCopyWith(_LogoutGeneralFailure value, $Res Function(_LogoutGeneralFailure) _then) = __$LogoutGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$LogoutGeneralFailureCopyWithImpl<$Res>
    implements _$LogoutGeneralFailureCopyWith<$Res> {
  __$LogoutGeneralFailureCopyWithImpl(this._self, this._then);

  final _LogoutGeneralFailure _self;
  final $Res Function(_LogoutGeneralFailure) _then;

/// Create a copy of LogoutGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_LogoutGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$AlreadyLogoutFailure {

 dynamic get required;
/// Create a copy of AlreadyLogoutFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlreadyLogoutFailureCopyWith<AlreadyLogoutFailure> get copyWith => _$AlreadyLogoutFailureCopyWithImpl<AlreadyLogoutFailure>(this as AlreadyLogoutFailure, _$identity);

  /// Serializes this AlreadyLogoutFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AlreadyLogoutFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'AlreadyLogoutFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $AlreadyLogoutFailureCopyWith<$Res>  {
  factory $AlreadyLogoutFailureCopyWith(AlreadyLogoutFailure value, $Res Function(AlreadyLogoutFailure) _then) = _$AlreadyLogoutFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$AlreadyLogoutFailureCopyWithImpl<$Res>
    implements $AlreadyLogoutFailureCopyWith<$Res> {
  _$AlreadyLogoutFailureCopyWithImpl(this._self, this._then);

  final AlreadyLogoutFailure _self;
  final $Res Function(AlreadyLogoutFailure) _then;

/// Create a copy of AlreadyLogoutFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [AlreadyLogoutFailure].
extension AlreadyLogoutFailurePatterns on AlreadyLogoutFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AlreadyLogoutFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AlreadyLogoutFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AlreadyLogoutFailure value)  $default,){
final _that = this;
switch (_that) {
case _AlreadyLogoutFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AlreadyLogoutFailure value)?  $default,){
final _that = this;
switch (_that) {
case _AlreadyLogoutFailure() when $default != null:
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
case _AlreadyLogoutFailure() when $default != null:
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
case _AlreadyLogoutFailure():
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
case _AlreadyLogoutFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AlreadyLogoutFailure extends AlreadyLogoutFailure {
  const _AlreadyLogoutFailure({this.required}): super._();
  factory _AlreadyLogoutFailure.fromJson(Map<String, dynamic> json) => _$AlreadyLogoutFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of AlreadyLogoutFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlreadyLogoutFailureCopyWith<_AlreadyLogoutFailure> get copyWith => __$AlreadyLogoutFailureCopyWithImpl<_AlreadyLogoutFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlreadyLogoutFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AlreadyLogoutFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'AlreadyLogoutFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$AlreadyLogoutFailureCopyWith<$Res> implements $AlreadyLogoutFailureCopyWith<$Res> {
  factory _$AlreadyLogoutFailureCopyWith(_AlreadyLogoutFailure value, $Res Function(_AlreadyLogoutFailure) _then) = __$AlreadyLogoutFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$AlreadyLogoutFailureCopyWithImpl<$Res>
    implements _$AlreadyLogoutFailureCopyWith<$Res> {
  __$AlreadyLogoutFailureCopyWithImpl(this._self, this._then);

  final _AlreadyLogoutFailure _self;
  final $Res Function(_AlreadyLogoutFailure) _then;

/// Create a copy of AlreadyLogoutFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_AlreadyLogoutFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
