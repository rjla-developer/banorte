
class AccountDataModel {
  final String id;
  final double amount;
  final String date;
  final String type;

  AccountDataModel(
      {required this.id,
      required this.amount,
      required this.date,
      required this.type});

  factory AccountDataModel.fromJson(Map<String, dynamic> json) {
    return AccountDataModel(
        id: json["token"],
        amount: json["amount"],
        date: json["date"],
        type: json["type"]);
  }
}
