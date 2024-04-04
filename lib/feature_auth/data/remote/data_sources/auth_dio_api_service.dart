import 'package:example_ca/feature_auth/data/remote/models/user_login_response_dto.dart';

class AuthDioApiService {

  Future<UserLoginResponseDto> postLogin(String username, String password) async {
    final response = await http.post(Uri.parse('/users/login/'), body: jsonEncode({
      'usn': username,
      'pwd': password,
    }));
    //...
    return UserLoginResponseDto.fromJson(jsonDecode(response.body));
  }
}
