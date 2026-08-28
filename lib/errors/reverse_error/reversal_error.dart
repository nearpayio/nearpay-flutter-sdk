import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'reversal_error.g.dart';
part 'reversal_error.freezed.dart';

abstract class ReversalError {
  const ReversalError();

  factory ReversalError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
abstract class ReversalFailureMessage extends ReversalError with _$ReversalFailureMessage {
  const factory ReversalFailureMessage({required String message}) = _ReversalFailureMessage;
  const ReversalFailureMessage._();

  factory ReversalFailureMessage.fromJson(Map<String, dynamic> json) => _$ReversalFailureMessageFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
abstract class ReversalAuthenticationFailed extends ReversalError with _$ReversalAuthenticationFailed {
  const factory ReversalAuthenticationFailed({required String message}) = _ReversalAuthenticationFailed;
  const ReversalAuthenticationFailed._();

  factory ReversalAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$ReversalAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
abstract class ReversalInvalidStatus extends ReversalError with _$ReversalInvalidStatus {
  const factory ReversalInvalidStatus({required}) = _ReversalInvalidStatus;
  const ReversalInvalidStatus._();

  factory ReversalInvalidStatus.fromJson(Map<String, dynamic> json) => _$ReversalInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
abstract class ReversalGeneralFailure extends ReversalError with _$ReversalGeneralFailure {
  const factory ReversalGeneralFailure({required}) = _ReversalGeneralFailure;
  const ReversalGeneralFailure._();

  factory ReversalGeneralFailure.fromJson(Map<String, dynamic> json) => _$ReversalGeneralFailureFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class ReversalDeclined extends ReversalError {
//   ReversalDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory ReversalDeclined.fromJson(Map json) =>
//       _$ReversalDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$ReversalDeclinedToJson(this);
// }
