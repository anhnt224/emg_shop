import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  void _popToPage1(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Page2')),
        body: Center(
      child: ElevatedButton(
        onPressed: () => _popToPage1(context),
        child: const Text('Pop to Page1'),
      ),
    ));
  }
}
