import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lol_app/domain/model/meme_template.dart';

part 'create_meme_state.freezed.dart';

@freezed
class CreateMemeState with _$CreateMemeState {
  const factory CreateMemeState({
    required MemeTemplate selectedTemplate,
    required List<String> texts,
    @Default(false) bool showProgress,
    @Default(false) bool enableButton,
    String? snackText,
    SnackType? snackType,
  }) = CreateMemeMainState;
}

enum SnackType { success, error }
