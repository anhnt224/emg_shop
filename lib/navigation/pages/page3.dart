import 'package:emg_shop/navigation/models/page3_arg.dart';
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  void _pushToPage4(BuildContext context) {
    // Navigator.pushNamed(context, '/page4', arguments: 'Args4').then((value) {
    //   // Xử lí khi pop về màn hình này
    //   print(value);
    //   if (value != null) {
    //     if (value is String) {}
    //   }
    // });

    Navigator.pushNamed(
      context,
      '/page4',
      arguments: Page3Arg(
        'A',
        [1, 2, 3],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Page3')),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                //handle
                _pushToPage4(context);
              },
              child: const Text('Push to Page4')),
        ));
  }
}
