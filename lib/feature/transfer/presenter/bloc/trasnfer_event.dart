part of 'trasnfer_bloc.dart';

sealed class TrasnferEvent {}

class GetTransferDetailEvent extends TrasnferEvent {
  final String idTransfer;
  GetTransferDetailEvent(this.idTransfer);
}
