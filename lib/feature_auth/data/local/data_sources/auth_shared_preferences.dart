import 'package:shared_preferences/shared_preferences.dart';

class AuthSharedPreferences {
  static const kAccessTokenKey = 'auth_access_token';
  final SharedPreferences sharedPreferences;

  AuthSharedPreferences(this.sharedPreferences);

  Future saveUserAccessToken(String? accessToken) async {
    if (accessToken?.isNotEmpty == true) {
      await sharedPreferences.setString(kAccessTokenKey, accessToken!);
      return;
    }
    await sharedPreferences.remove(kAccessTokenKey);
  }

  String? getUserAccessToken() {
    return sharedPreferences.getString(kAccessTokenKey);
  }
}
