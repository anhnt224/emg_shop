import 'package:flutter/material.dart';

class SsoItem extends StatelessWidget {
  const SsoItem({super.key, required this.onPressed});

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        width: 48,
        height: 48,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset('assets/images/logo_google.png'),
      ),
    );
  }
}
