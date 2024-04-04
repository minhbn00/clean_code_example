import 'dart:convert';

import 'package:example_ca/feature_auth/data/remote/models/user_login_response_dto.dart';
import 'package:http/http.dart' as http;

class AuthApiService {

  Future<UserLoginResponseDto> postLogin(String username, String password) async {
    final response = await http.post(Uri.parse('/users/login/'), body: jsonEncode({
      'username': username,
      'password': password,
    }));
    //...
    return UserLoginResponseDto.fromJson(jsonDecode(response.body));
  }
}
