import 'package:celula_2_project/core/architecture/base_background_usecase.dart';
import 'package:celula_2_project/feature/transfer/domain/models/transfer_detail_model.dart';
import 'package:celula_2_project/feature/transfer/domain/repository/transfer_repository.dart';

class GetTransferDetailUsecase
    extends BaseBackgroundUsecase<String, TransferDetailDomainModel> {
  final TransferRepository transferRepository;

  GetTransferDetailUsecase(this.transferRepository);

  @override
  Future<TransferDetailDomainModel> executeInBackground([String? input]) async {
    if (input != null) {
      return await transferRepository.getTransferDetail(input);
    }
    throw UnimplementedError();
  }
}
