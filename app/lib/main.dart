import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/data/interop/interop_initialiser.dart';
import 'package:lol_app/di/dependencies.dart';
import 'package:lol_app/home/home_cubit.dart';
import 'package:lol_app/home/home_screen.dart';

void main() {
  final bridge = initJsInterop();
  resolveDependencies(bridge);
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
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
          child: MultiBlocProvider(providers: [
        BlocProvider<HomeCubit>(create: (_) => getIt<HomeCubit>()),
      ], child: HomeScreen())),
    );
  }
}
