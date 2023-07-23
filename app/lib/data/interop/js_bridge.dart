import 'package:js/js.dart';
import 'package:logger/logger.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/model/blockchain_meme.dart';
import 'package:rxdart/rxdart.dart';

final events = PublishSubject<Event>()
  ..stream.listen((event) {
    Logger().d('event emitted: ${event.runtimeType} $event');
  });

// The Dart class must have `@JSExport` on it or one of its instance members.
@JSExport()
class LolBridge {
  @JSExport()
  void onAccountChanged(String accountId) {
    events.add(AccountChanged(accountId: accountId));
  }

  @JSExport()
  void onChainChanged(int chainId) {
    events.add(ChainChanged(chainId: chainId.toString()));
  }

  @JSExport()
  void onAccountDisconnected() {
    events.add(AccountDisconected());
  }

  @JSExport()
  void onMetamaskMissing() {
    events.add(MetamaskMissing());
  }

  @JSExport()
  void onTotalMemeCount(int count) {
    events.add(TotalMemeCount(value: count));
  }

  @JSExport()
  void onMemeMintSent() {
    events.add(MintTransactionSent());
  }

  @JSExport()
  void onMintTxConfirmed(String id, String? payload) {
    events.add(MintTransactionConfirmed(id, payload));
  }

  @JSExport()
  void onMintTxFailed(String error) {
    events.add(MintTransactionFailed(error));
  }

  @JSExport()
  void onMemeFetched(int totalMemes, JSMeme meme) {
    events.add(
      MemeFetched(
        totalMemes: totalMemes,
        meme: BlockchainMeme(id: meme.id, uri: meme.uri),
      ),
    );
  }
}

@JS()
@staticInterop
class JSLolBridge {}

extension JSExt on JSLolBridge {
  external int value;
  external void checkConnection();
  external void sendFromDart();
  external void requestAccount();
  external void fetchAll();
  external void mintMeme(String uri);
}

@JS()
@anonymous
class JSMeme {
  external String get id;
  external String get uri;

  // Must have an unnamed factory constructor with named arguments.
  external factory JSMeme({String id, String uri});
}
