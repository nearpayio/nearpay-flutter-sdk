// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reconcile_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReconcileFailureMessage {

 String get message;
/// Create a copy of ReconcileFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconcileFailureMessageCopyWith<ReconcileFailureMessage> get copyWith => _$ReconcileFailureMessageCopyWithImpl<ReconcileFailureMessage>(this as ReconcileFailureMessage, _$identity);

  /// Serializes this ReconcileFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconcileFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReconcileFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReconcileFailureMessageCopyWith<$Res>  {
  factory $ReconcileFailureMessageCopyWith(ReconcileFailureMessage value, $Res Function(ReconcileFailureMessage) _then) = _$ReconcileFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReconcileFailureMessageCopyWithImpl<$Res>
    implements $ReconcileFailureMessageCopyWith<$Res> {
  _$ReconcileFailureMessageCopyWithImpl(this._self, this._then);

  final ReconcileFailureMessage _self;
  final $Res Function(ReconcileFailureMessage) _then;

/// Create a copy of ReconcileFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconcileFailureMessage].
extension ReconcileFailureMessagePatterns on ReconcileFailureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconcileFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconcileFailureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconcileFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _ReconcileFailureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconcileFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ReconcileFailureMessage() when $default != null:
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
case _ReconcileFailureMessage() when $default != null:
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
case _ReconcileFailureMessage():
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
case _ReconcileFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconcileFailureMessage extends ReconcileFailureMessage {
  const _ReconcileFailureMessage({required this.message}): super._();
  factory _ReconcileFailureMessage.fromJson(Map<String, dynamic> json) => _$ReconcileFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of ReconcileFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconcileFailureMessageCopyWith<_ReconcileFailureMessage> get copyWith => __$ReconcileFailureMessageCopyWithImpl<_ReconcileFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconcileFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconcileFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReconcileFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReconcileFailureMessageCopyWith<$Res> implements $ReconcileFailureMessageCopyWith<$Res> {
  factory _$ReconcileFailureMessageCopyWith(_ReconcileFailureMessage value, $Res Function(_ReconcileFailureMessage) _then) = __$ReconcileFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReconcileFailureMessageCopyWithImpl<$Res>
    implements _$ReconcileFailureMessageCopyWith<$Res> {
  __$ReconcileFailureMessageCopyWithImpl(this._self, this._then);

  final _ReconcileFailureMessage _self;
  final $Res Function(_ReconcileFailureMessage) _then;

/// Create a copy of ReconcileFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReconcileFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReconcileAuthenticationFailed {

 String get message;
/// Create a copy of ReconcileAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconcileAuthenticationFailedCopyWith<ReconcileAuthenticationFailed> get copyWith => _$ReconcileAuthenticationFailedCopyWithImpl<ReconcileAuthenticationFailed>(this as ReconcileAuthenticationFailed, _$identity);

  /// Serializes this ReconcileAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconcileAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReconcileAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $ReconcileAuthenticationFailedCopyWith<$Res>  {
  factory $ReconcileAuthenticationFailedCopyWith(ReconcileAuthenticationFailed value, $Res Function(ReconcileAuthenticationFailed) _then) = _$ReconcileAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ReconcileAuthenticationFailedCopyWithImpl<$Res>
    implements $ReconcileAuthenticationFailedCopyWith<$Res> {
  _$ReconcileAuthenticationFailedCopyWithImpl(this._self, this._then);

  final ReconcileAuthenticationFailed _self;
  final $Res Function(ReconcileAuthenticationFailed) _then;

/// Create a copy of ReconcileAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconcileAuthenticationFailed].
extension ReconcileAuthenticationFailedPatterns on ReconcileAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconcileAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconcileAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconcileAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _ReconcileAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconcileAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _ReconcileAuthenticationFailed() when $default != null:
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
case _ReconcileAuthenticationFailed() when $default != null:
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
case _ReconcileAuthenticationFailed():
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
case _ReconcileAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconcileAuthenticationFailed extends ReconcileAuthenticationFailed {
  const _ReconcileAuthenticationFailed({required this.message}): super._();
  factory _ReconcileAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$ReconcileAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of ReconcileAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconcileAuthenticationFailedCopyWith<_ReconcileAuthenticationFailed> get copyWith => __$ReconcileAuthenticationFailedCopyWithImpl<_ReconcileAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconcileAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconcileAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ReconcileAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ReconcileAuthenticationFailedCopyWith<$Res> implements $ReconcileAuthenticationFailedCopyWith<$Res> {
  factory _$ReconcileAuthenticationFailedCopyWith(_ReconcileAuthenticationFailed value, $Res Function(_ReconcileAuthenticationFailed) _then) = __$ReconcileAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ReconcileAuthenticationFailedCopyWithImpl<$Res>
    implements _$ReconcileAuthenticationFailedCopyWith<$Res> {
  __$ReconcileAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _ReconcileAuthenticationFailed _self;
  final $Res Function(_ReconcileAuthenticationFailed) _then;

/// Create a copy of ReconcileAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ReconcileAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ReconcileInvalidStatus {

 dynamic get required;
/// Create a copy of ReconcileInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconcileInvalidStatusCopyWith<ReconcileInvalidStatus> get copyWith => _$ReconcileInvalidStatusCopyWithImpl<ReconcileInvalidStatus>(this as ReconcileInvalidStatus, _$identity);

  /// Serializes this ReconcileInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconcileInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReconcileInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $ReconcileInvalidStatusCopyWith<$Res>  {
  factory $ReconcileInvalidStatusCopyWith(ReconcileInvalidStatus value, $Res Function(ReconcileInvalidStatus) _then) = _$ReconcileInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$ReconcileInvalidStatusCopyWithImpl<$Res>
    implements $ReconcileInvalidStatusCopyWith<$Res> {
  _$ReconcileInvalidStatusCopyWithImpl(this._self, this._then);

  final ReconcileInvalidStatus _self;
  final $Res Function(ReconcileInvalidStatus) _then;

/// Create a copy of ReconcileInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconcileInvalidStatus].
extension ReconcileInvalidStatusPatterns on ReconcileInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconcileInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconcileInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconcileInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _ReconcileInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconcileInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ReconcileInvalidStatus() when $default != null:
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
case _ReconcileInvalidStatus() when $default != null:
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
case _ReconcileInvalidStatus():
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
case _ReconcileInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconcileInvalidStatus extends ReconcileInvalidStatus {
  const _ReconcileInvalidStatus({this.required}): super._();
  factory _ReconcileInvalidStatus.fromJson(Map<String, dynamic> json) => _$ReconcileInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of ReconcileInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconcileInvalidStatusCopyWith<_ReconcileInvalidStatus> get copyWith => __$ReconcileInvalidStatusCopyWithImpl<_ReconcileInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconcileInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconcileInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReconcileInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$ReconcileInvalidStatusCopyWith<$Res> implements $ReconcileInvalidStatusCopyWith<$Res> {
  factory _$ReconcileInvalidStatusCopyWith(_ReconcileInvalidStatus value, $Res Function(_ReconcileInvalidStatus) _then) = __$ReconcileInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$ReconcileInvalidStatusCopyWithImpl<$Res>
    implements _$ReconcileInvalidStatusCopyWith<$Res> {
  __$ReconcileInvalidStatusCopyWithImpl(this._self, this._then);

  final _ReconcileInvalidStatus _self;
  final $Res Function(_ReconcileInvalidStatus) _then;

/// Create a copy of ReconcileInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_ReconcileInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$ReconcileGeneralFailure {

 dynamic get required;
/// Create a copy of ReconcileGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReconcileGeneralFailureCopyWith<ReconcileGeneralFailure> get copyWith => _$ReconcileGeneralFailureCopyWithImpl<ReconcileGeneralFailure>(this as ReconcileGeneralFailure, _$identity);

  /// Serializes this ReconcileGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReconcileGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReconcileGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $ReconcileGeneralFailureCopyWith<$Res>  {
  factory $ReconcileGeneralFailureCopyWith(ReconcileGeneralFailure value, $Res Function(ReconcileGeneralFailure) _then) = _$ReconcileGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$ReconcileGeneralFailureCopyWithImpl<$Res>
    implements $ReconcileGeneralFailureCopyWith<$Res> {
  _$ReconcileGeneralFailureCopyWithImpl(this._self, this._then);

  final ReconcileGeneralFailure _self;
  final $Res Function(ReconcileGeneralFailure) _then;

/// Create a copy of ReconcileGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ReconcileGeneralFailure].
extension ReconcileGeneralFailurePatterns on ReconcileGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReconcileGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReconcileGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReconcileGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _ReconcileGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReconcileGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _ReconcileGeneralFailure() when $default != null:
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
case _ReconcileGeneralFailure() when $default != null:
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
case _ReconcileGeneralFailure():
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
case _ReconcileGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReconcileGeneralFailure extends ReconcileGeneralFailure {
  const _ReconcileGeneralFailure({this.required}): super._();
  factory _ReconcileGeneralFailure.fromJson(Map<String, dynamic> json) => _$ReconcileGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of ReconcileGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReconcileGeneralFailureCopyWith<_ReconcileGeneralFailure> get copyWith => __$ReconcileGeneralFailureCopyWithImpl<_ReconcileGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReconcileGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReconcileGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'ReconcileGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$ReconcileGeneralFailureCopyWith<$Res> implements $ReconcileGeneralFailureCopyWith<$Res> {
  factory _$ReconcileGeneralFailureCopyWith(_ReconcileGeneralFailure value, $Res Function(_ReconcileGeneralFailure) _then) = __$ReconcileGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$ReconcileGeneralFailureCopyWithImpl<$Res>
    implements _$ReconcileGeneralFailureCopyWith<$Res> {
  __$ReconcileGeneralFailureCopyWithImpl(this._self, this._then);

  final _ReconcileGeneralFailure _self;
  final $Res Function(_ReconcileGeneralFailure) _then;

/// Create a copy of ReconcileGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_ReconcileGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
