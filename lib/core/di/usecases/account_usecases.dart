import 'package:celula_2_project/feature/account/domain/repository/account_repository.dart';
import 'package:celula_2_project/feature/account/domain/usecases/get_all_transfers_usecase.dart';
import 'package:get_it/get_it.dart';

void setupAccountUseCase(){
final getIt = GetIt.instance;

getIt.registerLazySingleton<GetAllTransfersUsecase>(
    () => GetAllTransfersUsecase(getIt<AccountRepository>()),
  );
}