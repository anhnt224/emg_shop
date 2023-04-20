import 'package:flutter/material.dart';

import '../../../models/user.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      body: Center(
        child: Text(user.toString()),
      ),
    );
  }
}
