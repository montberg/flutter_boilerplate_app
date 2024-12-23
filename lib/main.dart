import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_app/app/app.dart';
import 'package:flutter_boilerplate_app/di/async_dep.dart';
import 'package:flutter_boilerplate_app/di/scopes/global_scope.dart';

void main() {
  runApp(
    AsyncDependencyWidget(
      create: GlobalScope.new,
      loaderBuilder: (context) {
        return const Center(child: CircularProgressIndicator());
      },
      child: const App(),
    ),
  );
}
