import 'package:celula_2_project/core/architecture/base_background_usecase.dart';
import 'package:celula_2_project/feature/account/domain/models/accout_domain_model.dart';
import 'package:celula_2_project/feature/account/domain/repository/account_repository.dart';

class GetAllTransfersUsecase extends BaseBackgroundUsecase
<void, List<AccountDomainModel>>{
final AccountRepository accountRepository;
GetAllTransfersUsecase(this.accountRepository);
  @override
  Future<List<AccountDomainModel>> executeInBackground([void input]) {
    return accountRepository.getAllTransfers();
  } 
}