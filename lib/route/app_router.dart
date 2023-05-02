import 'package:emg_shop/bloc/app_cubit.dart';
import 'package:emg_shop/modules/auth/screens/login_screen.dart';
import 'package:emg_shop/modules/auth/screens/main_screen.dart';
import 'package:emg_shop/modules/auth/screens/sign_up_screen.dart';
import 'package:emg_shop/modules/product/bloc/cart_cubit.dart';
import 'package:emg_shop/modules/product/screens/cart_screen.dart';
import 'package:emg_shop/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/user.dart';
import '../modules/auth/bloc/auth_cubit.dart';

class AppRouter {
  AppRouter._instance();
  static final AppRouter instance = AppRouter._instance();

  final _appCubit = AppCubit();
  final _cartCubit = CartCubit();

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.login:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(value: _appCubit),
                    BlocProvider(
                      create: (context) => AuthCubit(),
                    ),
                  ],
                  child: const LoginScreen(),
                ),
            settings: const RouteSettings(name: RouteName.login));
      case RouteName.signUp:
        return MaterialPageRoute(
            builder: (context) => const SignUpScreen(),
            settings: const RouteSettings(name: RouteName.signUp));
      case RouteName.main:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider.value(
                      value: _appCubit,
                    ),
                    BlocProvider.value(
                      value: _cartCubit,
                    ),
                  ],
                  child: MainScreen(user: settings.arguments as User),
                ),
            settings: const RouteSettings(name: RouteName.main));
      case RouteName.cart:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: _cartCubit,
            child: const CartScreen(),
          ),
        );
      default:
    }
    return null;
  }
}
