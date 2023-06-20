// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionBannerList _$TransactionBannerListFromJson(
    Map<String, dynamic> json) {
  return _TransactionBannerList.fromJson(json);
}

/// @nodoc
mixin _$TransactionBannerList {
  @JsonKey(name: "total")
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: "transactionBanners", defaultValue: [])
  List<TransactionBanner> get transactionBanners =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionBannerListCopyWith<TransactionBannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionBannerListCopyWith<$Res> {
  factory $TransactionBannerListCopyWith(TransactionBannerList value,
          $Res Function(TransactionBannerList) then) =
      _$TransactionBannerListCopyWithImpl<$Res, TransactionBannerList>;
  @useResult
  $Res call(
      {@JsonKey(name: "total")
          double total,
      @JsonKey(name: "transactionBanners", defaultValue: [])
          List<TransactionBanner> transactionBanners});
}

/// @nodoc
class _$TransactionBannerListCopyWithImpl<$Res,
        $Val extends TransactionBannerList>
    implements $TransactionBannerListCopyWith<$Res> {
  _$TransactionBannerListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? transactionBanners = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      transactionBanners: null == transactionBanners
          ? _value.transactionBanners
          : transactionBanners // ignore: cast_nullable_to_non_nullable
              as List<TransactionBanner>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionBannerListCopyWith<$Res>
    implements $TransactionBannerListCopyWith<$Res> {
  factory _$$_TransactionBannerListCopyWith(_$_TransactionBannerList value,
          $Res Function(_$_TransactionBannerList) then) =
      __$$_TransactionBannerListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "total")
          double total,
      @JsonKey(name: "transactionBanners", defaultValue: [])
          List<TransactionBanner> transactionBanners});
}

