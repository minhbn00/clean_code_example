import 'package:example_ca/feature_auth/domain/entities/login_request.dart';
import 'package:example_ca/feature_auth/domain/entities/login_response.dart';

abstract class AuthRepository {

  Future<UserModel> login(LoginRequest credential);

  Future<bool> hasLoggedIn();
}
