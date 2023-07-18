import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/di/dependencies.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';
import 'package:lol_app/screens/home/home_cubit.dart';

class BlocProviders extends StatelessWidget {
  final Widget child;

  const BlocProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider.value(value: getIt<HomeCubit>()),
      BlocProvider.value(value: getIt<CreateMemeBloc>()),
    ], child: child);
  }
}
