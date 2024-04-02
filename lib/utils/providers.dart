import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_flutter_sales/providers/splash_provider.dart';
import 'package:demo_flutter_sales/providers/login_provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;

  const AppProviders({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        // Add other providers if needed
      ],
      child: child,
    );
  }
}
