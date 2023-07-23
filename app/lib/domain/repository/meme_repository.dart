import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/model/meme.dart';

abstract interface class MainRepository {
  Stream<Event> eventStream();
  void requestAccount();
  void fetchAll();
  void mintMeme(Meme meme);
  String? get accountId;
}
