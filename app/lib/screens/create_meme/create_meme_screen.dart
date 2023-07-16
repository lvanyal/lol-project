// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/screens/create_meme/widget/create_meme_input_text.dart';
import 'package:lol_app/screens/create_meme/widget/create_meme_preview.dart';
import 'package:lol_app/screens/create_meme/widget/select_template.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class CreateMemeScreen extends StatelessWidget {
  const CreateMemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Container(
      color: Theme.of(context).dialogBackgroundColor,
      padding: EdgeInsets.all(12),
      child: isMobile
          ? SingleChildScrollView(
              child: Column(children: [
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
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Text('CREATE MEME',
                        style: GoogleFonts.montserrat().copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ]),
            )
          : Center(
              child: SizedBox(
                width: 1000,
                child: Column(
                  children: [
                    const SelectTemplate(),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MemePreview(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(child: InputText()),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder()),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                        child: Text('CREATE MEME',
                            style: GoogleFonts.montserrat().copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
