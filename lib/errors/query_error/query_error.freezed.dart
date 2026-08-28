// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QueryAuthenticationFailed {

 String get message;
/// Create a copy of QueryAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryAuthenticationFailedCopyWith<QueryAuthenticationFailed> get copyWith => _$QueryAuthenticationFailedCopyWithImpl<QueryAuthenticationFailed>(this as QueryAuthenticationFailed, _$identity);

  /// Serializes this QueryAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QueryAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $QueryAuthenticationFailedCopyWith<$Res>  {
  factory $QueryAuthenticationFailedCopyWith(QueryAuthenticationFailed value, $Res Function(QueryAuthenticationFailed) _then) = _$QueryAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QueryAuthenticationFailedCopyWithImpl<$Res>
    implements $QueryAuthenticationFailedCopyWith<$Res> {
  _$QueryAuthenticationFailedCopyWithImpl(this._self, this._then);

  final QueryAuthenticationFailed _self;
  final $Res Function(QueryAuthenticationFailed) _then;

/// Create a copy of QueryAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QueryAuthenticationFailed].
extension QueryAuthenticationFailedPatterns on QueryAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueryAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueryAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _QueryAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueryAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _QueryAuthenticationFailed() when $default != null:
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
case _QueryAuthenticationFailed() when $default != null:
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
case _QueryAuthenticationFailed():
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
case _QueryAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueryAuthenticationFailed extends QueryAuthenticationFailed {
  const _QueryAuthenticationFailed({required this.message}): super._();
  factory _QueryAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$QueryAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of QueryAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryAuthenticationFailedCopyWith<_QueryAuthenticationFailed> get copyWith => __$QueryAuthenticationFailedCopyWithImpl<_QueryAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueryAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QueryAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$QueryAuthenticationFailedCopyWith<$Res> implements $QueryAuthenticationFailedCopyWith<$Res> {
  factory _$QueryAuthenticationFailedCopyWith(_QueryAuthenticationFailed value, $Res Function(_QueryAuthenticationFailed) _then) = __$QueryAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$QueryAuthenticationFailedCopyWithImpl<$Res>
    implements _$QueryAuthenticationFailedCopyWith<$Res> {
  __$QueryAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _QueryAuthenticationFailed _self;
  final $Res Function(_QueryAuthenticationFailed) _then;

/// Create a copy of QueryAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_QueryAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QueryFailureMessage {

 String get message;
/// Create a copy of QueryFailureMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryFailureMessageCopyWith<QueryFailureMessage> get copyWith => _$QueryFailureMessageCopyWithImpl<QueryFailureMessage>(this as QueryFailureMessage, _$identity);

  /// Serializes this QueryFailureMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QueryFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class $QueryFailureMessageCopyWith<$Res>  {
  factory $QueryFailureMessageCopyWith(QueryFailureMessage value, $Res Function(QueryFailureMessage) _then) = _$QueryFailureMessageCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QueryFailureMessageCopyWithImpl<$Res>
    implements $QueryFailureMessageCopyWith<$Res> {
  _$QueryFailureMessageCopyWithImpl(this._self, this._then);

  final QueryFailureMessage _self;
  final $Res Function(QueryFailureMessage) _then;

/// Create a copy of QueryFailureMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QueryFailureMessage].
extension QueryFailureMessagePatterns on QueryFailureMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueryFailureMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryFailureMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueryFailureMessage value)  $default,){
final _that = this;
switch (_that) {
case _QueryFailureMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueryFailureMessage value)?  $default,){
final _that = this;
switch (_that) {
case _QueryFailureMessage() when $default != null:
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
case _QueryFailureMessage() when $default != null:
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
case _QueryFailureMessage():
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
case _QueryFailureMessage() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueryFailureMessage extends QueryFailureMessage {
  const _QueryFailureMessage({required this.message}): super._();
  factory _QueryFailureMessage.fromJson(Map<String, dynamic> json) => _$QueryFailureMessageFromJson(json);

@override final  String message;

/// Create a copy of QueryFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryFailureMessageCopyWith<_QueryFailureMessage> get copyWith => __$QueryFailureMessageCopyWithImpl<_QueryFailureMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueryFailureMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryFailureMessage&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'QueryFailureMessage(message: $message)';
}


}

/// @nodoc
abstract mixin class _$QueryFailureMessageCopyWith<$Res> implements $QueryFailureMessageCopyWith<$Res> {
  factory _$QueryFailureMessageCopyWith(_QueryFailureMessage value, $Res Function(_QueryFailureMessage) _then) = __$QueryFailureMessageCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$QueryFailureMessageCopyWithImpl<$Res>
    implements _$QueryFailureMessageCopyWith<$Res> {
  __$QueryFailureMessageCopyWithImpl(this._self, this._then);

  final _QueryFailureMessage _self;
  final $Res Function(_QueryFailureMessage) _then;

/// Create a copy of QueryFailureMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_QueryFailureMessage(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QueryInvalidStatus {

 dynamic get required;
/// Create a copy of QueryInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryInvalidStatusCopyWith<QueryInvalidStatus> get copyWith => _$QueryInvalidStatusCopyWithImpl<QueryInvalidStatus>(this as QueryInvalidStatus, _$identity);

  /// Serializes this QueryInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'QueryInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $QueryInvalidStatusCopyWith<$Res>  {
  factory $QueryInvalidStatusCopyWith(QueryInvalidStatus value, $Res Function(QueryInvalidStatus) _then) = _$QueryInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$QueryInvalidStatusCopyWithImpl<$Res>
    implements $QueryInvalidStatusCopyWith<$Res> {
  _$QueryInvalidStatusCopyWithImpl(this._self, this._then);

  final QueryInvalidStatus _self;
  final $Res Function(QueryInvalidStatus) _then;

/// Create a copy of QueryInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [QueryInvalidStatus].
extension QueryInvalidStatusPatterns on QueryInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueryInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueryInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _QueryInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueryInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _QueryInvalidStatus() when $default != null:
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
case _QueryInvalidStatus() when $default != null:
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
case _QueryInvalidStatus():
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
case _QueryInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueryInvalidStatus extends QueryInvalidStatus {
  const _QueryInvalidStatus({this.required}): super._();
  factory _QueryInvalidStatus.fromJson(Map<String, dynamic> json) => _$QueryInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of QueryInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryInvalidStatusCopyWith<_QueryInvalidStatus> get copyWith => __$QueryInvalidStatusCopyWithImpl<_QueryInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueryInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'QueryInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$QueryInvalidStatusCopyWith<$Res> implements $QueryInvalidStatusCopyWith<$Res> {
  factory _$QueryInvalidStatusCopyWith(_QueryInvalidStatus value, $Res Function(_QueryInvalidStatus) _then) = __$QueryInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$QueryInvalidStatusCopyWithImpl<$Res>
    implements _$QueryInvalidStatusCopyWith<$Res> {
  __$QueryInvalidStatusCopyWithImpl(this._self, this._then);

  final _QueryInvalidStatus _self;
  final $Res Function(_QueryInvalidStatus) _then;

/// Create a copy of QueryInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_QueryInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$QueryGeneralFailure {

 dynamic get required;
/// Create a copy of QueryGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryGeneralFailureCopyWith<QueryGeneralFailure> get copyWith => _$QueryGeneralFailureCopyWithImpl<QueryGeneralFailure>(this as QueryGeneralFailure, _$identity);

  /// Serializes this QueryGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'QueryGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $QueryGeneralFailureCopyWith<$Res>  {
  factory $QueryGeneralFailureCopyWith(QueryGeneralFailure value, $Res Function(QueryGeneralFailure) _then) = _$QueryGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$QueryGeneralFailureCopyWithImpl<$Res>
    implements $QueryGeneralFailureCopyWith<$Res> {
  _$QueryGeneralFailureCopyWithImpl(this._self, this._then);

  final QueryGeneralFailure _self;
  final $Res Function(QueryGeneralFailure) _then;

/// Create a copy of QueryGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [QueryGeneralFailure].
extension QueryGeneralFailurePatterns on QueryGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QueryGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QueryGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QueryGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _QueryGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QueryGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _QueryGeneralFailure() when $default != null:
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
case _QueryGeneralFailure() when $default != null:
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
case _QueryGeneralFailure():
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
case _QueryGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QueryGeneralFailure extends QueryGeneralFailure {
  const _QueryGeneralFailure({this.required}): super._();
  factory _QueryGeneralFailure.fromJson(Map<String, dynamic> json) => _$QueryGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of QueryGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QueryGeneralFailureCopyWith<_QueryGeneralFailure> get copyWith => __$QueryGeneralFailureCopyWithImpl<_QueryGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QueryGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QueryGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'QueryGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$QueryGeneralFailureCopyWith<$Res> implements $QueryGeneralFailureCopyWith<$Res> {
  factory _$QueryGeneralFailureCopyWith(_QueryGeneralFailure value, $Res Function(_QueryGeneralFailure) _then) = __$QueryGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$QueryGeneralFailureCopyWithImpl<$Res>
    implements _$QueryGeneralFailureCopyWith<$Res> {
  __$QueryGeneralFailureCopyWithImpl(this._self, this._then);

  final _QueryGeneralFailure _self;
  final $Res Function(_QueryGeneralFailure) _then;

/// Create a copy of QueryGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_QueryGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
