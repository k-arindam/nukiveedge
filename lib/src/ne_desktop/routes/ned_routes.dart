import 'package:flutter/material.dart';
import 'package:nukiveedge/src/ne_desktop/views/ned_home_view.dart';
import 'package:nukiveedge/src/shared/views/ne_unknown_route_view.dart';

abstract class NEDRoutes {
  static const String home = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final route = settings.name;

    switch (route) {
      case home:
        return MaterialPageRoute(builder: (_) => const NEDHomeView());

      default:
        return MaterialPageRoute(builder: (_) => NEUnknownRouteView(route: route));
    }
  }
}
