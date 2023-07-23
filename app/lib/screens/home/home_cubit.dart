import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lol_app/data/converter/meme_converter.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/repository/meme_repository.dart';
import 'package:lol_app/screens/home/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final MainRepository _repository;
  final MemeConverter _memeConverter;
  StreamSubscription? _eventsSubscription;

  HomeCubit(this._repository, this._memeConverter)
      : super(HomeState.loading(accountId: _repository.accountId)) {
    _repository.fetchAll();

    _eventsSubscription = _repository.eventStream().listen(_onEvent);
  }

  void requestAccount() => _repository.requestAccount();

  @override
  Future<void> close() async {
    await _eventsSubscription?.cancel();
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
    final meme = _memeConverter.toDomain(event.meme);
    final HomeState newState = state.map(
        loading: (_) => HomeState.loaded(
              loadedMemes: [meme],
              totalMemeAmount: event.totalMemes,
              accountId: _repository.accountId,
            ),
        loaded: (loaded) => loaded.copyWith(
              accountId: _repository.accountId,
              loadedMemes: {
                ...loaded.loadedMemes,
                meme,
              }.toList(),
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
