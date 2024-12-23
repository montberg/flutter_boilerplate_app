import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:flutter_boilerplate_app/di/async_dep.dart';
import 'package:flutter_boilerplate_app/features/theme/theme.dart';
import 'package:flutter_boilerplate_app/navigation/app_router.dart';

class GlobalScope extends AppAsyncDependency {
  late AppRouter router;

  late AppThemeData theme =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark
          ? AppThemeData.dark()
          : AppThemeData.light();

  @override
  Future<void> initAsync(BuildContext context) async {
    router = AppRouter();
  }
}

extension GlobalScopeExtension on BuildContext {
  GlobalScope get global => read<GlobalScope>();
}
