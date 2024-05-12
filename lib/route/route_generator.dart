import 'package:flutter/material.dart';
import 'package:test_route/about.dart';
import 'package:test_route/screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/about':
        return MaterialPageRoute(builder: (_) => About());
      default:
        return MaterialPageRoute(builder: (_) => About());
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
        ),
      );
    });
  }
}
