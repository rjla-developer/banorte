class TransferDetailDomainModel {
  final double amount;
  final double commision;
  final double taxIVA;
  final String idTransfer;
  final String reference;
  final String trackingKey;
  final bool favorite;
  final String type;
  final String status;
  final String originName;
  final String originAccount;
  final String originBank;
  final String originReference;
  final String destinationName;
  final String destinationAccount;
  final String destinationBank;
  final String concept;

  TransferDetailDomainModel(
      this.amount,
      this.commision,
      this.taxIVA,
      this.idTransfer,
      this.reference,
      this.trackingKey,
      this.favorite,
      this.type,
      this.status,
      this.originName,
      this.originAccount,
      this.originBank,
      this.originReference,
      this.destinationName,
      this.destinationAccount,
      this.destinationBank,
      this.concept);
}
