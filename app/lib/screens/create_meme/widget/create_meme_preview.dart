import 'package:flutter/material.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'package:lol_app/widget/meme_widget.dart';

class MemePreview extends StatelessWidget {
  const MemePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          alignment: AlignmentDirectional.topCenter,
          // height: 400,
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          width: 400,
          child: MemeWidget(),
        ));
  }
}
