// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reversal_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReversalFailureMessage {

 String get message;
/// Create a copy of ReversalFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReversalFailureMessageCopyWith<ReversalFailureMessage> get copyWith => _$ReversalFailureMessageCopyWithImpl<ReversalFailureMessage>(this as ReversalFailureMessage, _$identity);

  /// Serializes this ReversalFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReversalFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReversalFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReversalFailureMessageCopyWith<$Res>  {
  factory $ReversalFailureMessageCopyWith(ReversalFailureMessage value, $Res Function(ReversalFailureMessage) _then) = _$ReversalFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReversalFailureMessageCopyWithImpl<$Res>
    implements $ReversalFailureMessageCopyWith<$Res> {
  _$ReversalFailureMessageCopyWithImpl(this._self, this._then);

  final ReversalFailureMessage _self;
  final $Res Function(ReversalFailureMessage) _then;

/// Create a copy of ReversalFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReversalFailureMessage].
extension ReversalFailureMessagePatterns on ReversalFailureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReversalFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReversalFailureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReversalFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _ReversalFailureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReversalFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ReversalFailureMessage() when $default != null:
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
case _ReversalFailureMessage() when $default != null:
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
case _ReversalFailureMessage():
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
case _ReversalFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReversalFailureMessage extends ReversalFailureMessage {
  const _ReversalFailureMessage({required this.message}): super._();
  factory _ReversalFailureMessage.fromJson(Map<String, dynamic> json) => _$ReversalFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of ReversalFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReversalFailureMessageCopyWith<_ReversalFailureMessage> get copyWith => __$ReversalFailureMessageCopyWithImpl<_ReversalFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReversalFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReversalFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReversalFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReversalFailureMessageCopyWith<$Res> implements $ReversalFailureMessageCopyWith<$Res> {
  factory _$ReversalFailureMessageCopyWith(_ReversalFailureMessage value, $Res Function(_ReversalFailureMessage) _then) = __$ReversalFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReversalFailureMessageCopyWithImpl<$Res>
    implements _$ReversalFailureMessageCopyWith<$Res> {
  __$ReversalFailureMessageCopyWithImpl(this._self, this._then);

  final _ReversalFailureMessage _self;
  final $Res Function(_ReversalFailureMessage) _then;

/// Create a copy of ReversalFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReversalFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReversalAuthenticationFailed {

 String get message;
/// Create a copy of ReversalAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReversalAuthenticationFailedCopyWith<ReversalAuthenticationFailed> get copyWith => _$ReversalAuthenticationFailedCopyWithImpl<ReversalAuthenticationFailed>(this as ReversalAuthenticationFailed, _$identity);

  /// Serializes this ReversalAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReversalAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReversalAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReversalAuthenticationFailedCopyWith<$Res>  {
  factory $ReversalAuthenticationFailedCopyWith(ReversalAuthenticationFailed value, $Res Function(ReversalAuthenticationFailed) _then) = _$ReversalAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReversalAuthenticationFailedCopyWithImpl<$Res>
    implements $ReversalAuthenticationFailedCopyWith<$Res> {
  _$ReversalAuthenticationFailedCopyWithImpl(this._self, this._then);

  final ReversalAuthenticationFailed _self;
  final $Res Function(ReversalAuthenticationFailed) _then;

/// Create a copy of ReversalAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReversalAuthenticationFailed].
extension ReversalAuthenticationFailedPatterns on ReversalAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReversalAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReversalAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReversalAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _ReversalAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReversalAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _ReversalAuthenticationFailed() when $default != null:
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
case _ReversalAuthenticationFailed() when $default != null:
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
case _ReversalAuthenticationFailed():
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
case _ReversalAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReversalAuthenticationFailed extends ReversalAuthenticationFailed {
  const _ReversalAuthenticationFailed({required this.message}): super._();
  factory _ReversalAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$ReversalAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of ReversalAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReversalAuthenticationFailedCopyWith<_ReversalAuthenticationFailed> get copyWith => __$ReversalAuthenticationFailedCopyWithImpl<_ReversalAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReversalAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReversalAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReversalAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReversalAuthenticationFailedCopyWith<$Res> implements $ReversalAuthenticationFailedCopyWith<$Res> {
  factory _$ReversalAuthenticationFailedCopyWith(_ReversalAuthenticationFailed value, $Res Function(_ReversalAuthenticationFailed) _then) = __$ReversalAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReversalAuthenticationFailedCopyWithImpl<$Res>
    implements _$ReversalAuthenticationFailedCopyWith<$Res> {
  __$ReversalAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _ReversalAuthenticationFailed _self;
  final $Res Function(_ReversalAuthenticationFailed) _then;

/// Create a copy of ReversalAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReversalAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReversalInvalidStatus {

 dynamic get required;
/// Create a copy of ReversalInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReversalInvalidStatusCopyWith<ReversalInvalidStatus> get copyWith => _$ReversalInvalidStatusCopyWithImpl<ReversalInvalidStatus>(this as ReversalInvalidStatus, _$identity);

  /// Serializes this ReversalInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReversalInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReversalInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $ReversalInvalidStatusCopyWith<$Res>  {
  factory $ReversalInvalidStatusCopyWith(ReversalInvalidStatus value, $Res Function(ReversalInvalidStatus) _then) = _$ReversalInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$ReversalInvalidStatusCopyWithImpl<$Res>
    implements $ReversalInvalidStatusCopyWith<$Res> {
  _$ReversalInvalidStatusCopyWithImpl(this._self, this._then);

  final ReversalInvalidStatus _self;
  final $Res Function(ReversalInvalidStatus) _then;

/// Create a copy of ReversalInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ReversalInvalidStatus].
extension ReversalInvalidStatusPatterns on ReversalInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReversalInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReversalInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReversalInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _ReversalInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReversalInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ReversalInvalidStatus() when $default != null:
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
case _ReversalInvalidStatus() when $default != null:
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
case _ReversalInvalidStatus():
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
case _ReversalInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReversalInvalidStatus extends ReversalInvalidStatus {
  const _ReversalInvalidStatus({this.required}): super._();
  factory _ReversalInvalidStatus.fromJson(Map<String, dynamic> json) => _$ReversalInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of ReversalInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReversalInvalidStatusCopyWith<_ReversalInvalidStatus> get copyWith => __$ReversalInvalidStatusCopyWithImpl<_ReversalInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReversalInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReversalInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReversalInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$ReversalInvalidStatusCopyWith<$Res> implements $ReversalInvalidStatusCopyWith<$Res> {
  factory _$ReversalInvalidStatusCopyWith(_ReversalInvalidStatus value, $Res Function(_ReversalInvalidStatus) _then) = __$ReversalInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$ReversalInvalidStatusCopyWithImpl<$Res>
    implements _$ReversalInvalidStatusCopyWith<$Res> {
  __$ReversalInvalidStatusCopyWithImpl(this._self, this._then);

  final _ReversalInvalidStatus _self;
  final $Res Function(_ReversalInvalidStatus) _then;

/// Create a copy of ReversalInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_ReversalInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ReversalGeneralFailure {

 dynamic get required;
/// Create a copy of ReversalGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReversalGeneralFailureCopyWith<ReversalGeneralFailure> get copyWith => _$ReversalGeneralFailureCopyWithImpl<ReversalGeneralFailure>(this as ReversalGeneralFailure, _$identity);

  /// Serializes this ReversalGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReversalGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReversalGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $ReversalGeneralFailureCopyWith<$Res>  {
  factory $ReversalGeneralFailureCopyWith(ReversalGeneralFailure value, $Res Function(ReversalGeneralFailure) _then) = _$ReversalGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$ReversalGeneralFailureCopyWithImpl<$Res>
    implements $ReversalGeneralFailureCopyWith<$Res> {
  _$ReversalGeneralFailureCopyWithImpl(this._self, this._then);

  final ReversalGeneralFailure _self;
  final $Res Function(ReversalGeneralFailure) _then;

/// Create a copy of ReversalGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ReversalGeneralFailure].
extension ReversalGeneralFailurePatterns on ReversalGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReversalGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReversalGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReversalGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _ReversalGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReversalGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _ReversalGeneralFailure() when $default != null:
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
case _ReversalGeneralFailure() when $default != null:
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
case _ReversalGeneralFailure():
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
case _ReversalGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReversalGeneralFailure extends ReversalGeneralFailure {
  const _ReversalGeneralFailure({this.required}): super._();
  factory _ReversalGeneralFailure.fromJson(Map<String, dynamic> json) => _$ReversalGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of ReversalGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReversalGeneralFailureCopyWith<_ReversalGeneralFailure> get copyWith => __$ReversalGeneralFailureCopyWithImpl<_ReversalGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReversalGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReversalGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReversalGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$ReversalGeneralFailureCopyWith<$Res> implements $ReversalGeneralFailureCopyWith<$Res> {
  factory _$ReversalGeneralFailureCopyWith(_ReversalGeneralFailure value, $Res Function(_ReversalGeneralFailure) _then) = __$ReversalGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$ReversalGeneralFailureCopyWithImpl<$Res>
    implements _$ReversalGeneralFailureCopyWith<$Res> {
  __$ReversalGeneralFailureCopyWithImpl(this._self, this._then);

  final _ReversalGeneralFailure _self;
  final $Res Function(_ReversalGeneralFailure) _then;

/// Create a copy of ReversalGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_ReversalGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
