// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reconcile_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReconciliationBannerList _$ReconciliationBannerListFromJson(
    Map<String, dynamic> json) {
  return _ReconciliationReciept.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationBannerList {
  @JsonKey(name: "total")
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: "reconciliations", defaultValue: [])
  List<ReconciliationItem>? get reconciliations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationBannerListCopyWith<ReconciliationBannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationBannerListCopyWith<$Res> {
  factory $ReconciliationBannerListCopyWith(ReconciliationBannerList value,
          $Res Function(ReconciliationBannerList) then) =
      _$ReconciliationBannerListCopyWithImpl<$Res, ReconciliationBannerList>;
  @useResult
  $Res call(
      {@JsonKey(name: "total") double total,
      @JsonKey(name: "reconciliations", defaultValue: [])
      List<ReconciliationItem>? reconciliations});
}

/// @nodoc
class _$ReconciliationBannerListCopyWithImpl<$Res,
        $Val extends ReconciliationBannerList>
    implements $ReconciliationBannerListCopyWith<$Res> {
  _$ReconciliationBannerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? reconciliations = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      reconciliations: freezed == reconciliations
          ? _value.reconciliations
          : reconciliations // ignore: cast_nullable_to_non_nullable
              as List<ReconciliationItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReconciliationRecieptImplCopyWith<$Res>
    implements $ReconciliationBannerListCopyWith<$Res> {
  factory _$$ReconciliationRecieptImplCopyWith(
          _$ReconciliationRecieptImpl value,
          $Res Function(_$ReconciliationRecieptImpl) then) =
      __$$ReconciliationRecieptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total") double total,
      @JsonKey(name: "reconciliations", defaultValue: [])
      List<ReconciliationItem>? reconciliations});
}

