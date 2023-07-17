import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';
import 'package:lol_app/widget/meme_widget.dart';

class MemePreview extends StatelessWidget {
  const MemePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMemeBloc, CreateMemeState>(
      builder: (BuildContext context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return ScaleTransition(scale: animation, child: child);
        },
        child: Card(
            key: ObjectKey(state.selectedTemplate),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              alignment: AlignmentDirectional.topCenter,
              // height: 400,
              // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              width: 400,
              child: MemeWidget(
                meme: Meme(
                  template: state.selectedTemplate,
                  texts: state.texts,
                ),
              ),
            )),
      ),
    );
  }
}
