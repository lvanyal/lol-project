import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_state.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TopBar extends StatelessWidget {
  final bool showBackButton;
  const TopBar({super.key, required this.showBackButton});

  @override
  Widget build(BuildContext context) {
    final showTitle = !ResponsiveBreakpoints.of(context).isMobile;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final accountId = state.mapOrNull(
          loaded: (value) => value.accountId,
        );

        return AppBar(
          leading: showBackButton
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                )
              : null,
          toolbarHeight: 64,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          title: showTitle
              ? TextButton(
                  onPressed: () => context.go('/'),
                  child: Text(
                    'looool',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.merge(GoogleFonts.rubikDirt())
                        .copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                )
              : null,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () => context.go('/mint'),
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: Text(
                  'MINT MEME',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: MediaQuery.of(context).size.width / 16,
                ),
                child: (accountId != null)
                    ? Container(
                        alignment: AlignmentDirectional.center,
                        width: 220,
                        child: Text(
                          accountId,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () =>
                            context.read<HomeCubit>().requestAccount(),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        child: Text('CONNECT WALLET',
                            style: GoogleFonts.montserrat()),
                      )),
          ],
          elevation: 4,
        );
      },
    );
  }
}
