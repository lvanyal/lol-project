import 'package:bloc/bloc.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'dart:math';

part 'create_meme_event.dart';
part 'create_meme_state.dart';

class CreateMemeBloc extends Bloc<CreateMemeEvent, CreateMemeState> {
  CreateMemeBloc()
      : super(CreateMemeState(
          selectedTemplate: MemeTemplate.fry,
          texts: MemeTemplate.fry.emptyTextsList,
        )) {
    on<TemplateSelected>((event, emit) {
      emit(CreateMemeState(
        selectedTemplate: event.memeTemplate,
        texts: event.memeTemplate.fillWithTexts(state.texts),
      ));
    });

    on<TextUpdated>((event, emit) {
      final newTexts = List<String>.from(state.texts);
      newTexts[event.textIndex] = event.text;
      emit(CreateMemeState(
        selectedTemplate: state.selectedTemplate,
        texts: newTexts,
      ));
    });
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