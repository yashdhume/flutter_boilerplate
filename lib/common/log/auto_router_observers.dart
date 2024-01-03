import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/common/log/analytics.dart';
import 'package:frontend/common/log/logger.dart';

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.all(
      name: 'Router pushed',
      data: {'name': route.settings.name},
      showConsole: Log.logRouter,
    );
    Analytics.setCurrentScreen(route.settings.name ?? '');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    Log.all(
      name: 'Router Tab',
      data: {'name': route.name},
      showConsole: Log.logRouter,
    );
    Analytics.setCurrentScreen(route.name);
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    Log.all(
      name: 'Router Tab Revisited',
      data: {'name': route.name},
      showConsole: Log.logRouter,
    );
    Analytics.setCurrentScreen(route.name);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    Log.all(
      name: 'Router Pop',
      data: {'from': previousRoute?.settings.name, 'to': route.settings.name},
      showConsole: Log.logRouter,
    );
    Analytics.setCurrentScreen(route.settings.name ?? '');
  }
}
