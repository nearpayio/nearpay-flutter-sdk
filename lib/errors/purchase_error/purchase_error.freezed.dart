// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseRejected {

 String get message;
/// Create a copy of PurchaseRejected
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseRejectedCopyWith<PurchaseRejected> get copyWith => _$PurchaseRejectedCopyWithImpl<PurchaseRejected>(this as PurchaseRejected, _$identity);

  /// Serializes this PurchaseRejected to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseRejected&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseRejected(message: $message)';
}


}

/// @nodoc
abstract mixin class $PurchaseRejectedCopyWith<$Res>  {
  factory $PurchaseRejectedCopyWith(PurchaseRejected value, $Res Function(PurchaseRejected) _then) = _$PurchaseRejectedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PurchaseRejectedCopyWithImpl<$Res>
    implements $PurchaseRejectedCopyWith<$Res> {
  _$PurchaseRejectedCopyWithImpl(this._self, this._then);

  final PurchaseRejected _self;
  final $Res Function(PurchaseRejected) _then;

/// Create a copy of PurchaseRejected
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseRejected].
extension PurchaseRejectedPatterns on PurchaseRejected {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseRejected value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseRejected() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseRejected value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseRejected():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseRejected value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseRejected() when $default != null:
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
case _PurchaseRejected() when $default != null:
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
case _PurchaseRejected():
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
case _PurchaseRejected() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseRejected extends PurchaseRejected {
  const _PurchaseRejected({required this.message}): super._();
  factory _PurchaseRejected.fromJson(Map<String, dynamic> json) => _$PurchaseRejectedFromJson(json);

@override final  String message;

/// Create a copy of PurchaseRejected
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseRejectedCopyWith<_PurchaseRejected> get copyWith => __$PurchaseRejectedCopyWithImpl<_PurchaseRejected>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseRejectedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseRejected&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseRejected(message: $message)';
}


}

/// @nodoc
abstract mixin class _$PurchaseRejectedCopyWith<$Res> implements $PurchaseRejectedCopyWith<$Res> {
  factory _$PurchaseRejectedCopyWith(_PurchaseRejected value, $Res Function(_PurchaseRejected) _then) = __$PurchaseRejectedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$PurchaseRejectedCopyWithImpl<$Res>
    implements _$PurchaseRejectedCopyWith<$Res> {
  __$PurchaseRejectedCopyWithImpl(this._self, this._then);

  final _PurchaseRejected _self;
  final $Res Function(_PurchaseRejected) _then;

/// Create a copy of PurchaseRejected
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_PurchaseRejected(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PurchaseDeclined {

 List<TransactionReceipt> get receipts;
/// Create a copy of PurchaseDeclined
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseDeclinedCopyWith<PurchaseDeclined> get copyWith => _$PurchaseDeclinedCopyWithImpl<PurchaseDeclined>(this as PurchaseDeclined, _$identity);

  /// Serializes this PurchaseDeclined to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseDeclined&&const DeepCollectionEquality().equals(other.receipts, receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(receipts));

@override
String toString() {
  return 'PurchaseDeclined(receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class $PurchaseDeclinedCopyWith<$Res>  {
  factory $PurchaseDeclinedCopyWith(PurchaseDeclined value, $Res Function(PurchaseDeclined) _then) = _$PurchaseDeclinedCopyWithImpl;
@useResult
$Res call({
 List<TransactionReceipt> receipts
});




}
/// @nodoc
class _$PurchaseDeclinedCopyWithImpl<$Res>
    implements $PurchaseDeclinedCopyWith<$Res> {
  _$PurchaseDeclinedCopyWithImpl(this._self, this._then);

  final PurchaseDeclined _self;
  final $Res Function(PurchaseDeclined) _then;

/// Create a copy of PurchaseDeclined
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? receipts = null,}) {
  return _then(_self.copyWith(
receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<TransactionReceipt>,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseDeclined].
extension PurchaseDeclinedPatterns on PurchaseDeclined {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseDeclined value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseDeclined() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseDeclined value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseDeclined():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseDeclined value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseDeclined() when $default != null:
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
case _PurchaseDeclined() when $default != null:
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
case _PurchaseDeclined():
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
case _PurchaseDeclined() when $default != null:
return $default(_that.receipts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseDeclined extends PurchaseDeclined {
  const _PurchaseDeclined({required final  List<TransactionReceipt> receipts}): _receipts = receipts,super._();
  factory _PurchaseDeclined.fromJson(Map<String, dynamic> json) => _$PurchaseDeclinedFromJson(json);

 final  List<TransactionReceipt> _receipts;
@override List<TransactionReceipt> get receipts {
  if (_receipts is EqualUnmodifiableListView) return _receipts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_receipts);
}


/// Create a copy of PurchaseDeclined
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseDeclinedCopyWith<_PurchaseDeclined> get copyWith => __$PurchaseDeclinedCopyWithImpl<_PurchaseDeclined>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseDeclinedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseDeclined&&const DeepCollectionEquality().equals(other._receipts, _receipts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_receipts));

@override
String toString() {
  return 'PurchaseDeclined(receipts: $receipts)';
}


}

/// @nodoc
abstract mixin class _$PurchaseDeclinedCopyWith<$Res> implements $PurchaseDeclinedCopyWith<$Res> {
  factory _$PurchaseDeclinedCopyWith(_PurchaseDeclined value, $Res Function(_PurchaseDeclined) _then) = __$PurchaseDeclinedCopyWithImpl;
@override @useResult
$Res call({
 List<TransactionReceipt> receipts
});




}
/// @nodoc
class __$PurchaseDeclinedCopyWithImpl<$Res>
    implements _$PurchaseDeclinedCopyWith<$Res> {
  __$PurchaseDeclinedCopyWithImpl(this._self, this._then);

  final _PurchaseDeclined _self;
  final $Res Function(_PurchaseDeclined) _then;

/// Create a copy of PurchaseDeclined
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? receipts = null,}) {
  return _then(_PurchaseDeclined(
receipts: null == receipts ? _self._receipts : receipts // ignore: cast_nullable_to_non_nullable
as List<TransactionReceipt>,
  ));
}


}


/// @nodoc
mixin _$PurchaseAuthenticationFailed {

 String get message;
/// Create a copy of PurchaseAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseAuthenticationFailedCopyWith<PurchaseAuthenticationFailed> get copyWith => _$PurchaseAuthenticationFailedCopyWithImpl<PurchaseAuthenticationFailed>(this as PurchaseAuthenticationFailed, _$identity);

  /// Serializes this PurchaseAuthenticationFailed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class $PurchaseAuthenticationFailedCopyWith<$Res>  {
  factory $PurchaseAuthenticationFailedCopyWith(PurchaseAuthenticationFailed value, $Res Function(PurchaseAuthenticationFailed) _then) = _$PurchaseAuthenticationFailedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PurchaseAuthenticationFailedCopyWithImpl<$Res>
    implements $PurchaseAuthenticationFailedCopyWith<$Res> {
  _$PurchaseAuthenticationFailedCopyWithImpl(this._self, this._then);

  final PurchaseAuthenticationFailed _self;
  final $Res Function(PurchaseAuthenticationFailed) _then;

/// Create a copy of PurchaseAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseAuthenticationFailed].
extension PurchaseAuthenticationFailedPatterns on PurchaseAuthenticationFailed {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseAuthenticationFailed value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseAuthenticationFailed() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseAuthenticationFailed value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseAuthenticationFailed():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseAuthenticationFailed value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseAuthenticationFailed() when $default != null:
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
case _PurchaseAuthenticationFailed() when $default != null:
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
case _PurchaseAuthenticationFailed():
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
case _PurchaseAuthenticationFailed() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseAuthenticationFailed extends PurchaseAuthenticationFailed {
  const _PurchaseAuthenticationFailed({required this.message}): super._();
  factory _PurchaseAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$PurchaseAuthenticationFailedFromJson(json);

@override final  String message;

/// Create a copy of PurchaseAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseAuthenticationFailedCopyWith<_PurchaseAuthenticationFailed> get copyWith => __$PurchaseAuthenticationFailedCopyWithImpl<_PurchaseAuthenticationFailed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseAuthenticationFailedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseAuthenticationFailed&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PurchaseAuthenticationFailed(message: $message)';
}


}

/// @nodoc
abstract mixin class _$PurchaseAuthenticationFailedCopyWith<$Res> implements $PurchaseAuthenticationFailedCopyWith<$Res> {
  factory _$PurchaseAuthenticationFailedCopyWith(_PurchaseAuthenticationFailed value, $Res Function(_PurchaseAuthenticationFailed) _then) = __$PurchaseAuthenticationFailedCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$PurchaseAuthenticationFailedCopyWithImpl<$Res>
    implements _$PurchaseAuthenticationFailedCopyWith<$Res> {
  __$PurchaseAuthenticationFailedCopyWithImpl(this._self, this._then);

  final _PurchaseAuthenticationFailed _self;
  final $Res Function(_PurchaseAuthenticationFailed) _then;

/// Create a copy of PurchaseAuthenticationFailed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_PurchaseAuthenticationFailed(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PurchaseInvalidStatus {

 dynamic get required;
/// Create a copy of PurchaseInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseInvalidStatusCopyWith<PurchaseInvalidStatus> get copyWith => _$PurchaseInvalidStatusCopyWithImpl<PurchaseInvalidStatus>(this as PurchaseInvalidStatus, _$identity);

  /// Serializes this PurchaseInvalidStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'PurchaseInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class $PurchaseInvalidStatusCopyWith<$Res>  {
  factory $PurchaseInvalidStatusCopyWith(PurchaseInvalidStatus value, $Res Function(PurchaseInvalidStatus) _then) = _$PurchaseInvalidStatusCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$PurchaseInvalidStatusCopyWithImpl<$Res>
    implements $PurchaseInvalidStatusCopyWith<$Res> {
  _$PurchaseInvalidStatusCopyWithImpl(this._self, this._then);

  final PurchaseInvalidStatus _self;
  final $Res Function(PurchaseInvalidStatus) _then;

/// Create a copy of PurchaseInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseInvalidStatus].
extension PurchaseInvalidStatusPatterns on PurchaseInvalidStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseInvalidStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseInvalidStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseInvalidStatus value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseInvalidStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseInvalidStatus value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseInvalidStatus() when $default != null:
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
case _PurchaseInvalidStatus() when $default != null:
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
case _PurchaseInvalidStatus():
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
case _PurchaseInvalidStatus() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseInvalidStatus extends PurchaseInvalidStatus {
  const _PurchaseInvalidStatus({this.required}): super._();
  factory _PurchaseInvalidStatus.fromJson(Map<String, dynamic> json) => _$PurchaseInvalidStatusFromJson(json);

@override final  dynamic required;

/// Create a copy of PurchaseInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseInvalidStatusCopyWith<_PurchaseInvalidStatus> get copyWith => __$PurchaseInvalidStatusCopyWithImpl<_PurchaseInvalidStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseInvalidStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseInvalidStatus&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'PurchaseInvalidStatus(required: $required)';
}


}

/// @nodoc
abstract mixin class _$PurchaseInvalidStatusCopyWith<$Res> implements $PurchaseInvalidStatusCopyWith<$Res> {
  factory _$PurchaseInvalidStatusCopyWith(_PurchaseInvalidStatus value, $Res Function(_PurchaseInvalidStatus) _then) = __$PurchaseInvalidStatusCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$PurchaseInvalidStatusCopyWithImpl<$Res>
    implements _$PurchaseInvalidStatusCopyWith<$Res> {
  __$PurchaseInvalidStatusCopyWithImpl(this._self, this._then);

  final _PurchaseInvalidStatus _self;
  final $Res Function(_PurchaseInvalidStatus) _then;

/// Create a copy of PurchaseInvalidStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_PurchaseInvalidStatus(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$PurchaseGeneralFailure {

 dynamic get required;
/// Create a copy of PurchaseGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseGeneralFailureCopyWith<PurchaseGeneralFailure> get copyWith => _$PurchaseGeneralFailureCopyWithImpl<PurchaseGeneralFailure>(this as PurchaseGeneralFailure, _$identity);

  /// Serializes this PurchaseGeneralFailure to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'PurchaseGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class $PurchaseGeneralFailureCopyWith<$Res>  {
  factory $PurchaseGeneralFailureCopyWith(PurchaseGeneralFailure value, $Res Function(PurchaseGeneralFailure) _then) = _$PurchaseGeneralFailureCopyWithImpl;
@useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class _$PurchaseGeneralFailureCopyWithImpl<$Res>
    implements $PurchaseGeneralFailureCopyWith<$Res> {
  _$PurchaseGeneralFailureCopyWithImpl(this._self, this._then);

  final PurchaseGeneralFailure _self;
  final $Res Function(PurchaseGeneralFailure) _then;

/// Create a copy of PurchaseGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? required = freezed,}) {
  return _then(_self.copyWith(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseGeneralFailure].
extension PurchaseGeneralFailurePatterns on PurchaseGeneralFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseGeneralFailure value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseGeneralFailure() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseGeneralFailure value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseGeneralFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseGeneralFailure value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseGeneralFailure() when $default != null:
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
case _PurchaseGeneralFailure() when $default != null:
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
case _PurchaseGeneralFailure():
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
case _PurchaseGeneralFailure() when $default != null:
return $default(_that.required);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseGeneralFailure extends PurchaseGeneralFailure {
  const _PurchaseGeneralFailure({this.required}): super._();
  factory _PurchaseGeneralFailure.fromJson(Map<String, dynamic> json) => _$PurchaseGeneralFailureFromJson(json);

@override final  dynamic required;

/// Create a copy of PurchaseGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseGeneralFailureCopyWith<_PurchaseGeneralFailure> get copyWith => __$PurchaseGeneralFailureCopyWithImpl<_PurchaseGeneralFailure>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseGeneralFailureToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseGeneralFailure&&const DeepCollectionEquality().equals(other.required, required));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(required));

@override
String toString() {
  return 'PurchaseGeneralFailure(required: $required)';
}


}

/// @nodoc
abstract mixin class _$PurchaseGeneralFailureCopyWith<$Res> implements $PurchaseGeneralFailureCopyWith<$Res> {
  factory _$PurchaseGeneralFailureCopyWith(_PurchaseGeneralFailure value, $Res Function(_PurchaseGeneralFailure) _then) = __$PurchaseGeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 dynamic required
});




}
/// @nodoc
class __$PurchaseGeneralFailureCopyWithImpl<$Res>
    implements _$PurchaseGeneralFailureCopyWith<$Res> {
  __$PurchaseGeneralFailureCopyWithImpl(this._self, this._then);

  final _PurchaseGeneralFailure _self;
  final $Res Function(_PurchaseGeneralFailure) _then;

/// Create a copy of PurchaseGeneralFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? required = freezed,}) {
  return _then(_PurchaseGeneralFailure(
required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
