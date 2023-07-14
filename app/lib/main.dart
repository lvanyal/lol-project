// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/data/interop/interop_initialiser.dart';
import 'package:lol_app/di/dependencies.dart';
import 'package:lol_app/home/home_cubit.dart';
import 'package:lol_app/home/home_screen.dart';
import 'package:lol_app/widget/top_bar.dart';
import 'package:responsive_framework/responsive_framework.dart';

Dependencies? _dependencies;

void main() {
  final bridge = initJsInterop();
  _dependencies =
      _dependencies ?? (Dependencies()..resolveDependencies(bridge));
  runApp(const LolApp());
}

class LolApp extends StatelessWidget {
  const LolApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        primaryColor: Colors.blueGrey,
      ),
      home: SafeArea(
          child: MultiBlocProvider(
              providers: [
            BlocProvider<HomeCubit>(create: (_) => getIt<HomeCubit>()),
          ],
              child: Material(
                child: ResponsiveBreakpoints.builder(
                  child: const CustomScrollView(
                    slivers: [
                      TopBar(),
                      HomeScreen(),
                    ],
                  ),
                  breakpoints: [
                    const Breakpoint(start: 0, end: 550, name: MOBILE),
                    const Breakpoint(start: 551, end: 750, name: TABLET),
                    const Breakpoint(start: 751, end: 1200, name: 'desktop_small'),
                    const Breakpoint(start: 1201, end: 1920, name: 'desktop_large'),
                    const Breakpoint(
                        start: 1921, end: double.infinity, name: '4K'),
                  ],
                ),
              ))),
    );
  }
}
