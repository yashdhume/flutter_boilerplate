import 'package:auto_route/auto_route.dart';
import 'package:frontend/app/authentication/ui/pages/login_page.dart';
import 'package:frontend/app/splash_page/ui/pages/splash_page.dart';

part 'router_config.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouterConfig extends _$AppRouterConfig {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: LoginRoute.page, path: '/login'),
      ];
}
