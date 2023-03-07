import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("jumpei")
      ),
      body: Container(
        color: Colors.yellow,
        width: double.infinity,
        height: 300,
        child: Column(
          children: [
            Row(
              children: [
                Text("38さい"),
                Container(width: 30, height: 30, color: Colors.red),
                Text("横浜に住んでる"),
                Container(width: 30, height: 30, color: Colors.red),
                Text("男"),
                Container(width: 30, height: 30, color: Colors.red),
                Text("ジム"),
              ]
            ),
            Text("38さい"),
            Text("横浜に住んでる"),
            Text("男"),
            Text("ジム"),
          ],
        ),
      ),
    );
  }
}
