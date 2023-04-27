import 'package:dio/dio.dart';
import 'package:emg_shop/models/login_resp.dart';
import 'package:emg_shop/route/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
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
      onGenerateRoute: AppRouter.instance.onGenerateRoute,
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
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  void _handleButtonTap() {
    print("fetch data");
    _login();
  }

  void _fetchData() async {
    try {
      final dio = Dio();
      final response =
          await dio.get("http://restapi.adequateshop.com/api/Customer");
      print(response.statusCode);
    } catch (e) {
      print(e);
    }
  }

  void _login() async {
    try {
      const url = "http://restapi.adequateshop.com/api/AuthAccount/Login";
      final data = {"email": "anhnt019@gmail.com", "password": "1234567"};
      final dio = Dio();

      final response = await dio.post(
        url,
        data: data,
      );
      if (response.data != null) {
        final json = response.data;
        final loginResp = LoginResp.fromJson(json);
        print(loginResp.user);
      } else {
        throw "Data is null";
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: _handleButtonTap, child: const Text('Parse JSON')),
      ),
    );
  }
}
