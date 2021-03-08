import 'package:flutter/material.dart';
import 'package:myq_mobile/screens/not_found_screen.dart';
import 'package:myq_mobile/screens/app_tab.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => AppTab());
      default:
        return MaterialPageRoute(builder: (context) => NotFoundScreen(routeName: settings.name));
    }
  }
}
