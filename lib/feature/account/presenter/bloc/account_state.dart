sealed class AccountState {
  const AccountState();
}

class AccountInitialState extends AccountState{
  const AccountInitialState();
}

class AccountLoadingState extends AccountState{
  const AccountLoadingState();
}

class AccountSuccessState extends AccountState{
  const AccountSuccessState();
}

class AccountErrorState extends AccountState{
  final String message;
  AccountErrorState(this.message);
}