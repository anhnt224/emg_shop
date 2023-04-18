import 'package:emg_shop/navigation/models/page3_arg.dart';
import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  Page4({super.key, required this.arg});

  Page3Arg arg;

  void _popToPage3(BuildContext context) {
    Navigator.pop(context, 'Pop value');
  }

  void _pushToPage5(BuildContext context) {
    Navigator.pushNamed(context, '/page5');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page4')),
        body: Column(
          children: [
            Text(
              '${arg.name} - ${arg.list}',
              style: const TextStyle(fontSize: 30, color: Colors.black87),
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
            Center(
              child: ElevatedButton(
                onPressed: () => _pushToPage5(context),
                child: const Text(
                  'Push to Page5',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ],
        ));
  }
}
