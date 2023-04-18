import 'package:emg_shop/themes/spacing.dart';
import 'package:flutter/material.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 42,
          height: 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black87, Colors.transparent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
        ),
        Spacing.v8,
        const Text('Or continue with'),
        Spacing.v8,
        Container(
          width: 42,
          height: 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black87],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
        ),
      ],
    );
  }
}
