import 'package:emg_shop/modules/auth/screens/login_screen.dart';
import 'package:emg_shop/modules/auth/screens/sign_up_screen.dart';
import 'package:emg_shop/route/route_name.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._instance();
  static final AppRouter instance = AppRouter._instance();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(),
            settings: const RouteSettings(name: RouteName.login));
      case RouteName.signUp:
        return MaterialPageRoute(
            builder: (context) => const SignUpScreen(),
            settings: const RouteSettings(name: RouteName.signUp));
      default:
    }
    return null;
  }
}
