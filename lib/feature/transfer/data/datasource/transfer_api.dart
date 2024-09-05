import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class TransferApi {
  final Dio dio;

  TransferApi() : dio = GetIt.instance<Dio>(instanceName: "baseUrl1");

  Future<Response> getTransferDetail(String idTransfer) {
    return dio.get("/api/movements/$idTransfer");
  }

  Future<Response> deleteTransfer(String idTransfer) {
    return dio.delete("/api/movements/$idTransfer");
  }
}
