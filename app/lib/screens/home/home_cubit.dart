import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/repository/main_repository.dart';
import 'package:lol_app/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MainRepository _repository;
  StreamSubscription? _eventsSubscribtion;

  HomeCubit(this._repository) : super(const HomeState.loading()) {
    _repository.fetchAll();

    _eventsSubscribtion = _repository.eventStream().listen(_onEvent);
  }

  void requestAccount() => _repository.requestAccount();

  @override
  Future<void> close() {
    _eventsSubscribtion?.cancel();
    return super.close();
  }

  void _onEvent(Event event) {
    switch (event) {
      case MemeFetched():
        _onNewMemeFetched(event);
        break;
      case AccountChanged():
        _onAccountChanged(event.accountId);
        break;
      default:
        break;
    }
  }

  void _onNewMemeFetched(MemeFetched event) {
    final HomeState newState = state.map(
        loading: (_) => HomeState.loaded(
              loadedMemes: [event.meme],
              totalMemeAmount: event.totalMemes,
            ),
        loaded: (loaded) => loaded.copyWith(
              loadedMemes: [
                ...loaded.loadedMemes,
                event.meme,
              ],
            ));

    emit(newState);
  }

  void _onAccountChanged(String accountId) {
    final HomeState? newState = state.mapOrNull(
        loaded: (loaded) => loaded.copyWith(
              accountId: accountId,
            ));
    if (newState != null) {
      emit(newState);
    }
  }
}
