import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_state.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final accountId = state.mapOrNull(
          loaded: (value) => value.accountId,
        );

        return AppBar(
          toolbarHeight: 64,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          title: TextButton(
            onPressed: () => context.go('/'),
            child: Text(
              'looool',
              style: GoogleFonts.rubikDirt().copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () => context.go('/mint'),
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                child: Text(
                  'MINT MEME',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat().copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
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
                          style: GoogleFonts.montserrat().copyWith(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    : ElevatedButton(
                        onPressed: () =>
                            context.read<HomeCubit>().requestAccount(),
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        child: Text('CONNECT WALLET',
                            style: GoogleFonts.montserrat().copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
          ],
          elevation: 4,
        );
      },
    );
  }
}
