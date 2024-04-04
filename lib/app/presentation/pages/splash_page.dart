import 'package:example_ca/app/di.dart';
import 'package:example_ca/feature_auth/domain/repositories/auth_repository.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _authRepository = getIt.get<AuthRepository>();

  @override
  void initState() {
    super.initState();
    _validateUserLoggedIn();
  }

  Future _validateUserLoggedIn() async {
    final hasLoggedIn = await _authRepository.hasLoggedIn();
    if (hasLoggedIn) {
      ...
    } else {
      ...
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
