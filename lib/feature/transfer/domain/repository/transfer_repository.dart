import 'package:celula_2_project/feature/transfer/domain/models/transfer_detail_model.dart';

abstract class TransferRepository {
  Future<TransferDetailDomainModel> getTransferDetail(String idTransfer);
  void deleteTranfer(String idTransfer);
}
