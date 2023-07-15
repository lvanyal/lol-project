// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/data/interop/interop_initialiser.dart';
import 'package:lol_app/di/dependencies.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_screen.dart';
import 'package:lol_app/widget/responsive_wrapper.dart';
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
              child: const Material(
                child: ResponsiveWrapper(
                  child: CustomScrollView(
                    slivers: [
                      TopBar(),
                      HomeScreen(),
                    ],
                  ),
                ),
              ))),
    );
  }
}
