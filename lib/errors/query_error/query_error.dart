import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'query_error.g.dart';
part 'query_error.freezed.dart';

abstract class QueryError {
  QueryError() {}

  factory QueryError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class QueryAuthenticationFailed extends QueryError
    with _$QueryAuthenticationFailed {
  const factory QueryAuthenticationFailed({required String message}) =
  _QueryAuthenticationFailed;

  factory QueryAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$QueryAuthenticationFailedFromJson(json);
}

@Freezed()
class QueryFailureMessage extends QueryError
    with _$QueryFailureMessage {
  const factory QueryFailureMessage({required String message}) =
  _QueryFailureMessage;

  factory QueryFailureMessage.fromJson(Map<String, dynamic> json) =>
      _$QueryFailureMessageFromJson(json);
}

@Freezed()
class QueryInvalidStatus extends QueryError
    with _$QueryInvalidStatus {
  const factory QueryInvalidStatus({required}) =
_QueryInvalidStatus;

factory QueryInvalidStatus.fromJson(Map<String, dynamic> json) =>
_$QueryInvalidStatusFromJson(json);
}

@Freezed()
class QueryGeneralFailure extends QueryError
with _$QueryGeneralFailure {
const factory QueryGeneralFailure({required}) =
_QueryGeneralFailure;

factory QueryGeneralFailure.fromJson(Map<String, dynamic> json) =>
_$QueryGeneralFailureFromJson(json);
}


