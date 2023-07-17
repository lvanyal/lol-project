// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';

class InputText extends StatelessWidget {
  const InputText({super.key});

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
                        decoration: InputDecoration(
                          filled: false,
                          hintText: "Text #${i}",
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