/// @nodoc
class __$$_TransactionBannerListCopyWithImpl<$Res>
    extends _$TransactionBannerListCopyWithImpl<$Res, _$_TransactionBannerList>
    implements _$$_TransactionBannerListCopyWith<$Res> {
  __$$_TransactionBannerListCopyWithImpl(_$_TransactionBannerList _value,
      $Res Function(_$_TransactionBannerList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? transactionBanners = null,
  }) {
    return _then(_$_TransactionBannerList(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      transactionBanners: null == transactionBanners
          ? _value._transactionBanners
          : transactionBanners // ignore: cast_nullable_to_non_nullable
              as List<TransactionBanner>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionBannerList implements _TransactionBannerList {
  const _$_TransactionBannerList(
      {@JsonKey(name: "total")
          required this.total,
      @JsonKey(name: "transactionBanners", defaultValue: [])
          required final List<TransactionBanner> transactionBanners})
      : _transactionBanners = transactionBanners;

  factory _$_TransactionBannerList.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionBannerListFromJson(json);

  @override
  @JsonKey(name: "total")
  final double total;
  final List<TransactionBanner> _transactionBanners;
  @override
  @JsonKey(name: "transactionBanners", defaultValue: [])
  List<TransactionBanner> get transactionBanners {
    if (_transactionBanners is EqualUnmodifiableListView)
      return _transactionBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactionBanners);
  }

  @override
  String toString() {
    return 'TransactionBannerList(total: $total, transactionBanners: $transactionBanners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionBannerList &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._transactionBanners, _transactionBanners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total,
      const DeepCollectionEquality().hash(_transactionBanners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionBannerListCopyWith<_$_TransactionBannerList> get copyWith =>
      __$$_TransactionBannerListCopyWithImpl<_$_TransactionBannerList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionBannerListToJson(
      this,
    );
  }
}

abstract class _TransactionBannerList implements TransactionBannerList {
  const factory _TransactionBannerList(
          {@JsonKey(name: "total")
              required final double total,
          @JsonKey(name: "transactionBanners", defaultValue: [])
              required final List<TransactionBanner> transactionBanners}) =
      _$_TransactionBannerList;

  factory _TransactionBannerList.fromJson(Map<String, dynamic> json) =
      _$_TransactionBannerList.fromJson;

  @override
  @JsonKey(name: "total")
  double get total;
  @override
  @JsonKey(name: "transactionBanners", defaultValue: [])
  List<TransactionBanner> get transactionBanners;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionBannerListCopyWith<_$_TransactionBannerList> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionBanner _$TransactionBannerFromJson(Map<String, dynamic> json) {
  return _TransactionBanner.fromJson(json);
}

/// @nodoc
mixin _$TransactionBanner {
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "scheme")
  String get scheme => throw _privateConstructorUsedError;
  @JsonKey(name: "pan")
  String get pan => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_authorized")
  String get amountAuthorized => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  LocalizationField get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  String get transactionType => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved")
  bool get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reversed")
  bool get isReversed => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "start_time")
  String get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_reference_number")
  String? get customer_reference_number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionBannerCopyWith<TransactionBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionBannerCopyWith<$Res> {
  factory $TransactionBannerCopyWith(
          TransactionBanner value, $Res Function(TransactionBanner) then) =
      _$TransactionBannerCopyWithImpl<$Res, TransactionBanner>;
  @useResult
  $Res call(
      {@JsonKey(name: "uuid")
          String uuid,
      @JsonKey(name: "scheme")
          String scheme,
      @JsonKey(name: "pan")
          String pan,
      @JsonKey(name: "amount_authorized")
          String amountAuthorized,
      @JsonKey(name: "currency")
          LocalizationField currency,
      @JsonKey(name: "transaction_type")
          String transactionType,
      @JsonKey(name: "is_approved")
          bool isApproved,
      @JsonKey(name: "is_reversed")
          bool isReversed,
      @JsonKey(name: "start_date")
          String startDate,
      @JsonKey(name: "start_time")
          String startTime,
      @JsonKey(name: "customer_reference_number")
          String? customer_reference_number});
}

/// @nodoc
class _$TransactionBannerCopyWithImpl<$Res, $Val extends TransactionBanner>
    implements $TransactionBannerCopyWith<$Res> {
  _$TransactionBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? scheme = null,
    Object? pan = null,
    Object? amountAuthorized = null,
    Object? currency = null,
    Object? transactionType = null,
    Object? isApproved = null,
    Object? isReversed = null,
    Object? startDate = null,
    Object? startTime = null,
    Object? customer_reference_number = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      amountAuthorized: null == amountAuthorized
          ? _value.amountAuthorized
          : amountAuthorized // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isReversed: null == isReversed
          ? _value.isReversed
          : isReversed // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      customer_reference_number: freezed == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionBannerCopyWith<$Res>
    implements $TransactionBannerCopyWith<$Res> {
  factory _$$_TransactionBannerCopyWith(_$_TransactionBanner value,
          $Res Function(_$_TransactionBanner) then) =
      __$$_TransactionBannerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uuid")
          String uuid,
      @JsonKey(name: "scheme")
          String scheme,
      @JsonKey(name: "pan")
          String pan,
      @JsonKey(name: "amount_authorized")
          String amountAuthorized,
      @JsonKey(name: "currency")
          LocalizationField currency,
      @JsonKey(name: "transaction_type")
          String transactionType,
      @JsonKey(name: "is_approved")
          bool isApproved,
      @JsonKey(name: "is_reversed")
          bool isReversed,
      @JsonKey(name: "start_date")
          String startDate,
      @JsonKey(name: "start_time")
          String startTime,
      @JsonKey(name: "customer_reference_number")
          String? customer_reference_number});
}

/// @nodoc
class __$$_TransactionBannerCopyWithImpl<$Res>
    extends _$TransactionBannerCopyWithImpl<$Res, _$_TransactionBanner>
    implements _$$_TransactionBannerCopyWith<$Res> {
  __$$_TransactionBannerCopyWithImpl(
      _$_TransactionBanner _value, $Res Function(_$_TransactionBanner) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? scheme = null,
    Object? pan = null,
    Object? amountAuthorized = null,
    Object? currency = null,
    Object? transactionType = null,
    Object? isApproved = null,
    Object? isReversed = null,
    Object? startDate = null,
    Object? startTime = null,
    Object? customer_reference_number = freezed,
  }) {
    return _then(_$_TransactionBanner(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as String,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      amountAuthorized: null == amountAuthorized
          ? _value.amountAuthorized
          : amountAuthorized // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
      isReversed: null == isReversed
          ? _value.isReversed
          : isReversed // ignore: cast_nullable_to_non_nullable
              as bool,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      customer_reference_number: freezed == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionBanner implements _TransactionBanner {
  const _$_TransactionBanner(
      {@JsonKey(name: "uuid")
          required this.uuid,
      @JsonKey(name: "scheme")
          required this.scheme,
      @JsonKey(name: "pan")
          required this.pan,
      @JsonKey(name: "amount_authorized")
          required this.amountAuthorized,
      @JsonKey(name: "currency")
          required this.currency,
      @JsonKey(name: "transaction_type")
          required this.transactionType,
      @JsonKey(name: "is_approved")
          required this.isApproved,
      @JsonKey(name: "is_reversed")
          required this.isReversed,
      @JsonKey(name: "start_date")
          required this.startDate,
      @JsonKey(name: "start_time")
          required this.startTime,
      @JsonKey(name: "customer_reference_number")
          this.customer_reference_number});

  factory _$_TransactionBanner.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionBannerFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "scheme")
  final String scheme;
  @override
  @JsonKey(name: "pan")
  final String pan;
  @override
  @JsonKey(name: "amount_authorized")
  final String amountAuthorized;
  @override
  @JsonKey(name: "currency")
  final LocalizationField currency;
  @override
  @JsonKey(name: "transaction_type")
  final String transactionType;
  @override
  @JsonKey(name: "is_approved")
  final bool isApproved;
  @override
  @JsonKey(name: "is_reversed")
  final bool isReversed;
  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  @JsonKey(name: "start_time")
  final String startTime;
  @override
  @JsonKey(name: "customer_reference_number")
  final String? customer_reference_number;

  @override
  String toString() {
    return 'TransactionBanner(uuid: $uuid, scheme: $scheme, pan: $pan, amountAuthorized: $amountAuthorized, currency: $currency, transactionType: $transactionType, isApproved: $isApproved, isReversed: $isReversed, startDate: $startDate, startTime: $startTime, customer_reference_number: $customer_reference_number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionBanner &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            (identical(other.pan, pan) || other.pan == pan) &&
            (identical(other.amountAuthorized, amountAuthorized) ||
                other.amountAuthorized == amountAuthorized) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.isReversed, isReversed) ||
                other.isReversed == isReversed) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.customer_reference_number,
                    customer_reference_number) ||
                other.customer_reference_number == customer_reference_number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      scheme,
      pan,
      amountAuthorized,
      currency,
      transactionType,
      isApproved,
      isReversed,
      startDate,
      startTime,
      customer_reference_number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionBannerCopyWith<_$_TransactionBanner> get copyWith =>
      __$$_TransactionBannerCopyWithImpl<_$_TransactionBanner>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionBannerToJson(
      this,
    );
  }
}

abstract class _TransactionBanner implements TransactionBanner {
  const factory _TransactionBanner(
      {@JsonKey(name: "uuid")
          required final String uuid,
      @JsonKey(name: "scheme")
          required final String scheme,
      @JsonKey(name: "pan")
          required final String pan,
      @JsonKey(name: "amount_authorized")
          required final String amountAuthorized,
      @JsonKey(name: "currency")
          required final LocalizationField currency,
      @JsonKey(name: "transaction_type")
          required final String transactionType,
      @JsonKey(name: "is_approved")
          required final bool isApproved,
      @JsonKey(name: "is_reversed")
          required final bool isReversed,
      @JsonKey(name: "start_date")
          required final String startDate,
      @JsonKey(name: "start_time")
          required final String startTime,
      @JsonKey(name: "customer_reference_number")
          final String? customer_reference_number}) = _$_TransactionBanner;

  factory _TransactionBanner.fromJson(Map<String, dynamic> json) =
      _$_TransactionBanner.fromJson;

  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "scheme")
  String get scheme;
  @override
  @JsonKey(name: "pan")
  String get pan;
  @override
  @JsonKey(name: "amount_authorized")
  String get amountAuthorized;
  @override
  @JsonKey(name: "currency")
  LocalizationField get currency;
  @override
  @JsonKey(name: "transaction_type")
  String get transactionType;
  @override
  @JsonKey(name: "is_approved")
  bool get isApproved;
  @override
  @JsonKey(name: "is_reversed")
  bool get isReversed;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  @JsonKey(name: "start_time")
  String get startTime;
  @override
  @JsonKey(name: "customer_reference_number")
  String? get customer_reference_number;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionBannerCopyWith<_$_TransactionBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
