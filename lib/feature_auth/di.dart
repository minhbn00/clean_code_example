import 'package:example_ca/feature_auth/data/local/data_sources/auth_shared_preferences.dart';
import 'package:example_ca/feature_auth/data/remote/data_sources/auth_api_service.dart';
import 'package:example_ca/feature_auth/data/repositories/auth_repository_impl.dart';
import 'package:example_ca/feature_auth/domain/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future injectAuthDi(GetIt getIt) async {
  // data sources
  getIt.registerSingleton(AuthSharedPreferences(getIt.get()));
  getIt.registerSingleton(AuthApiService());
  
  // repository
  getIt.registerFactory<AuthRepository>(() => AuthRepositoryImpl(getIt.get(), getIt.get()));
}
