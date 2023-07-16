import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class StateObserver extends BlocObserver {
  final Logger logger;

  StateObserver({required this.logger});
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    logger.d(change.toString());
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('ERROR', error = error, stackTrace = stackTrace);
  }
}
