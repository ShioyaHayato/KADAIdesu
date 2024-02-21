import 'package:flutter/material.dart';
import 'package:flutter_application_1/hayato_shioya.dart';

class OutputPage extends StatelessWidget {
  final HayatoShioya redactedText;

  const OutputPage({Key? key, required this.redactedText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('出力画面'),
      ),
      body: Center(
        child: Text(redactedText as String, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
