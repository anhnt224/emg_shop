import 'package:emg_shop/navigation/models/page3_arg.dart';
import 'package:emg_shop/navigation/pages/page1.dart';
import 'package:emg_shop/navigation/pages/page3.dart';
import 'package:emg_shop/navigation/pages/page4.dart';
import 'package:emg_shop/navigation/pages/page5.dart';
import 'package:emg_shop/navigation/pages/page_not_found.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Page1(),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => const Page3(),
              settings: const RouteSettings(name: '/'),
            );
          case '/page4':
            print(settings.arguments);
            return MaterialPageRoute(
              builder: (context) => Page4(
                arg: settings.arguments as Page3Arg,
              ),
              settings: const RouteSettings(name: '/page4'),
            );
          case '/page5':
            print(settings.arguments);

            return MaterialPageRoute(
              builder: (context) => const Page5(),
              settings: const RouteSettings(name: '/page5'),
            );
          default:
            return MaterialPageRoute(
                builder: (context) => const PageNotFound());
        }
      },
    );
  }
}
