import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'reconcile_error.g.dart';
part 'reconcile_error.freezed.dart';

abstract class ReconcileError {
  ReconcileError() {}

  factory ReconcileError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class ReconcileFailureMessage extends ReconcileError
    with _$ReconcileFailureMessage {
  const factory ReconcileFailureMessage({required String message}) =
      _ReconcileFailureMessage;

  factory ReconcileFailureMessage.fromJson(Map<String, dynamic> json) =>
      _$ReconcileFailureMessageFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
class ReconcileAuthenticationFailed extends ReconcileError
    with _$ReconcileAuthenticationFailed {
  const factory ReconcileAuthenticationFailed({required String message}) =
      _ReconcileAuthenticationFailed;

  factory ReconcileAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$ReconcileAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
class ReconcileInvalidStatus extends ReconcileError
    with _$ReconcileInvalidStatus {
  const factory ReconcileInvalidStatus({required}) = _ReconcileInvalidStatus;

  factory ReconcileInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$ReconcileInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$ReconcileDeclinedToJson(this);
}

@Freezed()
class ReconcileGeneralFailure extends ReconcileError
    with _$ReconcileGeneralFailure {
  const factory ReconcileGeneralFailure({required}) = _ReconcileGeneralFailure;

  factory ReconcileGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$ReconcileGeneralFailureFromJson(json);

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
