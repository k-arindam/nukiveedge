import 'package:flutter/material.dart';
import 'package:nukiveedge/src/ne_mobile/views/nem_home_view.dart';
import 'package:nukiveedge/src/shared/views/ne_unknown_route_view.dart';

abstract class NEMRoutes {
  static const String home = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case home:
        return MaterialPageRoute(builder: (_) => const NEMHomeView());

      default:
        return MaterialPageRoute(builder: (_) => NEUnknownRouteView(route: route));
    }
  }
}
