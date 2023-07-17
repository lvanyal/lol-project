// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';

class InputText extends StatefulWidget {
  const InputText({super.key});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  final List<TextEditingController> _textControllers = List.generate(
    MemeTemplate.maxTextsCount,
    (index) => TextEditingController(),
  ); // Hope 10 controllers whould be enough:)

  @override
  void initState() {
    for (var i = 0; i < _textControllers.length; i++) {
      final controller = _textControllers[i];
      controller.addListener(() {
        final text = controller.text;
        context
            .read<CreateMemeBloc>()
            .add(TextUpdated(textIndex: i, text: text));
      });
    }
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in _textControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateMemeBloc, CreateMemeState>(
      builder: (BuildContext context, state) => Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(children: [
                  ...[
                    for (var i = 0;
                        i < state.selectedTemplate.textsCount;
                        i += 1) ...[
                      TextField(
                        controller: _textControllers[i],
                        decoration: InputDecoration(
                          filled: false,
                          hintText: "Text #$i",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).colorScheme.outline),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ),
                      if (i != state.selectedTemplate.textsCount - 1)
                        const SizedBox(
                          height: 16,
                        )
                    ]
                  ],
                ]),
              );
            },
          )),
    );
  }
}
