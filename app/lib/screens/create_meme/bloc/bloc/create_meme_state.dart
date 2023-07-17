part of 'create_meme_bloc.dart';

class CreateMemeState {
  final MemeTemplate selectedTemplate;
  final List<String> texts;
  bool? showProgress;

  CreateMemeState({
    required this.selectedTemplate,
    required this.texts,
    this.showProgress,
  });
}
