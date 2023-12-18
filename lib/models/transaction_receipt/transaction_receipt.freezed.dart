// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_receipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  @JsonKey(name: 'receipts', nullable: true)
  List<TransactionReceipt>? get receipts => throw _privateConstructorUsedError;
  @JsonKey(name: 'isNewTransaction', nullable: true)
  bool? get isNewTransaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'receipts', nullable: true)
      List<TransactionReceipt>? receipts,
      @JsonKey(name: 'isNewTransaction', nullable: true)
      bool? isNewTransaction});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = freezed,
    Object? isNewTransaction = freezed,
  }) {
    return _then(_value.copyWith(
      receipts: freezed == receipts
          ? _value.receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>?,
      isNewTransaction: freezed == isNewTransaction
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'receipts', nullable: true)
      List<TransactionReceipt>? receipts,
      @JsonKey(name: 'isNewTransaction', nullable: true)
      bool? isNewTransaction});
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipts = freezed,
    Object? isNewTransaction = freezed,
  }) {
    return _then(_$TransactionDataImpl(
      receipts: freezed == receipts
          ? _value._receipts
          : receipts // ignore: cast_nullable_to_non_nullable
              as List<TransactionReceipt>?,
      isNewTransaction: freezed == isNewTransaction
          ? _value.isNewTransaction
          : isNewTransaction // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDataImpl implements _TransactionData {
  const _$TransactionDataImpl(
      {@JsonKey(name: 'receipts', nullable: true)
      final List<TransactionReceipt>? receipts,
      @JsonKey(name: 'isNewTransaction', nullable: true) this.isNewTransaction})
      : _receipts = receipts;

  factory _$TransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataImplFromJson(json);

  final List<TransactionReceipt>? _receipts;
  @override
  @JsonKey(name: 'receipts', nullable: true)
  List<TransactionReceipt>? get receipts {
    final value = _receipts;
    if (value == null) return null;
    if (_receipts is EqualUnmodifiableListView) return _receipts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'isNewTransaction', nullable: true)
  final bool? isNewTransaction;

  @override
  String toString() {
    return 'TransactionData(receipts: $receipts, isNewTransaction: $isNewTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            const DeepCollectionEquality().equals(other._receipts, _receipts) &&
            (identical(other.isNewTransaction, isNewTransaction) ||
                other.isNewTransaction == isNewTransaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_receipts), isNewTransaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataImplToJson(
      this,
    );
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {@JsonKey(name: 'receipts', nullable: true)
      final List<TransactionReceipt>? receipts,
      @JsonKey(name: 'isNewTransaction', nullable: true)
      final bool? isNewTransaction}) = _$TransactionDataImpl;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$TransactionDataImpl.fromJson;

  @override
  @JsonKey(name: 'receipts', nullable: true)
  List<TransactionReceipt>? get receipts;
  @override
  @JsonKey(name: 'isNewTransaction', nullable: true)
  bool? get isNewTransaction;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionReceipt _$TransactionReceiptFromJson(Map<String, dynamic> json) {
  return _TransactionReceipt.fromJson(json);
}

/// @nodoc
mixin _$TransactionReceipt {
  @JsonKey(name: "receipt_id")
  String get receipt_id => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_uuid")
  String get transaction_uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "merchant")
  Merchant get merchant => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get start_date => throw _privateConstructorUsedError;
  @JsonKey(name: "start_time")
  String get start_time => throw _privateConstructorUsedError;
  @JsonKey(name: "card_scheme_sponsor")
  String get card_scheme_sponsor => throw _privateConstructorUsedError;
  @JsonKey(name: "tid")
  String get tid => throw _privateConstructorUsedError;
  @JsonKey(name: "system_trace_audit_number", nullable: true)
  String? get system_trace_audit_number => throw _privateConstructorUsedError;
  @JsonKey(name: "pos_software_version_number")
  String get pos_software_version_number => throw _privateConstructorUsedError;
  @JsonKey(name: "retrieval_reference_number", nullable: true)
  String? get retrieval_reference_number => throw _privateConstructorUsedError;
  @JsonKey(name: "card_scheme")
  NameField<String> get card_scheme => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_type")
  NameField<String> get transaction_type => throw _privateConstructorUsedError;
  @JsonKey(name: "pan")
  String get pan => throw _privateConstructorUsedError;
  @JsonKey(name: "card_expiration", nullable: true)
  String? get card_expiration => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_authorized")
  LabelField<String> get amount_authorized =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "amount_other", nullable: true)
  LabelField<String>? get amount_other => throw _privateConstructorUsedError;
  @JsonKey(name: "currency")
  LocalizationField get currency => throw _privateConstructorUsedError;
  @JsonKey(name: "status_message")
  LocalizationField get status_message => throw _privateConstructorUsedError;
  @JsonKey(name: "is_approved")
  bool get is_approved => throw _privateConstructorUsedError;
  @JsonKey(name: "is_refunded")
  bool get is_refunded => throw _privateConstructorUsedError;
  @JsonKey(name: "is_reversed")
  bool get is_reversed => throw _privateConstructorUsedError;
  @JsonKey(name: "approval_code", nullable: true)
  LabelField<String>? get approval_code => throw _privateConstructorUsedError;
  @JsonKey(name: "verification_method")
  LocalizationField get verification_method =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get end_date => throw _privateConstructorUsedError;
  @JsonKey(name: "end_time")
  String get end_time => throw _privateConstructorUsedError;
  @JsonKey(name: "receipt_line_one", nullable: true)
  LocalizationField? get receipt_line_one => throw _privateConstructorUsedError;
  @JsonKey(name: "thanks_message", nullable: true)
  LocalizationField? get thanks_message => throw _privateConstructorUsedError;
  @JsonKey(name: "save_receipt_message", nullable: true)
  LocalizationField? get save_receipt_message =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "entry_mode", nullable: true)
  String? get entry_mode => throw _privateConstructorUsedError;
  @JsonKey(name: "action_code")
  String get action_code => throw _privateConstructorUsedError;
  @JsonKey(name: "application_identifier")
  String get application_identifier => throw _privateConstructorUsedError;
  @JsonKey(name: "terminal_verification_result")
  String get terminal_verification_result => throw _privateConstructorUsedError;
  @JsonKey(name: "transaction_state_information", nullable: true)
  String? get transaction_state_information =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "cardholader_verfication_result")
  String get cardholader_verfication_result =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "cryptogram_information_data", nullable: true)
  String? get cryptogram_information_data => throw _privateConstructorUsedError;
  @JsonKey(name: "application_cryptogram", nullable: true)
  String? get application_cryptogram => throw _privateConstructorUsedError;
  @JsonKey(name: "kernel_id", nullable: true)
  String? get kernel_id => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_account_reference", nullable: true)
  String? get payment_account_reference => throw _privateConstructorUsedError;
  @JsonKey(name: "receipt_line_two", nullable: true)
  LocalizationField? get receipt_line_two => throw _privateConstructorUsedError;
  @JsonKey(name: "pan_suffix", nullable: true)
  String? get pan_suffix => throw _privateConstructorUsedError;
  @JsonKey(name: "auth", nullable: true)
  String? get auth => throw _privateConstructorUsedError;
  @JsonKey(name: "serial_num", nullable: true)
  String? get serial_num => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice", nullable: true)
  String? get invoice => throw _privateConstructorUsedError;
  @JsonKey(name: "batch", nullable: true)
  String? get batch => throw _privateConstructorUsedError;
  @JsonKey(name: "bank_net_data", nullable: true)
  String? get bank_net_data => throw _privateConstructorUsedError;
  @JsonKey(name: "vas_data", nullable: true)
  String? get vas_data => throw _privateConstructorUsedError;
  @JsonKey(name: "customer_reference_number", nullable: true, defaultValue: "")
  String? get customer_reference_number => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at", nullable: true, defaultValue: "")
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
  String? get updated_at => throw _privateConstructorUsedError;
  @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
  String? get receipt_standard => throw _privateConstructorUsedError;
  @JsonKey(name: "qr_code")
  String get qr_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionReceiptCopyWith<TransactionReceipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionReceiptCopyWith<$Res> {
  factory $TransactionReceiptCopyWith(
          TransactionReceipt value, $Res Function(TransactionReceipt) then) =
      _$TransactionReceiptCopyWithImpl<$Res, TransactionReceipt>;
  @useResult
  $Res call(
      {@JsonKey(name: "receipt_id") String receipt_id,
      @JsonKey(name: "transaction_uuid") String transaction_uuid,
      @JsonKey(name: "merchant") Merchant merchant,
      @JsonKey(name: "start_date") String start_date,
      @JsonKey(name: "start_time") String start_time,
      @JsonKey(name: "card_scheme_sponsor") String card_scheme_sponsor,
      @JsonKey(name: "tid") String tid,
      @JsonKey(name: "system_trace_audit_number", nullable: true)
      String? system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
      String pos_software_version_number,
      @JsonKey(name: "retrieval_reference_number", nullable: true)
      String? retrieval_reference_number,
      @JsonKey(name: "card_scheme") NameField<String> card_scheme,
      @JsonKey(name: "transaction_type") NameField<String> transaction_type,
      @JsonKey(name: "pan") String pan,
      @JsonKey(name: "card_expiration", nullable: true) String? card_expiration,
      @JsonKey(name: "amount_authorized") LabelField<String> amount_authorized,
      @JsonKey(name: "amount_other", nullable: true)
      LabelField<String>? amount_other,
      @JsonKey(name: "currency") LocalizationField currency,
      @JsonKey(name: "status_message") LocalizationField status_message,
      @JsonKey(name: "is_approved") bool is_approved,
      @JsonKey(name: "is_refunded") bool is_refunded,
      @JsonKey(name: "is_reversed") bool is_reversed,
      @JsonKey(name: "approval_code", nullable: true)
      LabelField<String>? approval_code,
      @JsonKey(name: "verification_method")
      LocalizationField verification_method,
      @JsonKey(name: "end_date") String end_date,
      @JsonKey(name: "end_time") String end_time,
      @JsonKey(name: "receipt_line_one", nullable: true)
      LocalizationField? receipt_line_one,
      @JsonKey(name: "thanks_message", nullable: true)
      LocalizationField? thanks_message,
      @JsonKey(name: "save_receipt_message", nullable: true)
      LocalizationField? save_receipt_message,
      @JsonKey(name: "entry_mode", nullable: true) String? entry_mode,
      @JsonKey(name: "action_code") String action_code,
      @JsonKey(name: "application_identifier") String application_identifier,
      @JsonKey(name: "terminal_verification_result")
      String terminal_verification_result,
      @JsonKey(name: "transaction_state_information", nullable: true)
      String? transaction_state_information,
      @JsonKey(name: "cardholader_verfication_result")
      String cardholader_verfication_result,
      @JsonKey(name: "cryptogram_information_data", nullable: true)
      String? cryptogram_information_data,
      @JsonKey(name: "application_cryptogram", nullable: true)
      String? application_cryptogram,
      @JsonKey(name: "kernel_id", nullable: true) String? kernel_id,
      @JsonKey(name: "payment_account_reference", nullable: true)
      String? payment_account_reference,
      @JsonKey(name: "receipt_line_two", nullable: true)
      LocalizationField? receipt_line_two,
      @JsonKey(name: "pan_suffix", nullable: true) String? pan_suffix,
      @JsonKey(name: "auth", nullable: true) String? auth,
      @JsonKey(name: "serial_num", nullable: true) String? serial_num,
      @JsonKey(name: "invoice", nullable: true) String? invoice,
      @JsonKey(name: "batch", nullable: true) String? batch,
      @JsonKey(name: "bank_net_data", nullable: true) String? bank_net_data,
      @JsonKey(name: "vas_data", nullable: true) String? vas_data,
      @JsonKey(
          name: "customer_reference_number", nullable: true, defaultValue: "")
      String? customer_reference_number,
      @JsonKey(name: "created_at", nullable: true, defaultValue: "")
      String? created_at,
      @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
      String? updated_at,
      @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
      String? receipt_standard,
      @JsonKey(name: "qr_code") String qr_code});

  $MerchantCopyWith<$Res> get merchant;
  $NameFieldCopyWith<String, $Res> get card_scheme;
  $NameFieldCopyWith<String, $Res> get transaction_type;
  $LabelFieldCopyWith<String, $Res> get amount_authorized;
  $LabelFieldCopyWith<String, $Res>? get amount_other;
  $LabelFieldCopyWith<String, $Res>? get approval_code;
}

