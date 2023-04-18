import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  void _popToPage4(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _popToPage3(BuildContext context) {
    Navigator.popUntil(context, ModalRoute.withName('/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page5')),
        body: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () => _popToPage4(context),
                child: const Text(
                  'Pop to Page4',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => _popToPage3(context),
                child: const Text(
                  'Pop to Page3',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ));
  }
}
