import 'package:bloc/bloc.dart';
import 'package:celula_2_project/feature/transfer/data/exceptions/transfer_exceptions.dart';
import 'package:celula_2_project/feature/transfer/domain/models/transfer_detail_model.dart';
import 'package:celula_2_project/feature/transfer/domain/usescases/get_transfer_detail_usecase.dart';

part 'trasnfer_event.dart';
part 'trasnfer_state.dart';

class TrasnferBloc extends Bloc<TrasnferEvent, TrasnferState> {
  final GetTransferDetailUsecase getTransferDetailUsecase;
  TrasnferBloc(this.getTransferDetailUsecase) : super(TrasnferInitialState()) {
    on<GetTransferDetailEvent>(_onGoTransfersDetil);
  }

  Future<void> _onGoTransfersDetil(
      GetTransferDetailEvent event, Emitter<TrasnferState> emit) async {
    emit(const TransferLoadingState());

    final result = await getTransferDetailUsecase.execute(event.idTransfer);

    if (result.data != null) {
      emit(TransferSuccesState(result.data));
    } else {
      final errorMessage = result.error is TransferExceptions
          ? (result.error as TransferExceptions).message
          : 'Error inesperado: ${result.error.toString()}';
      emit(TransferErrorState(errorMessage));
    }
  }
}
