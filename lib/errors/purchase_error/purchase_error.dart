import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nearpay_flutter_sdk/models/transaction_receipt/transaction_receipt.dart';

part 'purchase_error.g.dart';
part 'purchase_error.freezed.dart';

abstract class PurchaseError {
  PurchaseError() {}

  factory PurchaseError.fromJson(Map<String, dynamic> json) {
    throw 'abstract class';
  }
}

@Freezed()
class PurchaseRejected extends PurchaseError with _$PurchaseRejected {
  const factory PurchaseRejected({required String message}) = _PurchaseRejected;

  // PurchaseRejected({required this.message});

  // String message;

  factory PurchaseRejected.fromJson(Map<String, dynamic> json) =>
      _$PurchaseRejectedFromJson(json);
}

@Freezed()
class PurchaseDeclined extends PurchaseError with _$PurchaseDeclined {
  const factory PurchaseDeclined({required List<TransactionReceipt> receipts}) =
      _PurchaseDeclined;

  factory PurchaseDeclined.fromJson(Map<String, dynamic> json) =>
      _$PurchaseDeclinedFromJson(json);

  // Map<String, dynamic> toJson() => _$PurchaseDeclinedToJson(this);
}

@Freezed()
class PurchaseAuthenticationFailed extends PurchaseError
    with _$PurchaseAuthenticationFailed {
  const factory PurchaseAuthenticationFailed({required String message}) =
      _PurchaseAuthenticationFailed;

  factory PurchaseAuthenticationFailed.fromJson(Map<String, dynamic> json) =>
      _$PurchaseAuthenticationFailedFromJson(json);

  // Map<String, dynamic> toJson() => _$PurchaseDeclinedToJson(this);
}

@Freezed()
class PurchaseInvalidStatus extends PurchaseError with _$PurchaseInvalidStatus {
  const factory PurchaseInvalidStatus({required}) = _PurchaseInvalidStatus;

  factory PurchaseInvalidStatus.fromJson(Map<String, dynamic> json) =>
      _$PurchaseInvalidStatusFromJson(json);

  // Map<String, dynamic> toJson() => _$PurchaseDeclinedToJson(this);
}

@Freezed()
class PurchaseGeneralFailure extends PurchaseError
    with _$PurchaseGeneralFailure {
  const factory PurchaseGeneralFailure({required}) = _PurchaseGeneralFailure;

  factory PurchaseGeneralFailure.fromJson(Map<String, dynamic> json) =>
      _$PurchaseGeneralFailureFromJson(json);

  // Map<String, dynamic> toJson() => _$PurchaseDeclinedToJson(this);
}

// @JsonSerializable(explicitToJson: true)
// class PurchaseDeclined extends PurchaseError {
//   PurchaseDeclined({required this.receipts});
//   List<TransactionReceipt> receipts;

//   factory PurchaseDeclined.fromJson(Map json) =>
//       _$PurchaseDeclinedFromJson(json);

//   Map<dynamic, dynamic> toJson() => _$PurchaseDeclinedToJson(this);
// }
