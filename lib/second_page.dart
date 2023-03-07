import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(this.name, {super.key});
  final String name;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Text(
                  name,
                  style: const TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    // ボタン押した時に呼ばれるコードを書く
                    Navigator.pop(context);
                  },
                  child: const Text("前の画面へ")
              )
            ],
          )),
    );
  }
}
