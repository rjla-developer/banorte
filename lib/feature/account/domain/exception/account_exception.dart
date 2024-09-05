import 'package:celula_2_project/core/exception/global_exception.dart';

class AccountException implements GlobalException{
  @override
  final String message;
  AccountException(this.message);
  static final emptyDataException = AccountException("List cannot be empty");
}