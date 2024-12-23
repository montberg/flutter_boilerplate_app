import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate_app/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeRoute.page,
        )
      ];
}
