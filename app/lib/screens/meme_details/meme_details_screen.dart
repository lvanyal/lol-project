import 'package:flutter/material.dart';
import 'package:lol_app/domain/model/blockchain_meme.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'package:lol_app/widget/meme_widget.dart';

class MemeDetailsScreen extends StatelessWidget {
  final BlockchainMeme meme;

  const MemeDetailsScreen({super.key, required this.meme});
  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).size.width > 600 ? 100 : 0;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        color: Colors.grey.withOpacity(0.7),
        padding: EdgeInsets.all(padding),
        alignment: AlignmentDirectional.center,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Hero(
              tag: 'meme0',
              child: MemeWidget(
                meme: Meme(template: MemeTemplate.loool, texts: ['Looooool']),
                onTap: () => Navigator.pop(context),
              )),
        ),
      ),
    );
  }
}
