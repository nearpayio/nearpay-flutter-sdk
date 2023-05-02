import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'reversal_error.g.dart';
part 'reversal_error.freezed.dart';

abstract class ReversalError {
  ReversalError() {}

  factory ReversalError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class ReversalFailureMessage extends ReversalError
    with _$ReversalFailureMessage {
  const factory ReversalFailureMessage({required String message}) =
      _ReversalFailureMessage;

  factory ReversalFailureMessage.fromJson(Map<String, dynamic> json) =>
      _$ReversalFailureMessageFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
class ReversalAuthenticationFailed extends ReversalError
    with _$ReversalAuthenticationFailed {
  const factory ReversalAuthenticationFailed({required String message}) =
      _ReversalAuthenticationFailed;

  factory ReversalAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$ReversalAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
class ReversalInvalidStatus extends ReversalError with _$ReversalInvalidStatus {
  const factory ReversalInvalidStatus({required}) = _ReversalInvalidStatus;

  factory ReversalInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$ReversalInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$ReversalDeclinedToJson(this);
}

@Freezed()
class ReversalGeneralFailure extends ReversalError
    with _$ReversalGeneralFailure {
  const factory ReversalGeneralFailure({required}) = _ReversalGeneralFailure;

  factory ReversalGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$ReversalGeneralFailureFromJson(json);

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
