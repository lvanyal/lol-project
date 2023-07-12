import 'package:lol_app/domain/model/event.dart';

abstract interface class MainRepository {
  Stream<Event> eventStream();
  void requestAccount();
  void fetchAll();
}
