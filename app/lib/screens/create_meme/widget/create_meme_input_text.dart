// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class InputText extends StatelessWidget {
  const InputText({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    filled: false,
                    hintText: "Text #1",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.outline),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: false,
                    hintText: "Text #1",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.outline),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    filled: false,
                    hintText: "Text #1",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.outline),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ]),
            );
          },
        ));
  }
}
