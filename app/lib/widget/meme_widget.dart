import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemeWidget extends StatelessWidget {
  final GestureTapCallback? onTap;

  const MemeWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Stack(children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'template_0.png',
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Looooooooool',
                    style: GoogleFonts.montserrat().copyWith(
                      fontSize: 64,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
