import 'package:js/js.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:rxdart/rxdart.dart';

final events = PublishSubject<Event>()
  ..stream.listen((event) {
    print('event: ${event}');
  });

// The Dart class must have `@JSExport` on it or one of its instance members.
@JSExport()
class LolBridge {
  int value = 0;
  @JSExport()
  void sendEvent(JSEvent? event) {
    value++;
    print('sendEvent ${event?.name}');
  }

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
}

@JS()
@staticInterop
class JSLolBridge {}

extension JSExt on JSLolBridge {
  external int value;
  external void sendFromDart();
  external void requestAccount();
}

@JS()
@anonymous
class JSEvent {
  external String get name;
  external String get payload;

  // Must have an unnamed factory constructor with named arguments.
  external factory JSEvent({String name, String payload});
}