/// @nodoc
class __$$ReconciliationRecieptImplCopyWithImpl<$Res>
    extends _$ReconciliationBannerListCopyWithImpl<$Res,
        _$ReconciliationRecieptImpl>
    implements _$$ReconciliationRecieptImplCopyWith<$Res> {
  __$$ReconciliationRecieptImplCopyWithImpl(_$ReconciliationRecieptImpl _value,
      $Res Function(_$ReconciliationRecieptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? reconciliations = freezed,
  }) {
    return _then(_$ReconciliationRecieptImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      reconciliations: freezed == reconciliations
          ? _value._reconciliations
          : reconciliations // ignore: cast_nullable_to_non_nullable
              as List<ReconciliationItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReconciliationRecieptImpl implements _ReconciliationReciept {
  const _$ReconciliationRecieptImpl(
      {@JsonKey(name: "total") required this.total,
      @JsonKey(name: "reconciliations", defaultValue: [])
      final List<ReconciliationItem>? reconciliations})
      : _reconciliations = reconciliations;

  factory _$ReconciliationRecieptImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReconciliationRecieptImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final double total;
  final List<ReconciliationItem>? _reconciliations;
  @override
  @JsonKey(name: "reconciliations", defaultValue: [])
  List<ReconciliationItem>? get reconciliations {
    final value = _reconciliations;
    if (value == null) return null;
    if (_reconciliations is EqualUnmodifiableListView) return _reconciliations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReconciliationBannerList(total: $total, reconciliations: $reconciliations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReconciliationRecieptImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._reconciliations, _reconciliations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total,
      const DeepCollectionEquality().hash(_reconciliations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReconciliationRecieptImplCopyWith<_$ReconciliationRecieptImpl>
      get copyWith => __$$ReconciliationRecieptImplCopyWithImpl<
          _$ReconciliationRecieptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReconciliationRecieptImplToJson(
      this,
    );
  }
}

abstract class _ReconciliationReciept implements ReconciliationBannerList {
  const factory _ReconciliationReciept(
          {@JsonKey(name: "total") required final double total,
          @JsonKey(name: "reconciliations", defaultValue: [])
          final List<ReconciliationItem>? reconciliations}) =
      _$ReconciliationRecieptImpl;

  factory _ReconciliationReciept.fromJson(Map<String, dynamic> json) =
      _$ReconciliationRecieptImpl.fromJson;

  @override
  @JsonKey(name: "total")
  double get total;
  @override
  @JsonKey(name: "reconciliations", defaultValue: [])
  List<ReconciliationItem>? get reconciliations;
  @override
  @JsonKey(ignore: true)
  _$$ReconciliationRecieptImplCopyWith<_$ReconciliationRecieptImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReconciliationItem _$ReconciliationItemFromJson(Map<String, dynamic> json) {
  return _ReconciliationItem.fromJson(json);
}

/// @nodoc
mixin _$ReconciliationItem {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  String get time => throw _privateConstructorUsedError;
  @JsonKey(name: "is_balanced")
  LabelField<bool> get isBalanced => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  String get total => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  LocalizationField get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReconciliationItemCopyWith<ReconciliationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReconciliationItemCopyWith<$Res> {
  factory $ReconciliationItemCopyWith(
          ReconciliationItem value, $Res Function(ReconciliationItem) then) =
      _$ReconciliationItemCopyWithImpl<$Res, ReconciliationItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "time") String time,
      @JsonKey(name: "is_balanced") LabelField<bool> isBalanced,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "currency") LocalizationField currency});

  $LabelFieldCopyWith<bool, $Res> get isBalanced;
}

/// @nodoc
class _$ReconciliationItemCopyWithImpl<$Res, $Val extends ReconciliationItem>
    implements $ReconciliationItemCopyWith<$Res> {
  _$ReconciliationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? isBalanced = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isBalanced: null == isBalanced
          ? _value.isBalanced
          : isBalanced // ignore: cast_nullable_to_non_nullable
              as LabelField<bool>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<bool, $Res> get isBalanced {
    return $LabelFieldCopyWith<bool, $Res>(_value.isBalanced, (value) {
      return _then(_value.copyWith(isBalanced: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReconciliationItemImplCopyWith<$Res>
    implements $ReconciliationItemCopyWith<$Res> {
  factory _$$ReconciliationItemImplCopyWith(_$ReconciliationItemImpl value,
          $Res Function(_$ReconciliationItemImpl) then) =
      __$$ReconciliationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "time") String time,
      @JsonKey(name: "is_balanced") LabelField<bool> isBalanced,
      @JsonKey(name: "total") String total,
      @JsonKey(name: "currency") LocalizationField currency});

  @override
  $LabelFieldCopyWith<bool, $Res> get isBalanced;
}

/// @nodoc
class __$$ReconciliationItemImplCopyWithImpl<$Res>
    extends _$ReconciliationItemCopyWithImpl<$Res, _$ReconciliationItemImpl>
    implements _$$ReconciliationItemImplCopyWith<$Res> {
  __$$ReconciliationItemImplCopyWithImpl(_$ReconciliationItemImpl _value,
      $Res Function(_$ReconciliationItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? isBalanced = null,
    Object? total = null,
    Object? currency = null,
  }) {
    return _then(_$ReconciliationItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isBalanced: null == isBalanced
          ? _value.isBalanced
          : isBalanced // ignore: cast_nullable_to_non_nullable
              as LabelField<bool>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReconciliationItemImpl implements _ReconciliationItem {
  const _$ReconciliationItemImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "time") required this.time,
      @JsonKey(name: "is_balanced") required this.isBalanced,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "currency") required this.currency});

  factory _$ReconciliationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReconciliationItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "date")
  final String date;
  @override
  @JsonKey(name: "time")
  final String time;
  @override
  @JsonKey(name: "is_balanced")
  final LabelField<bool> isBalanced;
  @override
  @JsonKey(name: "total")
  final String total;
  @override
  @JsonKey(name: "currency")
  final LocalizationField currency;

  @override
  String toString() {
    return 'ReconciliationItem(id: $id, date: $date, time: $time, isBalanced: $isBalanced, total: $total, currency: $currency)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReconciliationItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isBalanced, isBalanced) ||
                other.isBalanced == isBalanced) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, time, isBalanced, total, currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReconciliationItemImplCopyWith<_$ReconciliationItemImpl> get copyWith =>
      __$$ReconciliationItemImplCopyWithImpl<_$ReconciliationItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReconciliationItemImplToJson(
      this,
    );
  }
}

abstract class _ReconciliationItem implements ReconciliationItem {
  const factory _ReconciliationItem(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "date") required final String date,
      @JsonKey(name: "time") required final String time,
      @JsonKey(name: "is_balanced") required final LabelField<bool> isBalanced,
      @JsonKey(name: "total") required final String total,
      @JsonKey(name: "currency")
      required final LocalizationField currency}) = _$ReconciliationItemImpl;

  factory _ReconciliationItem.fromJson(Map<String, dynamic> json) =
      _$ReconciliationItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "time")
  String get time;
  @override
  @JsonKey(name: "is_balanced")
  LabelField<bool> get isBalanced;
  @override
  @JsonKey(name: "total")
  String get total;
  @override
  @JsonKey(name: "currency")
  LocalizationField get currency;
  @override
  @JsonKey(ignore: true)
  _$$ReconciliationItemImplCopyWith<_$ReconciliationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
