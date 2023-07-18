import 'package:flutter/material.dart';
import 'package:lol_app/widget/responsive_wrapper.dart';
import 'package:lol_app/widget/top_bar.dart';

class TopBarWrapper extends StatelessWidget {
  final Widget child;
  final String location;

  const TopBarWrapper({super.key, required this.child, required this.location});

  @override
  Widget build(BuildContext context) {
    final bool showBackButton = switch (location) { '/' => false, _ => true };

    return Material(
      child: ResponsiveWrapper(
        child: Column(
          children: [
            TopBar(
              showBackButton: showBackButton,
            ),
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
