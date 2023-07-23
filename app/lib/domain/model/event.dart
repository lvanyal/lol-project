import 'package:lol_app/domain/model/blockchain_meme.dart';

sealed class Event {}

class AccountChanged extends Event {
  final String accountId;

  AccountChanged({required this.accountId});

  @override
  String toString() {
    return 'AccountChanged($accountId)';
  }
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

class MintTransactionSent extends Event {}

class MintTransactionConfirmed extends Event {
  final String id;
  final String? payload;

  MintTransactionConfirmed(this.id, this.payload);

  @override
  String toString() {
    return 'MemeMinted($id)';
  }
}

class MintTransactionFailed extends Event {
  final String error;

  MintTransactionFailed(this.error);
}

class MemeFetched extends Event {
  final int totalMemes;
  final BlockchainMeme meme;

  MemeFetched({required this.totalMemes, required this.meme});

  @override
  String toString() {
    return meme.toString();
  }
}

sealed class Error extends Event {}
