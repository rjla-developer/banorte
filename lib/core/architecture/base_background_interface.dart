abstract class BaseBackgroundInterface<INPUT, OUPUT> {
  Future<Result<OUPUT>> execute([INPUT? input]);
}

class Result<T> {
  final T? data;
  final Exception? error;

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;
}