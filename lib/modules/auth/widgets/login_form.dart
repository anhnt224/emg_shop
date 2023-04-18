import 'package:emg_shop/modules/auth/widgets/auth_button.dart';
import 'package:emg_shop/modules/auth/widgets/auth_divider.dart';
import 'package:emg_shop/modules/auth/widgets/info_field.dart';
import 'package:emg_shop/modules/auth/widgets/password_field.dart';
import 'package:emg_shop/modules/auth/widgets/sso_item.dart';
import 'package:emg_shop/themes/app_colors.dart';
import 'package:emg_shop/themes/spacing.dart';
import 'package:emg_shop/themes/text_styles.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final TextEditingController _usernameController =
      TextEditingController(text: '');

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
            controller: TextEditingController(),
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
            onPressed: () {
              print('Đăng nhập');
            },
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
