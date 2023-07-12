import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/home/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () {
            context.read<HomeCubit>().requestAccount();
          },
          child: Text('Connect wallet'),
        );
      },
    );
  }
}
