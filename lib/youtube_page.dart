import 'package:flutter/material.dart';

class YoutubePage extends StatelessWidget {
  YoutubePage({super.key});

  final List<String> entries = <String>['【キャリア論】登るべき山を変えるべき時ってあるよね', '技術マウントを取るエンジニアさんへの熱いメッセージ', 'スモールビジネスの教科書を読んだ感想'];
  final List<int> colorCodes = <int>[600, 900, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              "盆栽プログラマー",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          ),
          backgroundColor: Colors.black,
        actions: const [
          Icon(Icons.cast),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.more_vert),
          SizedBox(width: 24),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 100,
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Image.network(
                        'https://images.pexels.com/photos/5748428/pexels-photo-5748428.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            entries[index],
                            style: TextStyle(
                              color: Colors.white,
                              height: 1.3,
                              fontSize: 16,
                            ),
                            maxLines: 3,
                          ),
                          Text(
                            '1053回 5日前',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
      )
    );
  }
}
