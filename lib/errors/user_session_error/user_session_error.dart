import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'user_session_error.g.dart';
part 'user_session_error.freezed.dart';

abstract class UserSessionError {
  UserSessionError() {}

  factory UserSessionError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class UserSessionAuthenticationFailed extends UserSessionError
    with _$UserSessionAuthenticationFailed {
  const factory UserSessionAuthenticationFailed({required String message}) =
      _UserSessionAuthenticationFailed;

  factory UserSessionAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$UserSessionAuthenticationFailedFromJson(json);
}

@Freezed()
class UserSessionFailureMessage extends UserSessionError
    with _$UserSessionFailureMessage {
  const factory UserSessionFailureMessage({required String message}) =
      _UserSessionFailureMessage;

  factory UserSessionFailureMessage.fromJson(Map<String, dynamic> json) =>
      _$UserSessionFailureMessageFromJson(json);
}

@Freezed()
class UserSessionInvalidStatus extends UserSessionError
    with _$UserSessionInvalidStatus {
  const factory UserSessionInvalidStatus({required}) =
      _UserSessionInvalidStatus;

  factory UserSessionInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$UserSessionInvalidStatusFromJson(json);
}

@Freezed()
class UserSessionGeneralFailure extends UserSessionError
    with _$UserSessionGeneralFailure {
  const factory UserSessionGeneralFailure({required}) =
      _UserSessionGeneralFailure;

  factory UserSessionGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$UserSessionGeneralFailureFromJson(json);
}

// @JsonSerializable(explicitToJson: true)
// class SessionDeclined extends SessionError {
//   SessionDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory SessionDeclined.fromJson(Map json) =>
//       _$SessionDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$SessionDeclinedToJson(this);
// }
