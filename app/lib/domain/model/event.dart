sealed class Event {}

class AccountChanged extends Event {
  final String accountId;

  AccountChanged({required this.accountId});
}

class ChainChanged extends Event {
  final String chainId;

  ChainChanged({required this.chainId});
}

class AccountDisconected extends Event {}

class MetamaskMissing extends Event {}

class TotalMemeCount extends Event {
  final int value;

  TotalMemeCount({required this.value});

  @override
  String toString() {
    return 'TotalMemeCount($value)';
  }
}

sealed class Error extends Event {}
