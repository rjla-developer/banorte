class TransferDetailDataModel {
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

  TransferDetailDataModel({
    required this.amount,
    required this.commision,
    required this.taxIVA,
    required this.idTransfer,
    required this.reference,
    required this.trackingKey,
    required this.favorite,
    required this.type,
    required this.status,
    required this.originName,
    required this.originAccount,
    required this.originBank,
    required this.originReference,
    required this.destinationName,
    required this.destinationAccount,
    required this.destinationBank,
    required this.concept,
  });

  factory TransferDetailDataModel.fromJson(Map<String, dynamic> json) {
    return TransferDetailDataModel(
      amount: json['amount'],
      commision: json['commision'],
      taxIVA: json['vat'],
      idTransfer: json['id'],
      reference: json['reference'],
      trackingKey: json['trackingKey'],
      favorite: json['favorite'],
      type: json['type'],
      status: json['status'],
      originName: json['originName'],
      originAccount: json['originAccount'],
      originBank: json['originBank'],
      originReference: json['originReference'],
      destinationName: json['destinationName'],
      destinationAccount: json['destinationAccount'],
      destinationBank: json['destinationBank'],
      concept: json['concept'],
    );
  }
}
