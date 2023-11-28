import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter();

  static void push(BuildContext context, PageRouteInfo route) =>
      AutoRouter.of(context).push(route);

  static void pop(BuildContext context, [dynamic data]) =>
      AutoRouter.of(context).pop(data);
}
