import 'package:celula_2_project/core/exception/global_exception.dart';
import 'package:celula_2_project/feature/account/data/datasource/account_api.dart';
import 'package:celula_2_project/feature/account/data/exceptions/account_exceptions.dart';
import 'package:celula_2_project/feature/account/domain/models/accout_domain_model.dart';
import 'package:celula_2_project/feature/account/domain/repository/account_repository.dart';
import 'package:dio/dio.dart';

class AccountRepositoryimpl extends AccountRepository {
  final AccountApi accountApi;

  AccountRepositoryimpl(this.accountApi);
  @override
  Future<List<AccountDomainModel>> getAllTransfers() async {
    try {
      final response = await accountApi.getAllTransfers();
      if (response.statusCode == 200) {
        return response.data;
      } else {
        switch (response.statusCode) {
          case 401:
            throw AccountExceptions;
        }
      }
    } on DioException catch (error) {
      return _handleDioError(error);
    }
    throw UnimplementedError();
  }

  List<AccountDomainModel> _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      throw GlobalException.timeoutException;
    } else if (error.type == DioExceptionType.connectionError) {
      throw GlobalException.connectionException;
    }
    throw GlobalException("Unknown Exception");
  }
}