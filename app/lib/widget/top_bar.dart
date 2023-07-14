import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      toolbarHeight: 64,
      shadowColor: Colors.black,
      backgroundColor: Colors.white,
      title: Text(
        'looool',
        style: GoogleFonts.rubikDirt().copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
            child: const Text('CONNECT WALLET'),
          ),
        ),
      ],
      forceElevated: true,
      elevation: 4,
    );
  }
}
