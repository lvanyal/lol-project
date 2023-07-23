import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:lol_app/domain/model/meme.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.loading({String? accountId}) = HomeLoading;
  const factory HomeState.loaded(
      {String? accountId,
      required int totalMemeAmount,
      required List<Meme> loadedMemes}) = HomeLoaded;
}
