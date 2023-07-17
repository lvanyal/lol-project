import 'package:lol_app/domain/model/meme_template.dart';

class Meme {
  final MemeTemplate template;
  final List<String> texts;
  String? id;

  Meme({
    required this.template,
    required this.texts,
    this.id,
  });
}
