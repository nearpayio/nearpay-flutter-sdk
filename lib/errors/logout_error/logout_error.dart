import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'logout_error.g.dart';
part 'logout_error.freezed.dart';

abstract class LogoutError {
  const LogoutError();

  factory LogoutError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
abstract class LogoutAuthenticationFailed extends LogoutError with _$LogoutAuthenticationFailed {
  const factory LogoutAuthenticationFailed({required String message}) = _LogoutAuthenticationFailed;
  const LogoutAuthenticationFailed._();
  factory LogoutAuthenticationFailed.fromJson(Map<String, dynamic> json) => _$LogoutAuthenticationFailedFromJson(json);
}

@Freezed()
abstract class LogoutFailureMessage extends LogoutError with _$LogoutFailureMessage {
  const factory LogoutFailureMessage({required String message}) = _LogoutFailureMessage;

  const LogoutFailureMessage._();
  factory LogoutFailureMessage.fromJson(Map<String, dynamic> json) => _$LogoutFailureMessageFromJson(json);
}

@Freezed()
abstract class LogoutInvalidStatus extends LogoutError with _$LogoutInvalidStatus {
  const factory LogoutInvalidStatus({required}) = _LogoutInvalidStatus;

  const LogoutInvalidStatus._();
  factory LogoutInvalidStatus.fromJson(Map<String, dynamic> json) => _$LogoutInvalidStatusFromJson(json);
}

@Freezed()
abstract class LogoutGeneralFailure extends LogoutError with _$LogoutGeneralFailure {
  const factory LogoutGeneralFailure({required}) = _LogoutGeneralFailure;

  const LogoutGeneralFailure._();
  factory LogoutGeneralFailure.fromJson(Map<String, dynamic> json) => _$LogoutGeneralFailureFromJson(json);
}

@Freezed()
abstract class AlreadyLogoutFailure extends LogoutError with _$AlreadyLogoutFailure {
  const factory AlreadyLogoutFailure({required}) = _AlreadyLogoutFailure;

  const AlreadyLogoutFailure._();
  factory AlreadyLogoutFailure.fromJson(Map<String, dynamic> json) => _$AlreadyLogoutFailureFromJson(json);
}
