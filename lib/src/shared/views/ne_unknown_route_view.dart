import 'package:flutter/material.dart';
import 'package:nukiveedge/src/shared/theme/ne_colors.dart';

class NEUnknownRouteView extends StatelessWidget {
  final String? route;

  const NEUnknownRouteView({super.key, required this.route});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: NEColors.kClear,
        elevation: 0.0,
      ),
      body: Center(
        child: Text("You've entered an unknown route: $route! Please go back."),
      ),
    );
  }
}
