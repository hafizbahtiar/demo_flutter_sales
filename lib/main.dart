import 'package:demo_flutter_sales/providers/login_provider.dart';
import 'package:demo_flutter_sales/screens/home_screen.dart';
import 'package:demo_flutter_sales/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo_flutter_sales/screens/login_screen.dart';
import 'package:demo_flutter_sales/providers/splash_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        // Add other providers if needed
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Sales App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Consumer<SplashProvider>(
        builder: (context, splashProvider, _) {
          if (!splashProvider.isSplashFinished) {
            return const SplashScreen();
          } else {
            return Consumer<LoginProvider>(
              builder: (context, loginProvider, _) {
                return loginProvider.isLoggedIn
                    ? const HomeScreen()
                    : const LoginScreen();
              },
            );
          }
        },
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
