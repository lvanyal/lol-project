import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:lol_app/domain/model/meme_template.dart';

class MemeWidget extends StatelessWidget {
  final Meme meme;
  final GestureTapCallback? onTap;

  const MemeWidget({
    super.key,
    required this.meme,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onTap: onTap,
        child: Stack(children: [
          Image.asset(
            'templates/${meme.template.fileName}',
            fit: BoxFit.contain,
          ),
          ...[
            for (var i = 0; i < meme.texts.length; i++)
              TextPositioned(
                textLocation: meme.template.textLocations[i],
                child: AutoSizeText(
                  meme.texts[i],
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: _textStyle,
                ),
              )
          ],
        ]),
      ),
    );
  }

  TextStyle get _textStyle {
    return GoogleFonts.montserrat().copyWith(
      fontSize: 64,
      color: Colors.white,
      fontWeight: FontWeight.bold,
      shadows: _textShadow,
    );
  }

  List<Shadow> get _textShadow {
    return [
      const Shadow(
          // bottomLeft
          offset: Offset(-2, -2),
          color: Colors.black),
      const Shadow(
          // bottomRight
          offset: Offset(2, -2),
          color: Colors.black),
      const Shadow(
          // topRight
          offset: Offset(2, 2),
          color: Colors.black),
      const Shadow(
          // topLeft
          offset: Offset(-2, 2),
          color: Colors.black),
    ];
  }
}

class TextPositioned extends StatelessWidget {
  final TextLocation textLocation;
  final Widget child;

  const TextPositioned({
    super.key,
    required this.textLocation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    const textSpace = 10.0;

    final (top, bottom, left, right) = switch (textLocation) {
      TextLocation.topRight => (textSpace, null, null, textSpace),
      TextLocation.topLeft => (textSpace, null, textSpace, null),
      TextLocation.topCenter => (textSpace, null, textSpace, textSpace),
      TextLocation.bottomRight => (null, textSpace, null, textSpace),
      TextLocation.bottomLeft => (null, textSpace, textSpace, null),
      TextLocation.bottomCenter => (null, textSpace, textSpace, textSpace),
    };

    return Positioned(
      bottom: bottom,
      right: right,
      left: left,
      top: top,
      child: child,
    );
  }
}
