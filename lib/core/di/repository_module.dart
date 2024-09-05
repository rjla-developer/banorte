import 'package:celula_2_project/core/di/di.dart';
import 'package:celula_2_project/feature/account/data/datasource/account_api.dart';
import 'package:celula_2_project/feature/account/data/repository/account_repositoryImpl.dart';
import 'package:celula_2_project/feature/account/domain/repository/account_repository.dart';

void setupRepositoryModule(){

  // Account Repository
  getIt.registerLazySingleton<AccountApi>(() => AccountApi());
  getIt.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryimpl(getIt<AccountApi>()),
  );
}