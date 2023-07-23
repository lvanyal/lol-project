import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lol_app/domain/model/event.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'dart:math';

import 'package:lol_app/domain/repository/meme_repository.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_state.dart';

part 'create_meme_event.dart';

class CreateMemeBloc extends Bloc<CreateMemeEvent, CreateMemeState> {
  final MainRepository repository;
  StreamSubscription? _streamSubscription;

  CreateMemeBloc(this.repository)
      : super(CreateMemeState(
          selectedTemplate: MemeTemplate.fry,
          texts: MemeTemplate.fry.emptyTextsList,
        )) {
    on<TemplateSelected>((event, emit) {
      if (state.showProgress) return;
      emit(state.copyWith(
        selectedTemplate: event.memeTemplate,
        texts: event.memeTemplate.fillWithTexts(state.texts),
      ));
    });

    on<TextUpdated>((event, emit) {
      final newTexts = List<String>.from(state.texts);
      newTexts[event.textIndex] = event.text;
      final enableButton = newTexts.fold<bool>(
          false, (previousTrue, text2) => previousTrue || text2.isNotEmpty);
      emit(state.copyWith(
        texts: newTexts,
        enableButton: enableButton,
      ));
    });

    on<CreateMemePressed>((event, emit) {
      if (repository.accountId != null) {
        emit(state.copyWith(showProgress: true));
        final meme = Meme(template: state.selectedTemplate, texts: state.texts);
        repository.mintMeme(meme);
      } else {
        repository.requestAccount();
      }
    });

    on<SuccessEvent>(
      (event, emit) {
        emit(state.copyWith(
          snackText: event.text,
          snackType: SnackType.success,
          texts: state.texts.map((_) => '').toList(),
        ));
        emit(state.copyWith(
          showProgress: false,
          snackText: null,
          snackType: null,
        ));
      },
    );

    on<ErrorEvent>(
      (event, emit) {
        emit(state.copyWith(
          snackText: event.text,
          snackType: SnackType.error,
        ));
        emit(state.copyWith(
            showProgress: false, snackText: null, snackType: null));
      },
    );

    _streamSubscription = repository.eventStream().listen(_onEvent);
  }

  @override
  Future<void> close() async {
    await _streamSubscription?.cancel();
    return super.close();
  }

  void _onEvent(Event event) {
    switch (event) {
      case MintTransactionSent _:
        add(SuccessEvent('Meme transaction has been sent!'));
      case MintTransactionConfirmed _:
        add(SuccessEvent('Meme transaction has been confirmed!'));
      case MintTransactionFailed error:
        add(ErrorEvent(error.error));
      default:
        return;
    }
  }
}

extension on MemeTemplate {
  List<String> get emptyTextsList => List.filled(
        textsCount,
        '',
      );

  List<String> fillWithTexts(List<String> texts) {
    final result = emptyTextsList;
    for (int i = 0; i < min(textsCount, texts.length); i++) {
      result[i] = texts[i];
    }

    return result;
  }
}
