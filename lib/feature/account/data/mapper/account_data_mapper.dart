import 'package:celula_2_project/feature/account/data/models/account_data_model.dart';
import 'package:celula_2_project/feature/account/domain/models/accout_domain_model.dart';

extension AccountDataModelMapper on AccountDataModel{
  AccountDomainModel mapToDomain(){
    return AccountDomainModel(id, amount, date, type);
  }
}