import 'package:flutter/material.dart';

void main() {
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
      home: const Demo(),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(children: [
        const Text(
          'Chao mung Anh den voi khoa flutter.',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 2,
        ),
        RichText(
          text: const TextSpan(
            text: 'Chao mung',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              overflow: TextOverflow.ellipsis,
            ),
            children: [
              WidgetSpan(
                child: SizedBox(
                  width: 16,
                ),
              ),
              TextSpan(
                text: 'Anh',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              WidgetSpan(
                child: SizedBox(
                  width: 16,
                ),
              ),
              TextSpan(
                text: 'den voi khoa flutter',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  fit: BoxFit.cover),
            ),
            child: const Text('a'),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print('Click');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amberAccent,
            padding: const EdgeInsets.all(32),
            side: const BorderSide(color: Colors.blue, width: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text('Click here'),
        ),
        const TextField(
          style: TextStyle(color: Colors.red),
        )
      ]),
    );
  }
}