/// @nodoc
class _$TransactionReceiptCopyWithImpl<$Res, $Val extends TransactionReceipt>
    implements $TransactionReceiptCopyWith<$Res> {
  _$TransactionReceiptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt_id = null,
    Object? transaction_uuid = null,
    Object? merchant = null,
    Object? start_date = null,
    Object? start_time = null,
    Object? card_scheme_sponsor = null,
    Object? tid = null,
    Object? system_trace_audit_number = freezed,
    Object? pos_software_version_number = null,
    Object? retrieval_reference_number = freezed,
    Object? card_scheme = null,
    Object? transaction_type = null,
    Object? pan = null,
    Object? card_expiration = freezed,
    Object? amount_authorized = null,
    Object? amount_other = freezed,
    Object? currency = null,
    Object? status_message = null,
    Object? is_approved = null,
    Object? is_refunded = null,
    Object? is_reversed = null,
    Object? approval_code = freezed,
    Object? verification_method = null,
    Object? end_date = null,
    Object? end_time = null,
    Object? receipt_line_one = freezed,
    Object? thanks_message = freezed,
    Object? save_receipt_message = freezed,
    Object? entry_mode = freezed,
    Object? action_code = null,
    Object? application_identifier = null,
    Object? terminal_verification_result = null,
    Object? transaction_state_information = freezed,
    Object? cardholader_verfication_result = null,
    Object? cryptogram_information_data = freezed,
    Object? application_cryptogram = freezed,
    Object? kernel_id = freezed,
    Object? payment_account_reference = freezed,
    Object? receipt_line_two = freezed,
    Object? pan_suffix = freezed,
    Object? auth = freezed,
    Object? serial_num = freezed,
    Object? invoice = freezed,
    Object? batch = freezed,
    Object? bank_net_data = freezed,
    Object? vas_data = freezed,
    Object? customer_reference_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? receipt_standard = freezed,
    Object? qr_code = null,
  }) {
    return _then(_value.copyWith(
      receipt_id: null == receipt_id
          ? _value.receipt_id
          : receipt_id // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_uuid: null == transaction_uuid
          ? _value.transaction_uuid
          : transaction_uuid // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String,
      card_scheme_sponsor: null == card_scheme_sponsor
          ? _value.card_scheme_sponsor
          : card_scheme_sponsor // ignore: cast_nullable_to_non_nullable
              as String,
      tid: null == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String,
      system_trace_audit_number: freezed == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String?,
      pos_software_version_number: null == pos_software_version_number
          ? _value.pos_software_version_number
          : pos_software_version_number // ignore: cast_nullable_to_non_nullable
              as String,
      retrieval_reference_number: freezed == retrieval_reference_number
          ? _value.retrieval_reference_number
          : retrieval_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      card_scheme: null == card_scheme
          ? _value.card_scheme
          : card_scheme // ignore: cast_nullable_to_non_nullable
              as NameField<String>,
      transaction_type: null == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as NameField<String>,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      card_expiration: freezed == card_expiration
          ? _value.card_expiration
          : card_expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      amount_authorized: null == amount_authorized
          ? _value.amount_authorized
          : amount_authorized // ignore: cast_nullable_to_non_nullable
              as LabelField<String>,
      amount_other: freezed == amount_other
          ? _value.amount_other
          : amount_other // ignore: cast_nullable_to_non_nullable
              as LabelField<String>?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      status_message: null == status_message
          ? _value.status_message
          : status_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      is_approved: null == is_approved
          ? _value.is_approved
          : is_approved // ignore: cast_nullable_to_non_nullable
              as bool,
      is_refunded: null == is_refunded
          ? _value.is_refunded
          : is_refunded // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reversed: null == is_reversed
          ? _value.is_reversed
          : is_reversed // ignore: cast_nullable_to_non_nullable
              as bool,
      approval_code: freezed == approval_code
          ? _value.approval_code
          : approval_code // ignore: cast_nullable_to_non_nullable
              as LabelField<String>?,
      verification_method: null == verification_method
          ? _value.verification_method
          : verification_method // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_time: null == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      receipt_line_one: freezed == receipt_line_one
          ? _value.receipt_line_one
          : receipt_line_one // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      thanks_message: freezed == thanks_message
          ? _value.thanks_message
          : thanks_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      save_receipt_message: freezed == save_receipt_message
          ? _value.save_receipt_message
          : save_receipt_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      entry_mode: freezed == entry_mode
          ? _value.entry_mode
          : entry_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      action_code: null == action_code
          ? _value.action_code
          : action_code // ignore: cast_nullable_to_non_nullable
              as String,
      application_identifier: null == application_identifier
          ? _value.application_identifier
          : application_identifier // ignore: cast_nullable_to_non_nullable
              as String,
      terminal_verification_result: null == terminal_verification_result
          ? _value.terminal_verification_result
          : terminal_verification_result // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_state_information: freezed == transaction_state_information
          ? _value.transaction_state_information
          : transaction_state_information // ignore: cast_nullable_to_non_nullable
              as String?,
      cardholader_verfication_result: null == cardholader_verfication_result
          ? _value.cardholader_verfication_result
          : cardholader_verfication_result // ignore: cast_nullable_to_non_nullable
              as String,
      cryptogram_information_data: freezed == cryptogram_information_data
          ? _value.cryptogram_information_data
          : cryptogram_information_data // ignore: cast_nullable_to_non_nullable
              as String?,
      application_cryptogram: freezed == application_cryptogram
          ? _value.application_cryptogram
          : application_cryptogram // ignore: cast_nullable_to_non_nullable
              as String?,
      kernel_id: freezed == kernel_id
          ? _value.kernel_id
          : kernel_id // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_account_reference: freezed == payment_account_reference
          ? _value.payment_account_reference
          : payment_account_reference // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt_line_two: freezed == receipt_line_two
          ? _value.receipt_line_two
          : receipt_line_two // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      pan_suffix: freezed == pan_suffix
          ? _value.pan_suffix
          : pan_suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
      serial_num: freezed == serial_num
          ? _value.serial_num
          : serial_num // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      batch: freezed == batch
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_net_data: freezed == bank_net_data
          ? _value.bank_net_data
          : bank_net_data // ignore: cast_nullable_to_non_nullable
              as String?,
      vas_data: freezed == vas_data
          ? _value.vas_data
          : vas_data // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_reference_number: freezed == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt_standard: freezed == receipt_standard
          ? _value.receipt_standard
          : receipt_standard // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_code: null == qr_code
          ? _value.qr_code
          : qr_code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MerchantCopyWith<$Res> get merchant {
    return $MerchantCopyWith<$Res>(_value.merchant, (value) {
      return _then(_value.copyWith(merchant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameFieldCopyWith<String, $Res> get card_scheme {
    return $NameFieldCopyWith<String, $Res>(_value.card_scheme, (value) {
      return _then(_value.copyWith(card_scheme: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameFieldCopyWith<String, $Res> get transaction_type {
    return $NameFieldCopyWith<String, $Res>(_value.transaction_type, (value) {
      return _then(_value.copyWith(transaction_type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<String, $Res> get amount_authorized {
    return $LabelFieldCopyWith<String, $Res>(_value.amount_authorized, (value) {
      return _then(_value.copyWith(amount_authorized: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<String, $Res>? get amount_other {
    if (_value.amount_other == null) {
      return null;
    }

    return $LabelFieldCopyWith<String, $Res>(_value.amount_other!, (value) {
      return _then(_value.copyWith(amount_other: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelFieldCopyWith<String, $Res>? get approval_code {
    if (_value.approval_code == null) {
      return null;
    }

    return $LabelFieldCopyWith<String, $Res>(_value.approval_code!, (value) {
      return _then(_value.copyWith(approval_code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionReceiptImplCopyWith<$Res>
    implements $TransactionReceiptCopyWith<$Res> {
  factory _$$TransactionReceiptImplCopyWith(_$TransactionReceiptImpl value,
          $Res Function(_$TransactionReceiptImpl) then) =
      __$$TransactionReceiptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "receipt_id") String receipt_id,
      @JsonKey(name: "transaction_uuid") String transaction_uuid,
      @JsonKey(name: "merchant") Merchant merchant,
      @JsonKey(name: "start_date") String start_date,
      @JsonKey(name: "start_time") String start_time,
      @JsonKey(name: "card_scheme_sponsor") String card_scheme_sponsor,
      @JsonKey(name: "tid") String tid,
      @JsonKey(name: "system_trace_audit_number", nullable: true)
      String? system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
      String pos_software_version_number,
      @JsonKey(name: "retrieval_reference_number", nullable: true)
      String? retrieval_reference_number,
      @JsonKey(name: "card_scheme") NameField<String> card_scheme,
      @JsonKey(name: "transaction_type") NameField<String> transaction_type,
      @JsonKey(name: "pan") String pan,
      @JsonKey(name: "card_expiration", nullable: true) String? card_expiration,
      @JsonKey(name: "amount_authorized") LabelField<String> amount_authorized,
      @JsonKey(name: "amount_other", nullable: true)
      LabelField<String>? amount_other,
      @JsonKey(name: "currency") LocalizationField currency,
      @JsonKey(name: "status_message") LocalizationField status_message,
      @JsonKey(name: "is_approved") bool is_approved,
      @JsonKey(name: "is_refunded") bool is_refunded,
      @JsonKey(name: "is_reversed") bool is_reversed,
      @JsonKey(name: "approval_code", nullable: true)
      LabelField<String>? approval_code,
      @JsonKey(name: "verification_method")
      LocalizationField verification_method,
      @JsonKey(name: "end_date") String end_date,
      @JsonKey(name: "end_time") String end_time,
      @JsonKey(name: "receipt_line_one", nullable: true)
      LocalizationField? receipt_line_one,
      @JsonKey(name: "thanks_message", nullable: true)
      LocalizationField? thanks_message,
      @JsonKey(name: "save_receipt_message", nullable: true)
      LocalizationField? save_receipt_message,
      @JsonKey(name: "entry_mode", nullable: true) String? entry_mode,
      @JsonKey(name: "action_code") String action_code,
      @JsonKey(name: "application_identifier") String application_identifier,
      @JsonKey(name: "terminal_verification_result")
      String terminal_verification_result,
      @JsonKey(name: "transaction_state_information", nullable: true)
      String? transaction_state_information,
      @JsonKey(name: "cardholader_verfication_result")
      String cardholader_verfication_result,
      @JsonKey(name: "cryptogram_information_data", nullable: true)
      String? cryptogram_information_data,
      @JsonKey(name: "application_cryptogram", nullable: true)
      String? application_cryptogram,
      @JsonKey(name: "kernel_id", nullable: true) String? kernel_id,
      @JsonKey(name: "payment_account_reference", nullable: true)
      String? payment_account_reference,
      @JsonKey(name: "receipt_line_two", nullable: true)
      LocalizationField? receipt_line_two,
      @JsonKey(name: "pan_suffix", nullable: true) String? pan_suffix,
      @JsonKey(name: "auth", nullable: true) String? auth,
      @JsonKey(name: "serial_num", nullable: true) String? serial_num,
      @JsonKey(name: "invoice", nullable: true) String? invoice,
      @JsonKey(name: "batch", nullable: true) String? batch,
      @JsonKey(name: "bank_net_data", nullable: true) String? bank_net_data,
      @JsonKey(name: "vas_data", nullable: true) String? vas_data,
      @JsonKey(
          name: "customer_reference_number", nullable: true, defaultValue: "")
      String? customer_reference_number,
      @JsonKey(name: "created_at", nullable: true, defaultValue: "")
      String? created_at,
      @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
      String? updated_at,
      @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
      String? receipt_standard,
      @JsonKey(name: "qr_code") String qr_code});

  @override
  $MerchantCopyWith<$Res> get merchant;
  @override
  $NameFieldCopyWith<String, $Res> get card_scheme;
  @override
  $NameFieldCopyWith<String, $Res> get transaction_type;
  @override
  $LabelFieldCopyWith<String, $Res> get amount_authorized;
  @override
  $LabelFieldCopyWith<String, $Res>? get amount_other;
  @override
  $LabelFieldCopyWith<String, $Res>? get approval_code;
}

/// @nodoc
class __$$TransactionReceiptImplCopyWithImpl<$Res>
    extends _$TransactionReceiptCopyWithImpl<$Res, _$TransactionReceiptImpl>
    implements _$$TransactionReceiptImplCopyWith<$Res> {
  __$$TransactionReceiptImplCopyWithImpl(_$TransactionReceiptImpl _value,
      $Res Function(_$TransactionReceiptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receipt_id = null,
    Object? transaction_uuid = null,
    Object? merchant = null,
    Object? start_date = null,
    Object? start_time = null,
    Object? card_scheme_sponsor = null,
    Object? tid = null,
    Object? system_trace_audit_number = freezed,
    Object? pos_software_version_number = null,
    Object? retrieval_reference_number = freezed,
    Object? card_scheme = null,
    Object? transaction_type = null,
    Object? pan = null,
    Object? card_expiration = freezed,
    Object? amount_authorized = null,
    Object? amount_other = freezed,
    Object? currency = null,
    Object? status_message = null,
    Object? is_approved = null,
    Object? is_refunded = null,
    Object? is_reversed = null,
    Object? approval_code = freezed,
    Object? verification_method = null,
    Object? end_date = null,
    Object? end_time = null,
    Object? receipt_line_one = freezed,
    Object? thanks_message = freezed,
    Object? save_receipt_message = freezed,
    Object? entry_mode = freezed,
    Object? action_code = null,
    Object? application_identifier = null,
    Object? terminal_verification_result = null,
    Object? transaction_state_information = freezed,
    Object? cardholader_verfication_result = null,
    Object? cryptogram_information_data = freezed,
    Object? application_cryptogram = freezed,
    Object? kernel_id = freezed,
    Object? payment_account_reference = freezed,
    Object? receipt_line_two = freezed,
    Object? pan_suffix = freezed,
    Object? auth = freezed,
    Object? serial_num = freezed,
    Object? invoice = freezed,
    Object? batch = freezed,
    Object? bank_net_data = freezed,
    Object? vas_data = freezed,
    Object? customer_reference_number = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? receipt_standard = freezed,
    Object? qr_code = null,
  }) {
    return _then(_$TransactionReceiptImpl(
      receipt_id: null == receipt_id
          ? _value.receipt_id
          : receipt_id // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_uuid: null == transaction_uuid
          ? _value.transaction_uuid
          : transaction_uuid // ignore: cast_nullable_to_non_nullable
              as String,
      merchant: null == merchant
          ? _value.merchant
          : merchant // ignore: cast_nullable_to_non_nullable
              as Merchant,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      start_time: null == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String,
      card_scheme_sponsor: null == card_scheme_sponsor
          ? _value.card_scheme_sponsor
          : card_scheme_sponsor // ignore: cast_nullable_to_non_nullable
              as String,
      tid: null == tid
          ? _value.tid
          : tid // ignore: cast_nullable_to_non_nullable
              as String,
      system_trace_audit_number: freezed == system_trace_audit_number
          ? _value.system_trace_audit_number
          : system_trace_audit_number // ignore: cast_nullable_to_non_nullable
              as String?,
      pos_software_version_number: null == pos_software_version_number
          ? _value.pos_software_version_number
          : pos_software_version_number // ignore: cast_nullable_to_non_nullable
              as String,
      retrieval_reference_number: freezed == retrieval_reference_number
          ? _value.retrieval_reference_number
          : retrieval_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      card_scheme: null == card_scheme
          ? _value.card_scheme
          : card_scheme // ignore: cast_nullable_to_non_nullable
              as NameField<String>,
      transaction_type: null == transaction_type
          ? _value.transaction_type
          : transaction_type // ignore: cast_nullable_to_non_nullable
              as NameField<String>,
      pan: null == pan
          ? _value.pan
          : pan // ignore: cast_nullable_to_non_nullable
              as String,
      card_expiration: freezed == card_expiration
          ? _value.card_expiration
          : card_expiration // ignore: cast_nullable_to_non_nullable
              as String?,
      amount_authorized: null == amount_authorized
          ? _value.amount_authorized
          : amount_authorized // ignore: cast_nullable_to_non_nullable
              as LabelField<String>,
      amount_other: freezed == amount_other
          ? _value.amount_other
          : amount_other // ignore: cast_nullable_to_non_nullable
              as LabelField<String>?,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      status_message: null == status_message
          ? _value.status_message
          : status_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      is_approved: null == is_approved
          ? _value.is_approved
          : is_approved // ignore: cast_nullable_to_non_nullable
              as bool,
      is_refunded: null == is_refunded
          ? _value.is_refunded
          : is_refunded // ignore: cast_nullable_to_non_nullable
              as bool,
      is_reversed: null == is_reversed
          ? _value.is_reversed
          : is_reversed // ignore: cast_nullable_to_non_nullable
              as bool,
      approval_code: freezed == approval_code
          ? _value.approval_code
          : approval_code // ignore: cast_nullable_to_non_nullable
              as LabelField<String>?,
      verification_method: null == verification_method
          ? _value.verification_method
          : verification_method // ignore: cast_nullable_to_non_nullable
              as LocalizationField,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_time: null == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String,
      receipt_line_one: freezed == receipt_line_one
          ? _value.receipt_line_one
          : receipt_line_one // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      thanks_message: freezed == thanks_message
          ? _value.thanks_message
          : thanks_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      save_receipt_message: freezed == save_receipt_message
          ? _value.save_receipt_message
          : save_receipt_message // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      entry_mode: freezed == entry_mode
          ? _value.entry_mode
          : entry_mode // ignore: cast_nullable_to_non_nullable
              as String?,
      action_code: null == action_code
          ? _value.action_code
          : action_code // ignore: cast_nullable_to_non_nullable
              as String,
      application_identifier: null == application_identifier
          ? _value.application_identifier
          : application_identifier // ignore: cast_nullable_to_non_nullable
              as String,
      terminal_verification_result: null == terminal_verification_result
          ? _value.terminal_verification_result
          : terminal_verification_result // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_state_information: freezed == transaction_state_information
          ? _value.transaction_state_information
          : transaction_state_information // ignore: cast_nullable_to_non_nullable
              as String?,
      cardholader_verfication_result: null == cardholader_verfication_result
          ? _value.cardholader_verfication_result
          : cardholader_verfication_result // ignore: cast_nullable_to_non_nullable
              as String,
      cryptogram_information_data: freezed == cryptogram_information_data
          ? _value.cryptogram_information_data
          : cryptogram_information_data // ignore: cast_nullable_to_non_nullable
              as String?,
      application_cryptogram: freezed == application_cryptogram
          ? _value.application_cryptogram
          : application_cryptogram // ignore: cast_nullable_to_non_nullable
              as String?,
      kernel_id: freezed == kernel_id
          ? _value.kernel_id
          : kernel_id // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_account_reference: freezed == payment_account_reference
          ? _value.payment_account_reference
          : payment_account_reference // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt_line_two: freezed == receipt_line_two
          ? _value.receipt_line_two
          : receipt_line_two // ignore: cast_nullable_to_non_nullable
              as LocalizationField?,
      pan_suffix: freezed == pan_suffix
          ? _value.pan_suffix
          : pan_suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String?,
      serial_num: freezed == serial_num
          ? _value.serial_num
          : serial_num // ignore: cast_nullable_to_non_nullable
              as String?,
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      batch: freezed == batch
          ? _value.batch
          : batch // ignore: cast_nullable_to_non_nullable
              as String?,
      bank_net_data: freezed == bank_net_data
          ? _value.bank_net_data
          : bank_net_data // ignore: cast_nullable_to_non_nullable
              as String?,
      vas_data: freezed == vas_data
          ? _value.vas_data
          : vas_data // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_reference_number: freezed == customer_reference_number
          ? _value.customer_reference_number
          : customer_reference_number // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      receipt_standard: freezed == receipt_standard
          ? _value.receipt_standard
          : receipt_standard // ignore: cast_nullable_to_non_nullable
              as String?,
      qr_code: null == qr_code
          ? _value.qr_code
          : qr_code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionReceiptImpl implements _TransactionReceipt {
  const _$TransactionReceiptImpl(
      {@JsonKey(name: "receipt_id") required this.receipt_id,
      @JsonKey(name: "transaction_uuid") required this.transaction_uuid,
      @JsonKey(name: "merchant") required this.merchant,
      @JsonKey(name: "start_date") required this.start_date,
      @JsonKey(name: "start_time") required this.start_time,
      @JsonKey(name: "card_scheme_sponsor") required this.card_scheme_sponsor,
      @JsonKey(name: "tid") required this.tid,
      @JsonKey(name: "system_trace_audit_number", nullable: true)
      this.system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
      required this.pos_software_version_number,
      @JsonKey(name: "retrieval_reference_number", nullable: true)
      this.retrieval_reference_number,
      @JsonKey(name: "card_scheme") required this.card_scheme,
      @JsonKey(name: "transaction_type") required this.transaction_type,
      @JsonKey(name: "pan") required this.pan,
      @JsonKey(name: "card_expiration", nullable: true) this.card_expiration,
      @JsonKey(name: "amount_authorized") required this.amount_authorized,
      @JsonKey(name: "amount_other", nullable: true) this.amount_other,
      @JsonKey(name: "currency") required this.currency,
      @JsonKey(name: "status_message") required this.status_message,
      @JsonKey(name: "is_approved") required this.is_approved,
      @JsonKey(name: "is_refunded") required this.is_refunded,
      @JsonKey(name: "is_reversed") required this.is_reversed,
      @JsonKey(name: "approval_code", nullable: true) this.approval_code,
      @JsonKey(name: "verification_method") required this.verification_method,
      @JsonKey(name: "end_date") required this.end_date,
      @JsonKey(name: "end_time") required this.end_time,
      @JsonKey(name: "receipt_line_one", nullable: true) this.receipt_line_one,
      @JsonKey(name: "thanks_message", nullable: true) this.thanks_message,
      @JsonKey(name: "save_receipt_message", nullable: true)
      this.save_receipt_message,
      @JsonKey(name: "entry_mode", nullable: true) this.entry_mode,
      @JsonKey(name: "action_code") required this.action_code,
      @JsonKey(name: "application_identifier")
      required this.application_identifier,
      @JsonKey(name: "terminal_verification_result")
      required this.terminal_verification_result,
      @JsonKey(name: "transaction_state_information", nullable: true)
      this.transaction_state_information,
      @JsonKey(name: "cardholader_verfication_result")
      required this.cardholader_verfication_result,
      @JsonKey(name: "cryptogram_information_data", nullable: true)
      this.cryptogram_information_data,
      @JsonKey(name: "application_cryptogram", nullable: true)
      this.application_cryptogram,
      @JsonKey(name: "kernel_id", nullable: true) this.kernel_id,
      @JsonKey(name: "payment_account_reference", nullable: true)
      this.payment_account_reference,
      @JsonKey(name: "receipt_line_two", nullable: true) this.receipt_line_two,
      @JsonKey(name: "pan_suffix", nullable: true) this.pan_suffix,
      @JsonKey(name: "auth", nullable: true) this.auth,
      @JsonKey(name: "serial_num", nullable: true) this.serial_num,
      @JsonKey(name: "invoice", nullable: true) this.invoice,
      @JsonKey(name: "batch", nullable: true) this.batch,
      @JsonKey(name: "bank_net_data", nullable: true) this.bank_net_data,
      @JsonKey(name: "vas_data", nullable: true) this.vas_data,
      @JsonKey(
          name: "customer_reference_number", nullable: true, defaultValue: "")
      this.customer_reference_number,
      @JsonKey(name: "created_at", nullable: true, defaultValue: "")
      this.created_at,
      @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
      this.updated_at,
      @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
      this.receipt_standard,
      @JsonKey(name: "qr_code") required this.qr_code});

  factory _$TransactionReceiptImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionReceiptImplFromJson(json);

  @override
  @JsonKey(name: "receipt_id")
  final String receipt_id;
  @override
  @JsonKey(name: "transaction_uuid")
  final String transaction_uuid;
  @override
  @JsonKey(name: "merchant")
  final Merchant merchant;
  @override
  @JsonKey(name: "start_date")
  final String start_date;
  @override
  @JsonKey(name: "start_time")
  final String start_time;
  @override
  @JsonKey(name: "card_scheme_sponsor")
  final String card_scheme_sponsor;
  @override
  @JsonKey(name: "tid")
  final String tid;
  @override
  @JsonKey(name: "system_trace_audit_number", nullable: true)
  final String? system_trace_audit_number;
  @override
  @JsonKey(name: "pos_software_version_number")
  final String pos_software_version_number;
  @override
  @JsonKey(name: "retrieval_reference_number", nullable: true)
  final String? retrieval_reference_number;
  @override
  @JsonKey(name: "card_scheme")
  final NameField<String> card_scheme;
  @override
  @JsonKey(name: "transaction_type")
  final NameField<String> transaction_type;
  @override
  @JsonKey(name: "pan")
  final String pan;
  @override
  @JsonKey(name: "card_expiration", nullable: true)
  final String? card_expiration;
  @override
  @JsonKey(name: "amount_authorized")
  final LabelField<String> amount_authorized;
  @override
  @JsonKey(name: "amount_other", nullable: true)
  final LabelField<String>? amount_other;
  @override
  @JsonKey(name: "currency")
  final LocalizationField currency;
  @override
  @JsonKey(name: "status_message")
  final LocalizationField status_message;
  @override
  @JsonKey(name: "is_approved")
  final bool is_approved;
  @override
  @JsonKey(name: "is_refunded")
  final bool is_refunded;
  @override
  @JsonKey(name: "is_reversed")
  final bool is_reversed;
  @override
  @JsonKey(name: "approval_code", nullable: true)
  final LabelField<String>? approval_code;
  @override
  @JsonKey(name: "verification_method")
  final LocalizationField verification_method;
  @override
  @JsonKey(name: "end_date")
  final String end_date;
  @override
  @JsonKey(name: "end_time")
  final String end_time;
  @override
  @JsonKey(name: "receipt_line_one", nullable: true)
  final LocalizationField? receipt_line_one;
  @override
  @JsonKey(name: "thanks_message", nullable: true)
  final LocalizationField? thanks_message;
  @override
  @JsonKey(name: "save_receipt_message", nullable: true)
  final LocalizationField? save_receipt_message;
  @override
  @JsonKey(name: "entry_mode", nullable: true)
  final String? entry_mode;
  @override
  @JsonKey(name: "action_code")
  final String action_code;
  @override
  @JsonKey(name: "application_identifier")
  final String application_identifier;
  @override
  @JsonKey(name: "terminal_verification_result")
  final String terminal_verification_result;
  @override
  @JsonKey(name: "transaction_state_information", nullable: true)
  final String? transaction_state_information;
  @override
  @JsonKey(name: "cardholader_verfication_result")
  final String cardholader_verfication_result;
  @override
  @JsonKey(name: "cryptogram_information_data", nullable: true)
  final String? cryptogram_information_data;
  @override
  @JsonKey(name: "application_cryptogram", nullable: true)
  final String? application_cryptogram;
  @override
  @JsonKey(name: "kernel_id", nullable: true)
  final String? kernel_id;
  @override
  @JsonKey(name: "payment_account_reference", nullable: true)
  final String? payment_account_reference;
  @override
  @JsonKey(name: "receipt_line_two", nullable: true)
  final LocalizationField? receipt_line_two;
  @override
  @JsonKey(name: "pan_suffix", nullable: true)
  final String? pan_suffix;
  @override
  @JsonKey(name: "auth", nullable: true)
  final String? auth;
  @override
  @JsonKey(name: "serial_num", nullable: true)
  final String? serial_num;
  @override
  @JsonKey(name: "invoice", nullable: true)
  final String? invoice;
  @override
  @JsonKey(name: "batch", nullable: true)
  final String? batch;
  @override
  @JsonKey(name: "bank_net_data", nullable: true)
  final String? bank_net_data;
  @override
  @JsonKey(name: "vas_data", nullable: true)
  final String? vas_data;
  @override
  @JsonKey(name: "customer_reference_number", nullable: true, defaultValue: "")
  final String? customer_reference_number;
  @override
  @JsonKey(name: "created_at", nullable: true, defaultValue: "")
  final String? created_at;
  @override
  @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
  final String? updated_at;
  @override
  @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
  final String? receipt_standard;
  @override
  @JsonKey(name: "qr_code")
  final String qr_code;

  @override
  String toString() {
    return 'TransactionReceipt(receipt_id: $receipt_id, transaction_uuid: $transaction_uuid, merchant: $merchant, start_date: $start_date, start_time: $start_time, card_scheme_sponsor: $card_scheme_sponsor, tid: $tid, system_trace_audit_number: $system_trace_audit_number, pos_software_version_number: $pos_software_version_number, retrieval_reference_number: $retrieval_reference_number, card_scheme: $card_scheme, transaction_type: $transaction_type, pan: $pan, card_expiration: $card_expiration, amount_authorized: $amount_authorized, amount_other: $amount_other, currency: $currency, status_message: $status_message, is_approved: $is_approved, is_refunded: $is_refunded, is_reversed: $is_reversed, approval_code: $approval_code, verification_method: $verification_method, end_date: $end_date, end_time: $end_time, receipt_line_one: $receipt_line_one, thanks_message: $thanks_message, save_receipt_message: $save_receipt_message, entry_mode: $entry_mode, action_code: $action_code, application_identifier: $application_identifier, terminal_verification_result: $terminal_verification_result, transaction_state_information: $transaction_state_information, cardholader_verfication_result: $cardholader_verfication_result, cryptogram_information_data: $cryptogram_information_data, application_cryptogram: $application_cryptogram, kernel_id: $kernel_id, payment_account_reference: $payment_account_reference, receipt_line_two: $receipt_line_two, pan_suffix: $pan_suffix, auth: $auth, serial_num: $serial_num, invoice: $invoice, batch: $batch, bank_net_data: $bank_net_data, vas_data: $vas_data, customer_reference_number: $customer_reference_number, created_at: $created_at, updated_at: $updated_at, receipt_standard: $receipt_standard, qr_code: $qr_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionReceiptImpl &&
            (identical(other.receipt_id, receipt_id) ||
                other.receipt_id == receipt_id) &&
            (identical(other.transaction_uuid, transaction_uuid) ||
                other.transaction_uuid == transaction_uuid) &&
            (identical(other.merchant, merchant) ||
                other.merchant == merchant) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.card_scheme_sponsor, card_scheme_sponsor) ||
                other.card_scheme_sponsor == card_scheme_sponsor) &&
            (identical(other.tid, tid) || other.tid == tid) &&
            (identical(other.system_trace_audit_number, system_trace_audit_number) ||
                other.system_trace_audit_number == system_trace_audit_number) &&
            (identical(other.pos_software_version_number, pos_software_version_number) ||
                other.pos_software_version_number ==
                    pos_software_version_number) &&
            (identical(other.retrieval_reference_number, retrieval_reference_number) ||
                other.retrieval_reference_number ==
                    retrieval_reference_number) &&
            (identical(other.card_scheme, card_scheme) ||
                other.card_scheme == card_scheme) &&
            (identical(other.transaction_type, transaction_type) ||
                other.transaction_type == transaction_type) &&
            (identical(other.pan, pan) || other.pan == pan) &&
            (identical(other.card_expiration, card_expiration) ||
                other.card_expiration == card_expiration) &&
            (identical(other.amount_authorized, amount_authorized) ||
                other.amount_authorized == amount_authorized) &&
            (identical(other.amount_other, amount_other) ||
                other.amount_other == amount_other) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status_message, status_message) ||
                other.status_message == status_message) &&
            (identical(other.is_approved, is_approved) ||
                other.is_approved == is_approved) &&
            (identical(other.is_refunded, is_refunded) ||
                other.is_refunded == is_refunded) &&
            (identical(other.is_reversed, is_reversed) ||
                other.is_reversed == is_reversed) &&
            (identical(other.approval_code, approval_code) ||
                other.approval_code == approval_code) &&
            (identical(other.verification_method, verification_method) ||
                other.verification_method == verification_method) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.receipt_line_one, receipt_line_one) ||
                other.receipt_line_one == receipt_line_one) &&
            (identical(other.thanks_message, thanks_message) ||
                other.thanks_message == thanks_message) &&
            (identical(other.save_receipt_message, save_receipt_message) || other.save_receipt_message == save_receipt_message) &&
            (identical(other.entry_mode, entry_mode) || other.entry_mode == entry_mode) &&
            (identical(other.action_code, action_code) || other.action_code == action_code) &&
            (identical(other.application_identifier, application_identifier) || other.application_identifier == application_identifier) &&
            (identical(other.terminal_verification_result, terminal_verification_result) || other.terminal_verification_result == terminal_verification_result) &&
            (identical(other.transaction_state_information, transaction_state_information) || other.transaction_state_information == transaction_state_information) &&
            (identical(other.cardholader_verfication_result, cardholader_verfication_result) || other.cardholader_verfication_result == cardholader_verfication_result) &&
            (identical(other.cryptogram_information_data, cryptogram_information_data) || other.cryptogram_information_data == cryptogram_information_data) &&
            (identical(other.application_cryptogram, application_cryptogram) || other.application_cryptogram == application_cryptogram) &&
            (identical(other.kernel_id, kernel_id) || other.kernel_id == kernel_id) &&
            (identical(other.payment_account_reference, payment_account_reference) || other.payment_account_reference == payment_account_reference) &&
            (identical(other.receipt_line_two, receipt_line_two) || other.receipt_line_two == receipt_line_two) &&
            (identical(other.pan_suffix, pan_suffix) || other.pan_suffix == pan_suffix) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.serial_num, serial_num) || other.serial_num == serial_num) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.batch, batch) || other.batch == batch) &&
            (identical(other.bank_net_data, bank_net_data) || other.bank_net_data == bank_net_data) &&
            (identical(other.vas_data, vas_data) || other.vas_data == vas_data) &&
            (identical(other.customer_reference_number, customer_reference_number) || other.customer_reference_number == customer_reference_number) &&
            (identical(other.created_at, created_at) || other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) || other.updated_at == updated_at) &&
            (identical(other.receipt_standard, receipt_standard) || other.receipt_standard == receipt_standard) &&
            (identical(other.qr_code, qr_code) || other.qr_code == qr_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        receipt_id,
        transaction_uuid,
        merchant,
        start_date,
        start_time,
        card_scheme_sponsor,
        tid,
        system_trace_audit_number,
        pos_software_version_number,
        retrieval_reference_number,
        card_scheme,
        transaction_type,
        pan,
        card_expiration,
        amount_authorized,
        amount_other,
        currency,
        status_message,
        is_approved,
        is_refunded,
        is_reversed,
        approval_code,
        verification_method,
        end_date,
        end_time,
        receipt_line_one,
        thanks_message,
        save_receipt_message,
        entry_mode,
        action_code,
        application_identifier,
        terminal_verification_result,
        transaction_state_information,
        cardholader_verfication_result,
        cryptogram_information_data,
        application_cryptogram,
        kernel_id,
        payment_account_reference,
        receipt_line_two,
        pan_suffix,
        auth,
        serial_num,
        invoice,
        batch,
        bank_net_data,
        vas_data,
        customer_reference_number,
        created_at,
        updated_at,
        receipt_standard,
        qr_code
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionReceiptImplCopyWith<_$TransactionReceiptImpl> get copyWith =>
      __$$TransactionReceiptImplCopyWithImpl<_$TransactionReceiptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionReceiptImplToJson(
      this,
    );
  }
}

abstract class _TransactionReceipt implements TransactionReceipt {
  const factory _TransactionReceipt(
      {@JsonKey(name: "receipt_id") required final String receipt_id,
      @JsonKey(name: "transaction_uuid") required final String transaction_uuid,
      @JsonKey(name: "merchant") required final Merchant merchant,
      @JsonKey(name: "start_date") required final String start_date,
      @JsonKey(name: "start_time") required final String start_time,
      @JsonKey(name: "card_scheme_sponsor")
      required final String card_scheme_sponsor,
      @JsonKey(name: "tid") required final String tid,
      @JsonKey(name: "system_trace_audit_number", nullable: true)
      final String? system_trace_audit_number,
      @JsonKey(name: "pos_software_version_number")
      required final String pos_software_version_number,
      @JsonKey(name: "retrieval_reference_number", nullable: true)
      final String? retrieval_reference_number,
      @JsonKey(name: "card_scheme")
      required final NameField<String> card_scheme,
      @JsonKey(name: "transaction_type")
      required final NameField<String> transaction_type,
      @JsonKey(name: "pan") required final String pan,
      @JsonKey(name: "card_expiration", nullable: true)
      final String? card_expiration,
      @JsonKey(name: "amount_authorized")
      required final LabelField<String> amount_authorized,
      @JsonKey(name: "amount_other", nullable: true)
      final LabelField<String>? amount_other,
      @JsonKey(name: "currency") required final LocalizationField currency,
      @JsonKey(name: "status_message")
      required final LocalizationField status_message,
      @JsonKey(name: "is_approved") required final bool is_approved,
      @JsonKey(name: "is_refunded") required final bool is_refunded,
      @JsonKey(name: "is_reversed") required final bool is_reversed,
      @JsonKey(name: "approval_code", nullable: true)
      final LabelField<String>? approval_code,
      @JsonKey(name: "verification_method")
      required final LocalizationField verification_method,
      @JsonKey(name: "end_date") required final String end_date,
      @JsonKey(name: "end_time") required final String end_time,
      @JsonKey(name: "receipt_line_one", nullable: true)
      final LocalizationField? receipt_line_one,
      @JsonKey(name: "thanks_message", nullable: true)
      final LocalizationField? thanks_message,
      @JsonKey(name: "save_receipt_message", nullable: true)
      final LocalizationField? save_receipt_message,
      @JsonKey(name: "entry_mode", nullable: true) final String? entry_mode,
      @JsonKey(name: "action_code") required final String action_code,
      @JsonKey(name: "application_identifier")
      required final String application_identifier,
      @JsonKey(name: "terminal_verification_result")
      required final String terminal_verification_result,
      @JsonKey(name: "transaction_state_information", nullable: true)
      final String? transaction_state_information,
      @JsonKey(name: "cardholader_verfication_result")
      required final String cardholader_verfication_result,
      @JsonKey(name: "cryptogram_information_data", nullable: true)
      final String? cryptogram_information_data,
      @JsonKey(name: "application_cryptogram", nullable: true)
      final String? application_cryptogram,
      @JsonKey(name: "kernel_id", nullable: true) final String? kernel_id,
      @JsonKey(name: "payment_account_reference", nullable: true)
      final String? payment_account_reference,
      @JsonKey(name: "receipt_line_two", nullable: true)
      final LocalizationField? receipt_line_two,
      @JsonKey(name: "pan_suffix", nullable: true) final String? pan_suffix,
      @JsonKey(name: "auth", nullable: true) final String? auth,
      @JsonKey(name: "serial_num", nullable: true) final String? serial_num,
      @JsonKey(name: "invoice", nullable: true) final String? invoice,
      @JsonKey(name: "batch", nullable: true) final String? batch,
      @JsonKey(name: "bank_net_data", nullable: true)
      final String? bank_net_data,
      @JsonKey(name: "vas_data", nullable: true) final String? vas_data,
      @JsonKey(
          name: "customer_reference_number", nullable: true, defaultValue: "")
      final String? customer_reference_number,
      @JsonKey(name: "created_at", nullable: true, defaultValue: "")
      final String? created_at,
      @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
      final String? updated_at,
      @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
      final String? receipt_standard,
      @JsonKey(name: "qr_code")
      required final String qr_code}) = _$TransactionReceiptImpl;

  factory _TransactionReceipt.fromJson(Map<String, dynamic> json) =
      _$TransactionReceiptImpl.fromJson;

  @override
  @JsonKey(name: "receipt_id")
  String get receipt_id;
  @override
  @JsonKey(name: "transaction_uuid")
  String get transaction_uuid;
  @override
  @JsonKey(name: "merchant")
  Merchant get merchant;
  @override
  @JsonKey(name: "start_date")
  String get start_date;
  @override
  @JsonKey(name: "start_time")
  String get start_time;
  @override
  @JsonKey(name: "card_scheme_sponsor")
  String get card_scheme_sponsor;
  @override
  @JsonKey(name: "tid")
  String get tid;
  @override
  @JsonKey(name: "system_trace_audit_number", nullable: true)
  String? get system_trace_audit_number;
  @override
  @JsonKey(name: "pos_software_version_number")
  String get pos_software_version_number;
  @override
  @JsonKey(name: "retrieval_reference_number", nullable: true)
  String? get retrieval_reference_number;
  @override
  @JsonKey(name: "card_scheme")
  NameField<String> get card_scheme;
  @override
  @JsonKey(name: "transaction_type")
  NameField<String> get transaction_type;
  @override
  @JsonKey(name: "pan")
  String get pan;
  @override
  @JsonKey(name: "card_expiration", nullable: true)
  String? get card_expiration;
  @override
  @JsonKey(name: "amount_authorized")
  LabelField<String> get amount_authorized;
  @override
  @JsonKey(name: "amount_other", nullable: true)
  LabelField<String>? get amount_other;
  @override
  @JsonKey(name: "currency")
  LocalizationField get currency;
  @override
  @JsonKey(name: "status_message")
  LocalizationField get status_message;
  @override
  @JsonKey(name: "is_approved")
  bool get is_approved;
  @override
  @JsonKey(name: "is_refunded")
  bool get is_refunded;
  @override
  @JsonKey(name: "is_reversed")
  bool get is_reversed;
  @override
  @JsonKey(name: "approval_code", nullable: true)
  LabelField<String>? get approval_code;
  @override
  @JsonKey(name: "verification_method")
  LocalizationField get verification_method;
  @override
  @JsonKey(name: "end_date")
  String get end_date;
  @override
  @JsonKey(name: "end_time")
  String get end_time;
  @override
  @JsonKey(name: "receipt_line_one", nullable: true)
  LocalizationField? get receipt_line_one;
  @override
  @JsonKey(name: "thanks_message", nullable: true)
  LocalizationField? get thanks_message;
  @override
  @JsonKey(name: "save_receipt_message", nullable: true)
  LocalizationField? get save_receipt_message;
  @override
  @JsonKey(name: "entry_mode", nullable: true)
  String? get entry_mode;
  @override
  @JsonKey(name: "action_code")
  String get action_code;
  @override
  @JsonKey(name: "application_identifier")
  String get application_identifier;
  @override
  @JsonKey(name: "terminal_verification_result")
  String get terminal_verification_result;
  @override
  @JsonKey(name: "transaction_state_information", nullable: true)
  String? get transaction_state_information;
  @override
  @JsonKey(name: "cardholader_verfication_result")
  String get cardholader_verfication_result;
  @override
  @JsonKey(name: "cryptogram_information_data", nullable: true)
  String? get cryptogram_information_data;
  @override
  @JsonKey(name: "application_cryptogram", nullable: true)
  String? get application_cryptogram;
  @override
  @JsonKey(name: "kernel_id", nullable: true)
  String? get kernel_id;
  @override
  @JsonKey(name: "payment_account_reference", nullable: true)
  String? get payment_account_reference;
  @override
  @JsonKey(name: "receipt_line_two", nullable: true)
  LocalizationField? get receipt_line_two;
  @override
  @JsonKey(name: "pan_suffix", nullable: true)
  String? get pan_suffix;
  @override
  @JsonKey(name: "auth", nullable: true)
  String? get auth;
  @override
  @JsonKey(name: "serial_num", nullable: true)
  String? get serial_num;
  @override
  @JsonKey(name: "invoice", nullable: true)
  String? get invoice;
  @override
  @JsonKey(name: "batch", nullable: true)
  String? get batch;
  @override
  @JsonKey(name: "bank_net_data", nullable: true)
  String? get bank_net_data;
  @override
  @JsonKey(name: "vas_data", nullable: true)
  String? get vas_data;
  @override
  @JsonKey(name: "customer_reference_number", nullable: true, defaultValue: "")
  String? get customer_reference_number;
  @override
  @JsonKey(name: "created_at", nullable: true, defaultValue: "")
  String? get created_at;
  @override
  @JsonKey(name: "updated_at", nullable: true, defaultValue: "")
  String? get updated_at;
  @override
  @JsonKey(name: "receipt_standard", nullable: true, defaultValue: "")
  String? get receipt_standard;
  @override
  @JsonKey(name: "qr_code")
  String get qr_code;
  @override
  @JsonKey(ignore: true)
  _$$TransactionReceiptImplCopyWith<_$TransactionReceiptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
