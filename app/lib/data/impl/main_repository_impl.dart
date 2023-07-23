import 'package:lol_app/data/converter/meme_converter.dart';
import 'package:lol_app/data/interop/js_bridge.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/repository/meme_repository.dart';
import 'package:rxdart/rxdart.dart';

class MemeRepositoryImpl implements MainRepository {
  final JSLolBridge bridge;
  final MemeConverter memeConverter;

  final _cache = <Type, Event>{};

  MemeRepositoryImpl({
    required this.bridge,
    required this.memeConverter,
  });

  @override
  Stream<Event> eventStream() => events.stream.doOnData((event) {
        _cache[event.runtimeType] = event;
      });

  @override
  void requestAccount() => bridge.requestAccount();

  @override
  void fetchAll() => bridge.fetchAll();

  @override
  void mintMeme(Meme meme) {
    final blockchainMeme = memeConverter.toBlockchain(meme);
    bridge.mintMeme(blockchainMeme.uri);
  }

  @override
  String? get accountId =>
      (_cache[AccountChanged] as AccountChanged?)?.accountId;
}
