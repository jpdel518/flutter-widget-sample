import 'package:flutter/material.dart';
import 'package:widget_sample/second_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});
  String text = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("First")
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/aaa.jpg'),
                // Image.network('https://images.pexels.com/photos/86596/owl-bird-eyes-eagle-owl-86596.jpeg'),
                TextField(
                  onChanged: (text) {
                    this.text = text;
                  },
                  // obscureText: true, パスワード用
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '次の画面に渡す文字列',
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      // ボタン押した時に呼ばれるコードを書く
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(text),
                            // fullscreenDialog: true, 下から画面が出る遷移 + 遷移後にダイアログ風の×ボタン出る
                          )
                      );
                    },
                    child: const Text("次の画面")
                ),
              ],
            ),
          )
      ),
    );
  }
}
