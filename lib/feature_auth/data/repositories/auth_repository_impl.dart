import 'dart:math';

import 'package:example_ca/feature_auth/data/local/data_sources/auth_shared_preferences.dart';
import 'package:example_ca/feature_auth/data/remote/data_sources/auth_api_service.dart';
import 'package:example_ca/feature_auth/domain/entities/login_request.dart';
import 'package:example_ca/feature_auth/domain/entities/login_response.dart';
import 'package:example_ca/feature_auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthApiService apiService;
  final AuthSharedPreferences authSharedPreferences;

  AuthRepositoryImpl(this.apiService, this.authSharedPreferences);

  @override
  Future<bool> hasLoggedIn() async {
    final accessToken = authSharedPreferences.getUserAccessToken();
    return accessToken?.isNotEmpty == true;
  }

  @override
  Future<UserModel> login(LoginRequest credential) async {
    final loginResult = await apiService.postLogin(credential.username, credential.password);
    authSharedPreferences.saveUserAccessToken(loginResult.accessToken);
    return UserModel.fromBackendApiDto(loginResult);
  }
}
