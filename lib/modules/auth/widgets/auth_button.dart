import 'package:emg_shop/themes/app_colors.dart';
import 'package:emg_shop/themes/text_styles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Nhan o widget AuthButton');
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary500,
        padding: const EdgeInsets.all(16),
        minimumSize: const Size(double.maxFinite, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        title,
        style: TextStyles.t20M,
      ),
    );
  }
}
