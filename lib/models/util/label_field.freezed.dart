// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LabelField<T> _$LabelFieldFromJson<T>(Map<String, dynamic> json) {
  return _LabelField<T>.fromJson(json);
}

/// @nodoc
mixin _$LabelField<T> {
  @JsonKey(name: "label")
  LocalizationField get label => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelFieldCopyWith<T, LabelField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelFieldCopyWith<T, $Res> {
  factory $LabelFieldCopyWith(
          LabelField<T> value, $Res Function(LabelField<T>) then) =
      _$LabelFieldCopyWithImpl<T, $Res, LabelField<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "label") LocalizationField label,
      @JsonKey(name: "value") dynamic value});
}

/// @nodoc
class _$LabelFieldCopyWithImpl<T, $Res, $Val extends LabelField<T>>
    implements $LabelFieldCopyWith<T, $Res> {
  _$LabelFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LabelFieldCopyWith<T, $Res>
    implements $LabelFieldCopyWith<T, $Res> {
  factory _$$_LabelFieldCopyWith(
          _$_LabelField<T> value, $Res Function(_$_LabelField<T>) then) =
      __$$_LabelFieldCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "label") LocalizationField label,
      @JsonKey(name: "value") dynamic value});
}

/// @nodoc
class __$$_LabelFieldCopyWithImpl<T, $Res>
    extends _$LabelFieldCopyWithImpl<T, $Res, _$_LabelField<T>>
    implements _$$_LabelFieldCopyWith<T, $Res> {
  __$$_LabelFieldCopyWithImpl(
      _$_LabelField<T> _value, $Res Function(_$_LabelField<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
  }) {
    return _then(_$_LabelField<T>(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LabelField<T> implements _LabelField<T> {
  const _$_LabelField(
      {@JsonKey(name: "label") required this.label,
      @JsonKey(name: "value") required this.value});

  factory _$_LabelField.fromJson(Map<String, dynamic> json) =>
      _$$_LabelFieldFromJson(json);

  @override
  @JsonKey(name: "label")
  final LocalizationField label;
  @override
  @JsonKey(name: "value")
  final dynamic value;

  @override
  String toString() {
    return 'LabelField<$T>(label: $label, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelField<T> &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelFieldCopyWith<T, _$_LabelField<T>> get copyWith =>
      __$$_LabelFieldCopyWithImpl<T, _$_LabelField<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelFieldToJson<T>(
      this,
    );
  }
}

abstract class _LabelField<T> implements LabelField<T> {
  const factory _LabelField(
      {@JsonKey(name: "label") required final LocalizationField label,
      @JsonKey(name: "value") required final dynamic value}) = _$_LabelField<T>;

  factory _LabelField.fromJson(Map<String, dynamic> json) =
      _$_LabelField<T>.fromJson;

  @override
  @JsonKey(name: "label")
  LocalizationField get label;
  @override
  @JsonKey(name: "value")
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_LabelFieldCopyWith<T, _$_LabelField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
