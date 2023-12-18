// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return _Merchant.fromJson(json);
}

/// @nodoc
mixin _$Merchant {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  LocalizationField get name => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  LocalizationField get address => throw _privateConstructorUsedError;
  @JsonKey(name: "category_code")
  String get categoryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MerchantCopyWith<Merchant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchantCopyWith<$Res> {
  factory $MerchantCopyWith(Merchant value, $Res Function(Merchant) then) =
      _$MerchantCopyWithImpl<$Res, Merchant>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") LocalizationField name,
      @JsonKey(name: "address") LocalizationField address,
      @JsonKey(name: "category_code") String categoryCode});
}

/// @nodoc
class _$MerchantCopyWithImpl<$Res, $Val extends Merchant>
    implements $MerchantCopyWith<$Res> {
  _$MerchantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? categoryCode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MerchantImplCopyWith<$Res>
    implements $MerchantCopyWith<$Res> {
  factory _$$MerchantImplCopyWith(
          _$MerchantImpl value, $Res Function(_$MerchantImpl) then) =
      __$$MerchantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") LocalizationField name,
      @JsonKey(name: "address") LocalizationField address,
      @JsonKey(name: "category_code") String categoryCode});
}

/// @nodoc
class __$$MerchantImplCopyWithImpl<$Res>
    extends _$MerchantCopyWithImpl<$Res, _$MerchantImpl>
    implements _$$MerchantImplCopyWith<$Res> {
  __$$MerchantImplCopyWithImpl(
      _$MerchantImpl _value, $Res Function(_$MerchantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? categoryCode = null,
  }) {
    return _then(_$MerchantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MerchantImpl implements _Merchant {
  const _$MerchantImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "category_code") required this.categoryCode});

  factory _$MerchantImpl.fromJson(Map<String, dynamic> json) =>
      _$$MerchantImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final LocalizationField name;
  @override
  @JsonKey(name: "address")
  final LocalizationField address;
  @override
  @JsonKey(name: "category_code")
  final String categoryCode;

  @override
  String toString() {
    return 'Merchant(id: $id, name: $name, address: $address, categoryCode: $categoryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MerchantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, categoryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MerchantImplCopyWith<_$MerchantImpl> get copyWith =>
      __$$MerchantImplCopyWithImpl<_$MerchantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MerchantImplToJson(
      this,
    );
  }
}

abstract class _Merchant implements Merchant {
  const factory _Merchant(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final LocalizationField name,
          @JsonKey(name: "address") required final LocalizationField address,
          @JsonKey(name: "category_code") required final String categoryCode}) =
      _$MerchantImpl;

  factory _Merchant.fromJson(Map<String, dynamic> json) =
      _$MerchantImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  LocalizationField get name;
  @override
  @JsonKey(name: "address")
  LocalizationField get address;
  @override
  @JsonKey(name: "category_code")
  String get categoryCode;
  @override
  @JsonKey(ignore: true)
  _$$MerchantImplCopyWith<_$MerchantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
