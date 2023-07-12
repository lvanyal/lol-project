import 'package:js/js.dart';
import 'package:logger/logger.dart';
import 'package:lol_app/domain/model/event.dart';
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
}

@JS()
@staticInterop
class JSLolBridge {}

extension JSExt on JSLolBridge {
  external int value;
  external void sendFromDart();
  external void requestAccount();
  external void fetchAll();
}

@JS()
@anonymous
class JSEvent {
  external String get name;
  external String get payload;

  // Must have an unnamed factory constructor with named arguments.
  external factory JSEvent({String name, String payload});
}
