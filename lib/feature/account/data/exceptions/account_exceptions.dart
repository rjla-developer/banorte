import 'package:celula_2_project/core/exception/global_exception.dart';

class AccountExceptions implements GlobalException{
 @override
  final String message;

  AccountExceptions(this.message);

}