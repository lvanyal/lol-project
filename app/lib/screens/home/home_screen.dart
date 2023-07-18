import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/domain/model/meme_template.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_state.dart';
import 'package:lol_app/widget/meme_widget.dart';
import 'package:lol_app/screens/meme_details/meme_details_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double gridPadding = (MediaQuery.of(context).size.width / 16);

    var isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final itemRatio = isMobile ? 1.2 : 1.0;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => Padding(
                  padding: EdgeInsets.all(gridPadding),
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            loaded: (loaded) => Padding(
                  padding: EdgeInsets.all(16),
                  child: ResponsiveGridView.builder(
                    alignment: AlignmentDirectional.center,
                    itemCount: 16,
                    // shrinkWrap: true,
                    itemBuilder: (context, index) => Hero(
                      //TODO: loaded.loadedMemes[index]
                      tag: 'meme$index',
                      child: MemeWidget(
                        meme: Meme(
                            template: MemeTemplate.loool, texts: ['Looooool']),
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
