import '../exception/global_exception.dart';
import 'base_background_interface.dart';

abstract class BaseBackgroundUsecase<INPUT, OUTPUT>
    implements BaseBackgroundInterface<INPUT, OUTPUT> {
  Future<OUTPUT> executeInBackground([INPUT? input]);

  @override
  Future<Result<OUTPUT>> execute([INPUT? input]) async {
    try {
      final result = await executeInBackground(input);
      return Result.success(result);
    } on GlobalException catch (domainException) {
      return Result.failure(domainException);
    } on Exception catch (exception) {
      return Result.failure(exception);
    }
  }
}
