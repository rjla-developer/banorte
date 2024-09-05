import 'package:celula_2_project/feature/transfer/data/models/transfer_detail_model.dart';
import 'package:celula_2_project/feature/transfer/domain/models/transfer_detail_model.dart';

extension TransferDetailDataModelMapper on TransferDetailDataModel {
  TransferDetailDomainModel mapToDomain() {
    return TransferDetailDomainModel(
        amount,
        commision,
        taxIVA,
        idTransfer,
        reference,
        trackingKey,
        favorite,
        type,
        status,
        originName,
        originAccount,
        originBank,
        originReference,
        destinationName,
        destinationAccount,
        destinationBank,
        concept);
  }
}
