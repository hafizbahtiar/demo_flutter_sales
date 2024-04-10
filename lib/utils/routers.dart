import 'package:demo_flutter_sales/screens/about_screen.dart';
import 'package:demo_flutter_sales/screens/home_screen.dart';
import 'package:demo_flutter_sales/screens/login_screen.dart';
import 'package:demo_flutter_sales/screens/register_screen.dart';
import 'package:demo_flutter_sales/screens/setting_screen.dart';
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
          return  HomeScreen();
        },
      );

    case RegisterScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const RegisterScreen();
        },
      );

    case SettingsScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const SettingsScreen();
        },
      );

       case AboutScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) {
          return const AboutScreen();
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
