class OriginAccountTranferDataModel {
  final String originTransfer;
  final String accountNumber;
  final String nameBank;
  final String date;
  final String concept;

  OriginAccountTranferDataModel(this.accountNumber, this.nameBank, this.date,
      this.concept, this.originTransfer);
}
