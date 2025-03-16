import 'package:flutter/material.dart';
import 'package:mvvm/utils/route/routes_name.dart';
import 'package:mvvm/view/login_screen.dart';
import 'package:mvvm/view/splash_screen.dart';

class Routes {
  static MaterialPageRoute generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case RoutesName.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(child: Text('No Route Define')),
            );
          },
        );
    }
  }
}
