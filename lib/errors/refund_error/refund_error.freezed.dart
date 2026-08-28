// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RefundRejected {

 String get message;
/// Create a copy of RefundRejected
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundRejectedCopyWith<RefundRejected> get copyWith => _$RefundRejectedCopyWithImpl<RefundRejected>(this as RefundRejected, _$identity);

  /// Serializes this RefundRejected to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundRejected&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RefundRejected(message: $message)';
}


}

/// @nodoc
abstract mixin class $RefundRejectedCopyWith<$Res>  {
  factory $RefundRejectedCopyWith(RefundRejected value, $Res Function(RefundRejected) _then) = _$RefundRejectedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RefundRejectedCopyWithImpl<$Res>
    implements $RefundRejectedCopyWith<$Res> {
  _$RefundRejectedCopyWithImpl(this._self, this._then);

  final RefundRejected _self;
  final $Res Function(RefundRejected) _then;

/// Create a copy of RefundRejected
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundRejected].
extension RefundRejectedPatterns on RefundRejected {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundRejected value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundRejected() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundRejected value)  $default,){
final _that = this;
switch (_that) {
case _RefundRejected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundRejected value)?  $default,){
final _that = this;
switch (_that) {
case _RefundRejected() when $default != null:
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
case _RefundRejected() when $default != null:
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
case _RefundRejected():
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
case _RefundRejected() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundRejected extends RefundRejected {
  const _RefundRejected({required this.message}): super._();
  factory _RefundRejected.fromJson(Map<String, dynamic> json) => _$RefundRejectedFromJson(json);

@override final  String message;

/// Create a copy of RefundRejected
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundRejectedCopyWith<_RefundRejected> get copyWith => __$RefundRejectedCopyWithImpl<_RefundRejected>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundRejectedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundRejected&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RefundRejected(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RefundRejectedCopyWith<$Res> implements $RefundRejectedCopyWith<$Res> {
  factory _$RefundRejectedCopyWith(_RefundRejected value, $Res Function(_RefundRejected) _then) = __$RefundRejectedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RefundRejectedCopyWithImpl<$Res>
    implements _$RefundRejectedCopyWith<$Res> {
  __$RefundRejectedCopyWithImpl(this._self, this._then);

  final _RefundRejected _self;
  final $Res Function(_RefundRejected) _then;

/// Create a copy of RefundRejected
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RefundRejected(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RefundDeclined {

 List<TransactionReceipt> get receipts;
/// Create a copy of RefundDeclined
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundDeclinedCopyWith<RefundDeclined> get copyWith => _$RefundDeclinedCopyWithImpl<RefundDeclined>(this as RefundDeclined, _$identity);

  /// Serializes this RefundDeclined to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundDeclined&&const DeepCollectionEquality().equals(other.receipts, receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(receipts));

@override
String toString() {
  return 'RefundDeclined(receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class $RefundDeclinedCopyWith<$Res>  {
  factory $RefundDeclinedCopyWith(RefundDeclined value, $Res Function(RefundDeclined) _then) = _$RefundDeclinedCopyWithImpl;
@useResult
$Res call({
 List<TransactionReceipt> receipts
});




}
/// @nodoc
class _$RefundDeclinedCopyWithImpl<$Res>
    implements $RefundDeclinedCopyWith<$Res> {
  _$RefundDeclinedCopyWithImpl(this._self, this._then);

  final RefundDeclined _self;
  final $Res Function(RefundDeclined) _then;

/// Create a copy of RefundDeclined
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receipts = null,}) {
  return _then(_self.copyWith(
receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<TransactionReceipt>,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundDeclined].
extension RefundDeclinedPatterns on RefundDeclined {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundDeclined value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundDeclined() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundDeclined value)  $default,){
final _that = this;
switch (_that) {
case _RefundDeclined():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundDeclined value)?  $default,){
final _that = this;
switch (_that) {
case _RefundDeclined() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TransactionReceipt> receipts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RefundDeclined() when $default != null:
return $default(_that.receipts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TransactionReceipt> receipts)  $default,) {final _that = this;
switch (_that) {
case _RefundDeclined():
return $default(_that.receipts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TransactionReceipt> receipts)?  $default,) {final _that = this;
switch (_that) {
case _RefundDeclined() when $default != null:
return $default(_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundDeclined extends RefundDeclined {
  const _RefundDeclined({required final  List<TransactionReceipt> receipts}): _receipts = receipts,super._();
  factory _RefundDeclined.fromJson(Map<String, dynamic> json) => _$RefundDeclinedFromJson(json);

 final  List<TransactionReceipt> _receipts;
@override List<TransactionReceipt> get receipts {
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_receipts);
}


/// Create a copy of RefundDeclined
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundDeclinedCopyWith<_RefundDeclined> get copyWith => __$RefundDeclinedCopyWithImpl<_RefundDeclined>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundDeclinedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundDeclined&&const DeepCollectionEquality().equals(other._receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_receipts));

@override
String toString() {
  return 'RefundDeclined(receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$RefundDeclinedCopyWith<$Res> implements $RefundDeclinedCopyWith<$Res> {
  factory _$RefundDeclinedCopyWith(_RefundDeclined value, $Res Function(_RefundDeclined) _then) = __$RefundDeclinedCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionReceipt> receipts
});




}
/// @nodoc
class __$RefundDeclinedCopyWithImpl<$Res>
    implements _$RefundDeclinedCopyWith<$Res> {
  __$RefundDeclinedCopyWithImpl(this._self, this._then);

  final _RefundDeclined _self;
  final $Res Function(_RefundDeclined) _then;

/// Create a copy of RefundDeclined
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receipts = null,}) {
  return _then(_RefundDeclined(
receipts: null == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<TransactionReceipt>,
  ));
}


}


/// @nodoc
mixin _$RefundAuthenticationFailed {

 String get message;
/// Create a copy of RefundAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundAuthenticationFailedCopyWith<RefundAuthenticationFailed> get copyWith => _$RefundAuthenticationFailedCopyWithImpl<RefundAuthenticationFailed>(this as RefundAuthenticationFailed, _$identity);

  /// Serializes this RefundAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RefundAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $RefundAuthenticationFailedCopyWith<$Res>  {
  factory $RefundAuthenticationFailedCopyWith(RefundAuthenticationFailed value, $Res Function(RefundAuthenticationFailed) _then) = _$RefundAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$RefundAuthenticationFailedCopyWithImpl<$Res>
    implements $RefundAuthenticationFailedCopyWith<$Res> {
  _$RefundAuthenticationFailedCopyWithImpl(this._self, this._then);

  final RefundAuthenticationFailed _self;
  final $Res Function(RefundAuthenticationFailed) _then;

/// Create a copy of RefundAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundAuthenticationFailed].
extension RefundAuthenticationFailedPatterns on RefundAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _RefundAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _RefundAuthenticationFailed() when $default != null:
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
case _RefundAuthenticationFailed() when $default != null:
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
case _RefundAuthenticationFailed():
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
case _RefundAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundAuthenticationFailed extends RefundAuthenticationFailed {
  const _RefundAuthenticationFailed({required this.message}): super._();
  factory _RefundAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$RefundAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of RefundAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundAuthenticationFailedCopyWith<_RefundAuthenticationFailed> get copyWith => __$RefundAuthenticationFailedCopyWithImpl<_RefundAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'RefundAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$RefundAuthenticationFailedCopyWith<$Res> implements $RefundAuthenticationFailedCopyWith<$Res> {
  factory _$RefundAuthenticationFailedCopyWith(_RefundAuthenticationFailed value, $Res Function(_RefundAuthenticationFailed) _then) = __$RefundAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$RefundAuthenticationFailedCopyWithImpl<$Res>
    implements _$RefundAuthenticationFailedCopyWith<$Res> {
  __$RefundAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _RefundAuthenticationFailed _self;
  final $Res Function(_RefundAuthenticationFailed) _then;

/// Create a copy of RefundAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_RefundAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RefundInvalidStatus {

 dynamic get required;
/// Create a copy of RefundInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundInvalidStatusCopyWith<RefundInvalidStatus> get copyWith => _$RefundInvalidStatusCopyWithImpl<RefundInvalidStatus>(this as RefundInvalidStatus, _$identity);

  /// Serializes this RefundInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'RefundInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $RefundInvalidStatusCopyWith<$Res>  {
  factory $RefundInvalidStatusCopyWith(RefundInvalidStatus value, $Res Function(RefundInvalidStatus) _then) = _$RefundInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$RefundInvalidStatusCopyWithImpl<$Res>
    implements $RefundInvalidStatusCopyWith<$Res> {
  _$RefundInvalidStatusCopyWithImpl(this._self, this._then);

  final RefundInvalidStatus _self;
  final $Res Function(RefundInvalidStatus) _then;

/// Create a copy of RefundInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundInvalidStatus].
extension RefundInvalidStatusPatterns on RefundInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _RefundInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _RefundInvalidStatus() when $default != null:
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
case _RefundInvalidStatus() when $default != null:
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
case _RefundInvalidStatus():
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
case _RefundInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundInvalidStatus extends RefundInvalidStatus {
  const _RefundInvalidStatus({this.required}): super._();
  factory _RefundInvalidStatus.fromJson(Map<String, dynamic> json) => _$RefundInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of RefundInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundInvalidStatusCopyWith<_RefundInvalidStatus> get copyWith => __$RefundInvalidStatusCopyWithImpl<_RefundInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'RefundInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$RefundInvalidStatusCopyWith<$Res> implements $RefundInvalidStatusCopyWith<$Res> {
  factory _$RefundInvalidStatusCopyWith(_RefundInvalidStatus value, $Res Function(_RefundInvalidStatus) _then) = __$RefundInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$RefundInvalidStatusCopyWithImpl<$Res>
    implements _$RefundInvalidStatusCopyWith<$Res> {
  __$RefundInvalidStatusCopyWithImpl(this._self, this._then);

  final _RefundInvalidStatus _self;
  final $Res Function(_RefundInvalidStatus) _then;

/// Create a copy of RefundInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_RefundInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$RefundGeneralFailure {

 dynamic get required;
/// Create a copy of RefundGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefundGeneralFailureCopyWith<RefundGeneralFailure> get copyWith => _$RefundGeneralFailureCopyWithImpl<RefundGeneralFailure>(this as RefundGeneralFailure, _$identity);

  /// Serializes this RefundGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefundGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'RefundGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $RefundGeneralFailureCopyWith<$Res>  {
  factory $RefundGeneralFailureCopyWith(RefundGeneralFailure value, $Res Function(RefundGeneralFailure) _then) = _$RefundGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$RefundGeneralFailureCopyWithImpl<$Res>
    implements $RefundGeneralFailureCopyWith<$Res> {
  _$RefundGeneralFailureCopyWithImpl(this._self, this._then);

  final RefundGeneralFailure _self;
  final $Res Function(RefundGeneralFailure) _then;

/// Create a copy of RefundGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [RefundGeneralFailure].
extension RefundGeneralFailurePatterns on RefundGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RefundGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RefundGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RefundGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _RefundGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RefundGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _RefundGeneralFailure() when $default != null:
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
case _RefundGeneralFailure() when $default != null:
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
case _RefundGeneralFailure():
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
case _RefundGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RefundGeneralFailure extends RefundGeneralFailure {
  const _RefundGeneralFailure({this.required}): super._();
  factory _RefundGeneralFailure.fromJson(Map<String, dynamic> json) => _$RefundGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of RefundGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RefundGeneralFailureCopyWith<_RefundGeneralFailure> get copyWith => __$RefundGeneralFailureCopyWithImpl<_RefundGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RefundGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefundGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'RefundGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$RefundGeneralFailureCopyWith<$Res> implements $RefundGeneralFailureCopyWith<$Res> {
  factory _$RefundGeneralFailureCopyWith(_RefundGeneralFailure value, $Res Function(_RefundGeneralFailure) _then) = __$RefundGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$RefundGeneralFailureCopyWithImpl<$Res>
    implements _$RefundGeneralFailureCopyWith<$Res> {
  __$RefundGeneralFailureCopyWithImpl(this._self, this._then);

  final _RefundGeneralFailure _self;
  final $Res Function(_RefundGeneralFailure) _then;

/// Create a copy of RefundGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_RefundGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
