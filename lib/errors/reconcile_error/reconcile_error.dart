import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'reconcile_error.g.dart';
part 'reconcile_error.freezed.dart';

abstract class ReconcileError {
  const ReconcileError();

  factory ReconcileError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
abstract class ReconcileFailureMessage extends ReconcileError with _$ReconcileFailureMessage {
  const factory ReconcileFailureMessage({required String message}) = _ReconcileFailureMessage;
  const ReconcileFailureMessage._();

  factory ReconcileFailureMessage.fromJson(Map<String, dynamic> json) => _$ReconcileFailureMessageFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
abstract class ReconcileAuthenticationFailed extends ReconcileError with _$ReconcileAuthenticationFailed {
  const factory ReconcileAuthenticationFailed({required String message}) = _ReconcileAuthenticationFailed;
  const ReconcileAuthenticationFailed._();

  factory ReconcileAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$ReconcileAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
abstract class ReconcileInvalidStatus extends ReconcileError with _$ReconcileInvalidStatus {
  const factory ReconcileInvalidStatus({required}) = _ReconcileInvalidStatus;
  const ReconcileInvalidStatus._();

  factory ReconcileInvalidStatus.fromJson(Map<String, dynamic> json) => _$ReconcileInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
abstract class ReconcileGeneralFailure extends ReconcileError with _$ReconcileGeneralFailure {
  const factory ReconcileGeneralFailure({required}) = _ReconcileGeneralFailure;
  const ReconcileGeneralFailure._();

  factory ReconcileGeneralFailure.fromJson(Map<String, dynamic> json) => _$ReconcileGeneralFailureFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class ReconcileDeclined extends ReconcileError {
//   ReconcileDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory ReconcileDeclined.fromJson(Map json) =>
//       _$ReconcileDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
// }
