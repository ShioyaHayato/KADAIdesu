import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/hayato_shioya.dart';
import 'package:flutter_application_1/out.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('テキスト入力'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _textController,
            ),
            ElevatedButton(
              child: Text('送信'),
              onPressed: () {
                // テキスト入力欄に入力されたテキストを取得
                String text = _textController.text;

                // HayatoShioya クラスを使ってテキストを伏字化
                HayatoShioya hayatoShioya = HayatoShioya(text.codeUnits);
                Uint8List pattern = Uint8List.fromList([1, 2]);
                HayatoShioya redactedText = hayatoShioya.redact(pattern);

                // 出力画面を表示
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OutputPage(redactedText: redactedText),
                  ),
                );

                // スナックバーを表示
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(redactedText as String),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
