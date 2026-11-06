import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_session.g.dart';
part 'user_session.freezed.dart';

@Freezed()
class UserSession with _$UserSession {
  const factory UserSession({
    @JsonKey(name: "userName", defaultValue: null) String? userName,
    @JsonKey(name: "phone", defaultValue: null) String? phone,
    @JsonKey(name: "email", defaultValue: null) String? email,
    @JsonKey(name: "tid", defaultValue: null) String? tid,
    @JsonKey(name: "merchantEn", defaultValue: null) String? merchantEn,
    @JsonKey(name: "merchantAr", defaultValue: null) String? merchantAr,
  }) = _UserSession;

  factory UserSession.fromJson(Map<String, dynamic> json) =>
      _$UserSessionFromJson(json);
}
