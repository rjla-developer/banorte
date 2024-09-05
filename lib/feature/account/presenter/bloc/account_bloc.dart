import 'package:celula_2_project/feature/account/domain/exception/account_exception.dart';
import 'package:celula_2_project/feature/account/domain/usecases/get_all_transfers_usecase.dart';
import 'package:celula_2_project/feature/account/presenter/bloc/account_event.dart';
import 'package:celula_2_project/feature/account/presenter/bloc/account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final GetAllTransfersUsecase getAllTransfersUsecase;
  AccountBloc(this.getAllTransfersUsecase) 
  : super(const AccountInitialState()) {
    on<GotAllTransfers>(_onGotAllTransfers);
  }

  void _onGotAllTransfers(
      GotAllTransfers event, Emitter<AccountState> emit) async {
    emit(const AccountLoadingState());

    final result = await getAllTransfersUsecase.execute();

    if (result.data != null){
      emit (const AccountSuccessState());
    } else {
      final errorMessage = result.error is AccountException
          ? (result.error as AccountException).message
          : 'Error inesperado: ${result.error.toString()}';
      emit(AccountErrorState(errorMessage));
    }
  }
}
