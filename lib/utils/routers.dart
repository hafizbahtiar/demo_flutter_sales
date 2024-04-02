import 'package:demo_flutter_sales/screens/home_screen.dart';
import 'package:demo_flutter_sales/screens/login_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const LoginScreen();
        },
      );

          case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const HomeScreen();
        },
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Screen does not exist'),
            ),
          );
        },
      );
  }
}
