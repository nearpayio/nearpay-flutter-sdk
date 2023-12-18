// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NameField<T> _$NameFieldFromJson<T>(Map<String, dynamic> json) {
  return _NameField<T>.fromJson(json);
}

/// @nodoc
mixin _$NameField<T> {
  @JsonKey(name: "name")
  LocalizationField get name => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  dynamic get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameFieldCopyWith<T, NameField<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameFieldCopyWith<T, $Res> {
  factory $NameFieldCopyWith(
          NameField<T> value, $Res Function(NameField<T>) then) =
      _$NameFieldCopyWithImpl<T, $Res, NameField<T>>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") LocalizationField name,
      @JsonKey(name: "id") dynamic id});
}

/// @nodoc
class _$NameFieldCopyWithImpl<T, $Res, $Val extends NameField<T>>
    implements $NameFieldCopyWith<T, $Res> {
  _$NameFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameFieldImplCopyWith<T, $Res>
    implements $NameFieldCopyWith<T, $Res> {
  factory _$$NameFieldImplCopyWith(
          _$NameFieldImpl<T> value, $Res Function(_$NameFieldImpl<T>) then) =
      __$$NameFieldImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") LocalizationField name,
      @JsonKey(name: "id") dynamic id});
}

/// @nodoc
class __$$NameFieldImplCopyWithImpl<T, $Res>
    extends _$NameFieldCopyWithImpl<T, $Res, _$NameFieldImpl<T>>
    implements _$$NameFieldImplCopyWith<T, $Res> {
  __$$NameFieldImplCopyWithImpl(
      _$NameFieldImpl<T> _value, $Res Function(_$NameFieldImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
  }) {
    return _then(_$NameFieldImpl<T>(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameFieldImpl<T> implements _NameField<T> {
  const _$NameFieldImpl(
      {@JsonKey(name: "name") required this.name,
      @JsonKey(name: "id") required this.id});

  factory _$NameFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameFieldImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final LocalizationField name;
  @override
  @JsonKey(name: "id")
  final dynamic id;

  @override
  String toString() {
    return 'NameField<$T>(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameFieldImpl<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameFieldImplCopyWith<T, _$NameFieldImpl<T>> get copyWith =>
      __$$NameFieldImplCopyWithImpl<T, _$NameFieldImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameFieldImplToJson<T>(
      this,
    );
  }
}

abstract class _NameField<T> implements NameField<T> {
  const factory _NameField(
      {@JsonKey(name: "name") required final LocalizationField name,
      @JsonKey(name: "id") required final dynamic id}) = _$NameFieldImpl<T>;

  factory _NameField.fromJson(Map<String, dynamic> json) =
      _$NameFieldImpl<T>.fromJson;

  @override
  @JsonKey(name: "name")
  LocalizationField get name;
  @override
  @JsonKey(name: "id")
  dynamic get id;
  @override
  @JsonKey(ignore: true)
  _$$NameFieldImplCopyWith<T, _$NameFieldImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
