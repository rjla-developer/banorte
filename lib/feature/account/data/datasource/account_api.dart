import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class AccountApi {
  final Dio dio;

  AccountApi() : dio = GetIt.instance<Dio>(instanceName: "baseUrl1");

  Future<Response> getAllTransfers() {
    return dio.get("/api/movements");
  }

}