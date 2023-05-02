import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'refund_error.g.dart';
part 'refund_error.freezed.dart';

abstract class RefundError {
  RefundError() {}

  factory RefundError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class RefundRejected extends RefundError with _$RefundRejected {
  const factory RefundRejected({required String message}) = _RefundRejected;

  // RefundRejected({required this.message});

  // String message;

  factory RefundRejected.fromJson(Map<String, dynamic> json) =>
      _$RefundRejectedFromJson(json);
}

@Freezed()
class RefundDeclined extends RefundError with _$RefundDeclined {
  const factory RefundDeclined({required List<TransactionReceipt> receipts}) =
      _RefundDeclined;

  factory RefundDeclined.fromJson(Map<String, dynamic> json) =>
      _$RefundDeclinedFromJson(json);

  // Map<String, dynamic> toJson() => _$RefundDeclinedToJson(this);
}

@Freezed()
class RefundAuthenticationFailed extends RefundError
    with _$RefundAuthenticationFailed {
  const factory RefundAuthenticationFailed({required String message}) =
      _RefundAuthenticationFailed;

  factory RefundAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$RefundAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$RefundDeclinedToJson(this);
}

@Freezed()
class RefundInvalidStatus extends RefundError with _$RefundInvalidStatus {
  const factory RefundInvalidStatus({required}) = _RefundInvalidStatus;

  factory RefundInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$RefundInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$RefundDeclinedToJson(this);
}

@Freezed()
class RefundGeneralFailure extends RefundError with _$RefundGeneralFailure {
  const factory RefundGeneralFailure({required}) = _RefundGeneralFailure;

  factory RefundGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$RefundGeneralFailureFromJson(json);

  // Map<String, dynamic> toJson() => _$RefundDeclinedToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class RefundDeclined extends RefundError {
//   RefundDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory RefundDeclined.fromJson(Map json) =>
//       _$RefundDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$RefundDeclinedToJson(this);
// }
