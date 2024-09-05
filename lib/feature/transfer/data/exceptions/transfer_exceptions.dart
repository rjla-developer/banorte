import 'package:celula_2_project/core/exception/global_exception.dart';

class TransferExceptions implements GlobalException {
  @override
  final String message;

  TransferExceptions(this.message);
}
