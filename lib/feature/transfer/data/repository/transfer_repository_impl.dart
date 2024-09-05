import 'package:celula_2_project/core/exception/global_exception.dart';
import 'package:celula_2_project/feature/transfer/data/datasource/transfer_api.dart';
import 'package:celula_2_project/feature/transfer/data/exceptions/transfer_exceptions.dart';
import 'package:celula_2_project/feature/transfer/domain/models/transfer_detail_model.dart';
import 'package:celula_2_project/feature/transfer/domain/repository/transfer_repository.dart';
import 'package:dio/dio.dart';

class TransferRepositoryImpl extends TransferRepository {
  final TransferApi transferApi;
  TransferRepositoryImpl(this.transferApi);

  @override
  void deleteTranfer(String idTransfer) async {
    try {
      final response = await transferApi.deleteTransfer(idTransfer);

      if (response.statusCode == 200) {
        return;
      } else {
        switch (response.statusCode) {
          case 401:
            throw TransferExceptions;
        }
      }
    } on DioException catch (error) {
      return _handleDioError(error);
    }
    throw UnimplementedError();
  }

  @override
  Future<TransferDetailDomainModel> getTransferDetail(String idTransfer) async {
    try {
      final response = await transferApi.getTransferDetail(idTransfer);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        switch (response.statusCode) {
          case 401:
            throw TransferExceptions;
        }
      }
    } on DioException catch (error) {
      return _handleTransferDetailDioError(error);
    }
    throw UnimplementedError();
  }

  TransferDetailDomainModel _handleTransferDetailDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      throw GlobalException.timeoutException;
    } else if (error.type == DioExceptionType.connectionError) {
      throw GlobalException.connectionException;
    }

    throw GlobalException("Unknow exception");
  }

  void _handleDioError(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      throw GlobalException.timeoutException;
    } else if (error.type == DioExceptionType.connectionError) {
      throw GlobalException.connectionException;
    }

    throw GlobalException("Unknow exception");
  }
}
