import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_state.dart';
import 'package:lol_app/widget/meme_widget.dart';
import 'package:lol_app/screens/meme_details/meme_details_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double gridPadding = (MediaQuery.of(context).size.width / 16);

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => Padding(
                  padding: EdgeInsets.all(gridPadding),
                  child: const Center(
                    child: ProgressWidget(),
                  ),
                ),
            loaded: (loaded) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: ResponsiveGridView.builder(
                    alignment: AlignmentDirectional.center,
                    itemCount: loaded.totalMemeAmount,
                    itemBuilder: (context, index) {
                      if (index >= loaded.loadedMemes.length) {
                        return const ProgressWidget();
                      }

                      var loadedMeme = loaded.loadedMemes[index];
                      return Hero(
                        tag: 'meme${loadedMeme.id}',
                        child: MemeWidget(
                          meme: loadedMeme,
                          onTap: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                opaque: false,
                                pageBuilder: (_, __, ___) => MemeDetailsScreen(
                                  meme: loadedMeme,
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                    gridDelegate: const ResponsiveGridDelegate(
                        maxCrossAxisExtent: 400,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8),
                  ),
                ));
      },
    );
  }
}

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitWanderingCubes(
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
