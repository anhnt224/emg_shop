import 'package:emg_shop/navigation/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  void _pushToPage2(BuildContext context) {
    Route route2 = MaterialPageRoute(builder: (context) => const Page2());
    Navigator.of(context).push(route2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Page1')),
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            //handle
            _pushToPage2(context);
          },
          child: const Text('Push to Page2')),
    ));
  }
}
