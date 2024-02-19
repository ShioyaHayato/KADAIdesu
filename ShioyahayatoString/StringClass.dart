class HayatoString {
  List<int> _bytes;

  HayatoString(String str, this._bytes) {
    //Stringクラスを使用しないようにしたい
    _bytes = str.codeUnits;
  }

  int get length => _bytes.length;

  @override
  String toString() {
    //String toStringをdaynamic toStringにしてイイのかな？
    return String.fromCharCodes(_bytes);
  }

  // 独自の処理
}

class Shioya {
  HayatoString _str;

  Shioya(String str, this._str) {
    _str = HayatoString(str, str.codeUnits); // 2 つの引数を渡す
  }

  int get length => _str.length;

  // 独自の処理
}

void main() {
  var str = "hello";
  Shioya shioya = Shioya(str);
  print(shioya.length); // 5
  print(shioya._str); // HayatoString(_bytes: [104, 101, 108, 108, 111])
  // 独自の処理
}
