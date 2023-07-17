part of 'create_meme_bloc.dart';

sealed class CreateMemeEvent {}

class TemplateSelected extends CreateMemeEvent {
  final MemeTemplate memeTemplate;

  TemplateSelected({required this.memeTemplate});
}

class TextUpdated extends CreateMemeEvent {
  final int textIndex;
  final String text;

  TextUpdated({required this.textIndex, required this.text});
}

class CreateMemePressed extends CreateMemeEvent {}
