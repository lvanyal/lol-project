import 'package:flutter/material.dart';
import 'package:lol_app/widget/responsive_wrapper.dart';
import 'package:lol_app/widget/top_bar.dart';

class TopBarWrapper extends StatelessWidget {
  final Widget child;

  const TopBarWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ResponsiveWrapper(
        child: Column(
          children: [
            const TopBar(),
            const SizedBox(
              height: 16,
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
