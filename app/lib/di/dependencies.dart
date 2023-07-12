import 'package:get_it/get_it.dart';
import 'package:lol_app/data/impl/main_repository_impl.dart';
import 'package:lol_app/data/interop/js_bridge.dart';
import 'package:lol_app/domain/repository/main_repository.dart';
import 'package:lol_app/home/home_cubit.dart';

final getIt = GetIt.instance;
void resolveDependencies(JSLolBridge bridge) {
  /// infrastructure
  getIt.registerSingleton(bridge);

  /// data
  getIt.registerSingleton<MainRepository>(MainRepositoryImpl(bridge: bridge));

  /// bloc
  getIt.registerFactory(() => HomeCubit(getIt<MainRepository>()));
}
