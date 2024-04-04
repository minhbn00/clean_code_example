import 'package:example_ca/feature_auth/data/remote/models/user_login_response_dto.dart';

class UserModel {
  final int id;
  final String displayName;

  UserModel(this.id, this.displayName);

  static UserModel fromBackendApiDto(UserLoginResponseDto loginResult) {
    return UserModel(
        loginResult.id,
        [loginResult.firstName, loginResult.lastName].where((element) => element!=null).join(" ")
    );
  }
}
