import 'package:flutter/material.dart';

class Shioya {
  String _text;

  Shioya(this._text,
      {required String text,
      required Null Function(dynamic newText) onChanged});

  void onChanged(String newText) {
    // テキストが変更されたときの処理
    // 例：_text フィールドを更新
    _text = newText;
  }
}

class MyHomePageD extends StatefulWidget {
  const MyHomePageD({Key? key}) : super(key: key);

  @override
  _MyHomePageStateD createState() => _MyHomePageStateD();
}

class _MyHomePageStateD extends State<MyHomePageD> {
  final Shioya _text = Shioya('', text: '', onChanged: (newText) {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shioyahayatoクラスを作るぞ'),
      ),
      body: Column(
        children: [
          Shioya(
            text: _text._text,
            onChanged: (newText) {
              setState(() {
                _text._text = newText;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Shioyahayatoクラスにテキストを渡す処理
              // 例：リストに追加
              // _list.add(Shioya(_text));
            },
            child: Text('追加'),
          ),
        ],
      ),
    );
  }
}
