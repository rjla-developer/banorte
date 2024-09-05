import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//Change baseUrl
void setupNetworkModule() {
  GetIt.instance.registerLazySingleton<Dio>(() => Dio(BaseOptions(
      baseUrl: "https://api.baseurl1.com",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30)
      )),
      instanceName: "baseUrl1");

}