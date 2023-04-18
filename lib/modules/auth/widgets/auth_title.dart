import 'package:emg_shop/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../themes/spacing.dart';
import '../../../themes/text_styles.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyles.t32M.copyWith(color: AppColors.primary500),
          textAlign: TextAlign.center,
        ),
        Spacing.v8,
        Text(
          subTitle,
          style: TextStyles.t20T,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
