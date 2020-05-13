import 'package:flutter/material.dart';

import 'ui/views/details.dart';
import 'ui/views/home.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.ROUTE:
        return MaterialPageRoute<Home>(builder: (_) => const Home());
      case Details.ROUTE:
        return MaterialPageRoute<Details>(builder: (_) => const Details());
      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
