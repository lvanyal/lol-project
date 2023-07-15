import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:lol_app/data/impl/main_repository_impl.dart';
import 'package:lol_app/data/interop/js_bridge.dart';
import 'package:lol_app/domain/repository/main_repository.dart';
import 'package:lol_app/screens/home/home_cubit.dart';

final getIt = GetIt.instance;

class Dependencies {
  void resolveDependencies(JSLolBridge bridge) {
    /// infrastructure
    getIt.registerSingleton(bridge);
    getIt.registerSingleton(Logger());

    /// data
    getIt.registerSingleton<MainRepository>(MainRepositoryImpl(bridge: bridge));

    /// bloc
    getIt.registerFactory(() => HomeCubit(getIt<MainRepository>()));
  }
}
