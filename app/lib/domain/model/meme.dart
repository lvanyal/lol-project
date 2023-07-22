import 'package:equatable/equatable.dart';
import 'package:lol_app/domain/model/meme_template.dart';

class Meme extends Equatable {
  final MemeTemplate template;
  final List<String> texts;
  final String? id;

  const Meme({
    required this.template,
    required this.texts,
    this.id,
  });

  @override
  List<Object?> get props => [template, texts.join(), id.toString()];
}
