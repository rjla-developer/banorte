part of 'trasnfer_bloc.dart';

sealed class TrasnferState {
  const TrasnferState();
}

final class TrasnferInitialState extends TrasnferState {}

class TransferLoadingState extends TrasnferState {
  const TransferLoadingState();
}

class TransferSuccesState extends TrasnferState {
  final TransferDetailDomainModel? transferDetailDomainModel;
  const TransferSuccesState(this.transferDetailDomainModel);
}

class TransferErrorState extends TrasnferState {
  final String message;
  const TransferErrorState(this.message);
}
