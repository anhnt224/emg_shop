import 'package:dio/dio.dart';
import 'package:emg_shop/modules/auth/widgets/auth_button.dart';
import 'package:emg_shop/modules/auth/widgets/auth_divider.dart';
import 'package:emg_shop/modules/auth/widgets/info_field.dart';
import 'package:emg_shop/modules/auth/widgets/password_field.dart';
import 'package:emg_shop/modules/auth/widgets/sso_item.dart';
import 'package:emg_shop/route/route_name.dart';
import 'package:emg_shop/themes/app_colors.dart';
import 'package:emg_shop/themes/spacing.dart';
import 'package:emg_shop/themes/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../models/login_resp.dart';
import '../../../models/user.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final TextEditingController _usernameController =
      TextEditingController(text: 'anhnt019@gmail.com');
  final _passwordController = TextEditingController(text: '123456');

  void _handleLoginButtonTap(BuildContext context) {
    print(
        "Login with ${_usernameController.text} - ${_passwordController.text} ");
    _login(context);
  }

  void _login(BuildContext context) async {
    try {
      const url = "http://restapi.adequateshop.com/api/AuthAccount/Login";
      final data = {
        "email": _usernameController.text,
        "password": _passwordController.text
      };
      final dio = Dio();

      final response = await dio.post(
        url,
        data: data,
      );
      if (response.data != null) {
        final json = response.data;
        final loginResp = LoginResp.fromJson(json);
        if (loginResp.code != 0) {
          //handle
          _showErrorMessage(loginResp.message, context);
        } else {
          print(loginResp.user.toString());
          _pushToMainScreen(loginResp.user!, context);
        }
      } else {
        throw "Data is null";
      }
    } catch (e) {
      _showErrorMessage(e.toString(), context);
    }
  }

  void _showErrorMessage(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void _pushToMainScreen(User user, BuildContext context) {
    print("Navigate to main screen");
    Navigator.pushNamed(context, RouteName.main, arguments: user);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Spacing.h32,
          InfoField(
            controller: _usernameController,
            hintText: 'Enter your name',
          ),
          Spacing.h16,
          PasswordField(
            controller: _passwordController,
            hintText: 'Password',
          ),
          Spacing.h8,
          Container(
              width: double.maxFinite,
              alignment: Alignment.bottomRight,
              child: TextButton(
                  onPressed: () {}, child: const Text('Recovery Password'))),
          Spacing.h24,
          AuthButton(
            title: 'Đăng nhập',
            onPressed: () => _handleLoginButtonTap(context),
          ),
          Spacing.h32,
          const AuthDivider(),
          Spacing.h32,
          Row(
            children: [
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
              SsoItem(
                onPressed: () {},
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SsoItem(
                onPressed: () {},
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              SsoItem(
                onPressed: () {},
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
          Spacing.h32,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Not a member?',
                style: TextStyles.t16R,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Register now',
                  style: TextStyles.t16R.copyWith(
                      color: AppColors.primary500, fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
