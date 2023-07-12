import 'package:lol_app/data/interop/js_bridge.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/repository/main_repository.dart';

class MainRepositoryImpl implements MainRepository {
  final JSLolBridge _bridge;

  MainRepositoryImpl({required JSLolBridge bridge}) : _bridge = bridge;
  @override
  Stream<Event> eventStream() => events.stream;

  @override
  void requestAccount() => _bridge.requestAccount();
}
