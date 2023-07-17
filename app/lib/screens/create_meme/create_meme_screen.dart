// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';
import 'package:lol_app/screens/create_meme/widget/create_meme_input_text.dart';
import 'package:lol_app/screens/create_meme/widget/create_meme_preview.dart';
import 'package:lol_app/screens/create_meme/widget/select_template.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CreateMemeScreen extends StatelessWidget {
  const CreateMemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).dialogBackgroundColor,
        padding: EdgeInsets.all(12),
        child: isMobile
            ? Column(children: [
                const MemePreview(),
                SizedBox(
                  height: 16,
                ),
                const SelectTemplate(),
                SizedBox(
                  height: 16,
                ),
                const InputText(),
                SizedBox(
                  height: 16,
                ),
                MintMemeButton(),
                SizedBox(
                  height: 16,
                ),
              ])
            : Center(
                child: SizedBox(
                  width: 1000,
                  child: Column(
                    children: [
                      const SelectTemplate(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MemePreview(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              InputText(),
                              SizedBox(
                                height: 16,
                              ),
                              MintMemeButton(),
                            ],
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}

class MintMemeButton extends StatelessWidget {
  const MintMemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: AutoSizeText('MINT MEME',
            maxLines: 1,
            style: GoogleFonts.montserrat().copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }
}
