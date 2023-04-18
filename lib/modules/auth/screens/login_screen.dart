import 'package:emg_shop/modules/auth/widgets/auth_shape.dart';
import 'package:emg_shop/modules/auth/widgets/auth_title.dart';
import 'package:emg_shop/modules/auth/widgets/login_form.dart';
import 'package:emg_shop/themes/app_colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          SafeArea(
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
