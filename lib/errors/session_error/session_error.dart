import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'session_error.g.dart';
part 'session_error.freezed.dart';

abstract class SessionError {
  const SessionError();

  factory SessionError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
abstract class SessionAuthenticationFailed extends SessionError with _$SessionAuthenticationFailed {
  const factory SessionAuthenticationFailed({required String message}) = _SessionAuthenticationFailed;
  const SessionAuthenticationFailed._();

  factory SessionAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$SessionAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$SessionDeclinedToJson(this);
}

@Freezed()
abstract class SessionFailureMessage extends SessionError with _$SessionFailureMessage {
  const factory SessionFailureMessage({required String message}) = _SessionFailureMessage;
  const SessionFailureMessage._();

  factory SessionFailureMessage.fromJson(Map<String, dynamic> json) => _$SessionFailureMessageFromJson(json);

  // Map<String, dynamic> toJson() => _$SessionDeclinedToJson(this);
}

@Freezed()
abstract class SessionInvalidStatus extends SessionError with _$SessionInvalidStatus {
  const factory SessionInvalidStatus({required}) = _SessionInvalidStatus;
  const SessionInvalidStatus._();

  factory SessionInvalidStatus.fromJson(Map<String, dynamic> json) => _$SessionInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$SessionDeclinedToJson(this);
}

@Freezed()
abstract class SessionGeneralFailure extends SessionError with _$SessionGeneralFailure {
  const factory SessionGeneralFailure({required}) = _SessionGeneralFailure;
  const SessionGeneralFailure._();

  factory SessionGeneralFailure.fromJson(Map<String, dynamic> json) => _$SessionGeneralFailureFromJson(json);

  // Map<String, dynamic> toJson() => _$SessionDeclinedToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class SessionDeclined extends SessionError {
//   SessionDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory SessionDeclined.fromJson(Map json) =>
//       _$SessionDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$SessionDeclinedToJson(this);
// }
