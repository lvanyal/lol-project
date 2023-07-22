import 'package:lol_app/data/converter/meme_converter.dart';
import 'package:lol_app/data/interop/js_bridge.dart';
import 'package:lol_app/domain/model/blockchain_meme.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/repository/main_repository.dart';

class MainRepositoryImpl implements MainRepository {
  final JSLolBridge bridge;
  final MemeConverter memeConverter;

  MainRepositoryImpl({
    required this.bridge,
    required this.memeConverter,
  });

  @override
  Stream<Event> eventStream() => events.stream;

  @override
  void requestAccount() => bridge.requestAccount();

  @override
  void fetchAll() => bridge.fetchAll();

  @override
  void mintMeme(Meme meme) {
    final blockchainMeme = memeConverter.toBlockchain(meme);
    bridge.mintMeme(blockchainMeme.uri);
  }
}
