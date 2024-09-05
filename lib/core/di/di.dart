import 'package:celula_2_project/core/di/network_module.dart';
import 'package:celula_2_project/core/di/repository_module.dart';
import 'package:celula_2_project/core/di/usecases_module.dart';
import 'package:get_it/get_it.dart';
final getIt = GetIt.instance;

void setupDI(){
  setupNetworkModule();
  setupRepositoryModule();
  setupUseCasesModule();
  
}
