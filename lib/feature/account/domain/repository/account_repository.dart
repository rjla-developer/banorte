import 'package:celula_2_project/feature/account/domain/models/accout_domain_model.dart';

abstract class AccountRepository{
  Future<List<AccountDomainModel>> getAllTransfers();
}