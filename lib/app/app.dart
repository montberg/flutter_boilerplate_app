import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_boilerplate_app/di/scopes/global_scope.dart';
import 'package:flutter_boilerplate_app/features/theme/app_theme.dart';
import 'package:flutter_boilerplate_app/features/theme/theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final global = context.global;
    return AppTheme(
      data: global.theme,
      child: MaterialApp.router(
        theme: materialThemeFromAppTheme(
          global.theme,
          SchedulerBinding.instance.platformDispatcher.platformBrightness,
        ),
        routerDelegate: global.router.delegate(),
        routeInformationParser: global.router.defaultRouteParser(),
      ),
    );
  }
}
