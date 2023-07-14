import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol_app/home/home_cubit.dart';
import 'package:lol_app/home/home_state.dart';
import 'package:lol_app/home/widget/meme_widget.dart';
import 'package:lol_app/meme_details/meme_details_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int colNumber = switch (ResponsiveBreakpoints.of(context)) {
      (ResponsiveBreakpointsData screen)
          when screen.smallerOrEqualTo(
            MOBILE,
          ) =>
        1,
      (ResponsiveBreakpointsData screen)
          when screen.smallerOrEqualTo(
            TABLET,
          ) =>
        2,
      (ResponsiveBreakpointsData screen)
          when screen.smallerOrEqualTo(
            'desktop_small',
          ) =>
        3,
      (ResponsiveBreakpointsData screen)
          when screen.smallerOrEqualTo(
            'desktop_large',
          ) =>
        4,
      ResponsiveBreakpointsData() => 5
    };

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(64),
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            loaded: (loaded) => SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverGrid.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      crossAxisCount: colNumber,
                    ),
                    itemCount: 16,
                    itemBuilder: (context, index) => Hero(
                      //TODO: loaded.loadedMemes[index]
                      tag: 'meme$index',
                      child: MemeWidget(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (_, __, ___) => MemeDetailsScreen(
                                meme: loaded.loadedMemes.first,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ));
      },
    );
  }
}
