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
      builder: (BuildContext context, state) => Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            alignment: AlignmentDirectional.topCenter,
            width: 400,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
              child: MemeWidget(
                key: ObjectKey(state.selectedTemplate),
                meme: Meme(
                  template: state.selectedTemplate,
                  texts: state.texts,
                ),
              ),
            ),
          )),
    );
  }
}
