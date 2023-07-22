// ignore_for_file: unused_import

import 'package:equatable/equatable.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:lol_app/data/interop/interop_initialiser.dart';
import 'package:lol_app/di/dependencies.dart';
import 'package:lol_app/domain/model/meme.dart';
import 'package:lol_app/screens/create_meme/bloc/bloc/create_meme_bloc.dart';
import 'package:lol_app/screens/home/home_cubit.dart';
import 'package:lol_app/screens/home/home_screen.dart';
import 'package:lol_app/screens/meme_details/meme_details_screen.dart';
import 'package:lol_app/utils/cutom_scroll_behavior.dart';
import 'package:lol_app/utils/state_observer.dart';
import 'package:lol_app/widget/bloc_providers.dart';
import 'package:lol_app/widget/responsive_wrapper.dart';
import 'package:lol_app/widget/top_bar.dart';
import 'package:lol_app/widget/top_bar_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'screens/create_meme/create_meme_screen.dart';

Dependencies? _dependencies;

void main() {
  EquatableConfig.stringify = true;
  final bridge = initJsInterop();
  _dependencies =
      _dependencies ?? (Dependencies()..resolveDependencies(bridge));
  Bloc.observer = StateObserver(logger: getIt<Logger>());

  runApp(LolApp());
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class LolApp extends StatelessWidget {
  LolApp({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: !kReleaseMode,
    initialLocation: '/',
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return BlocProviders(
              child: TopBarWrapper(
            location: state.location,
            child: child,
          ));
        },
        routes: <RouteBase>[
          GoRoute(
              path: '/',
              builder: (_, GoRouterState state) {
                return const HomeScreen();
              },
              routes: [
                GoRoute(
                  path: 'mint',
                  pageBuilder: (_, GoRouterState state) {
                    return const NoTransitionPage(child: CreateMemeScreen());
                  },
                ),
              ]),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: CustomScrollBehavior(),
      title: 'looool Beta',
      theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      routerConfig: _router,
    );
  }
}
