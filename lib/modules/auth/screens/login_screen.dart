import 'package:emg_shop/modules/auth/bloc/auth_cubit.dart';
import 'package:emg_shop/modules/auth/bloc/auth_state.dart';
import 'package:emg_shop/modules/auth/models/auth_error.dart';
import 'package:emg_shop/modules/auth/widgets/auth_shape.dart';
import 'package:emg_shop/modules/auth/widgets/auth_title.dart';
import 'package:emg_shop/modules/auth/widgets/login_form.dart';
import 'package:emg_shop/route/route_name.dart';
import 'package:emg_shop/themes/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/app_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // This makes the dialog non-dismissable
      builder: (BuildContext context) {
        return const AlertDialog(
          content: SizedBox(
            height: 80,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }

  void _navigateToMain(BuildContext context, User user) {
    final appCubit = context.read<AppCubit>();
    appCubit.authenticate(user, "token 12345678");

    Navigator.of(context).pushNamedAndRemoveUntil(
        RouteName.main, (route) => route.settings.name == RouteName.main);
  }

  void _hideLoadingDialog(BuildContext context) {
    Navigator.pop(context);
  }

  void _showErrorDialog(BuildContext context, AuthError error) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(error.title),
          content: Text(error.message),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          SafeArea(
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthStateInProgress) {
                  _showLoadingDialog(context);
                }
                if (state is AuthStateFailure) {
                  _hideLoadingDialog(context);
                  _showErrorDialog(context, state.error!);
                }
                if (state is AuthStateLoginSuccess) {
                  _hideLoadingDialog(context);
                  _navigateToMain(context, state.user!);
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 150,
                        child: const AuthTitle(
                          title: 'Welcome',
                          subTitle: 'Hello, let sign into your account!',
                        ),
                      ),
                      LoginForm()
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: const BoxDecoration(
          color: AppColors.mainBackground,
        ),
        child: const Align(
          alignment: Alignment.topLeft,
          child: AspectRatio(
            aspectRatio: 390 / 224,
            child: AuthShape(),
          ),
        ));
  }
}
