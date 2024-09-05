import 'package:celula_2_project/core/architecture/base_background_usecase.dart';
import 'package:celula_2_project/feature/transfer/domain/repository/transfer_repository.dart';

class DeleteTranfersUsecase extends BaseBackgroundUsecase<String, void> {
  final TransferRepository transferRepository;

  DeleteTranfersUsecase(this.transferRepository);

  @override
  Future<void> executeInBackground([String? input]) {
    if (input != null) {
      transferRepository.deleteTranfer(input);
    }

    throw UnimplementedError();
  }
}
