import 'package:freezed_annotation/freezed_annotation.dart';
part '../gen/login_model.freezed.dart';
part '../gen/login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    String? email,
    String? password,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "fname") String? firstName,
    @JsonKey(name: "lname") String? lastName,
    @JsonKey(name: "username") String? userName,
    String? email,
    @JsonKey(name: "profile_pic") String? profilePic,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    String? message,
    @JsonKey(name: "response_code") int? responseCode,
    UserModel? user,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
}
