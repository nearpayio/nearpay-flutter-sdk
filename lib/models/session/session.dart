import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nearpay_flutter_sdk/models/session_transaction/session_transaction.dart';

part 'session.g.dart';
part 'session.freezed.dart';

@Freezed()
class Session with _$Session {
  const factory Session(
      {@JsonKey(name: "id")
          required String id,
      @JsonKey(name: "status")
          required String status,
      @JsonKey(name: "type")
          required String type,
      @JsonKey(name: "client_id")
          required String client_id,
      @JsonKey(name: "amount")
          required String amount,
      @JsonKey(name: "expired_at")
          required String expired_at,
      @JsonKey(name: "reference_id")
          required String reference_id,
      @JsonKey(name: "created_at")
          required String created_at,
      @JsonKey(name: "updated_at")
          required String updated_at,
      @JsonKey(name: "transaction")
          required SessionTransaction transaction}) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
