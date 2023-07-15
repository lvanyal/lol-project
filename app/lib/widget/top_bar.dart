import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_state.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) => SliverAppBar(
        floating: true,
        toolbarHeight: 64,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(
          'looool',
          style: GoogleFonts.rubikDirt().copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            child: switch (state) {
              HomeLoaded loaded when loaded.accountId == null => ElevatedButton(
                  onPressed: () => context.read<HomeCubit>().requestAccount(),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  child: const Text('CONNECT WALLET'),
                ),
              HomeLoaded loaded when loaded.accountId != null =>
                Text(state.accountId ?? ''),
              HomeState() => Container(),
            },
          ),
        ],
        forceElevated: true,
        elevation: 4,
      ),
    );
  }
}
