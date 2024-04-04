import 'package:example_ca/app/di.dart';
import 'package:example_ca/feature_auth/domain/entities/login_request.dart';
import 'package:example_ca/feature_auth/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _authRepository = getIt.get<AuthRepository>();
  LoginRequest _loginRequest = LoginRequest('', '');

  void _doLogin() async {
    final userResult = await _authRepository.login(_loginRequest);
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
