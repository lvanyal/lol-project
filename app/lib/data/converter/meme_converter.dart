import 'package:lol_app/domain/model/blockchain_meme.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/model/meme_template.dart';

const HOST = 'looool.ai';
const SCHEME = 'app';

class MemeConverter {
  static const uriTextDelimiter = '|';
  static const templateIndexParam = 't';
  static const textParam = 'txt';

  Meme toDomain(BlockchainMeme blockchainMeme) {
    final uri = Uri.tryParse(blockchainMeme.uri);
    if (uri == null) throw 'WRONG_MEME_URI';

    final id = blockchainMeme.id;
    final texts = uri.queryParameters[textParam] ?? '';
    final textList = texts.split(uriTextDelimiter);
    final templateIndex =
        int.parse(uri.queryParameters[templateIndexParam] ?? '0');
    final template = MemeTemplate.values[templateIndex];

    return Meme(id: id, template: template, texts: textList);
  }

  BlockchainMeme toBlockchain(Meme meme) {
    final uri = Uri(host: HOST, scheme: SCHEME, queryParameters: {
      textParam: meme.texts.join(uriTextDelimiter),
      templateIndexParam: MemeTemplate.values.indexOf(meme.template).toString(),
    });

    return BlockchainMeme(uri: uri.toString(), id: '');
  }
}
