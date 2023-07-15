import 'package:flutter/material.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      breakpoints: [
        const Breakpoint(start: 0, end: 550, name: MOBILE),
        const Breakpoint(start: 551, end: 750, name: TABLET),
        const Breakpoint(start: 751, end: 1200, name: 'desktop_small'),
        const Breakpoint(start: 1201, end: 1920, name: 'desktop_large'),
        const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      ],
      child: child,
    );
  }
}
