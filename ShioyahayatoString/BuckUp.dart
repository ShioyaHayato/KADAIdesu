class HayatoShioya {
  final List<int> _bytes;

  HayatoShioya(this._bytes);

  int get length => _bytes.length;

  List<int> toBytes() => _bytes;

  @override
  bool equals(HayatoShioya other) {
    if (other == null) {
      return false;
    }

    if (identical(this, other)) {
      return true;
    }

    if (other is HayatoShioya) {
      return listEquals(_bytes, other._bytes);
    }

    throw Exception('HayatoShioya 型ではないオブジェクトと比較できません');
  }

//↑このコードの説明
//オブジェクトの同一性チェック
//HayatoShioya 型チェック
//_bytes プロパティの比較
//引数がnullかどうかを確認するnullの場合はfalseを返す

  bool listEquals(List<int> bytes, List<int> bytes2) {
    if (bytes.length != bytes2.length) {
      return false;
    }

    for (var i = 0; i < bytes.length; i++) {
      if (bytes[i] != bytes2[i]) {
        return false;
      }
    }

    return true;
  }

//↑このコードの説明
//bytesとbytes2は比較対象となる2つのリストです。
//最初に2つのリストの長さが等しいかどうかをチェックします。長さが異なる場合はfalseを返します。
//1つでも要素が異なる場合は、falseを返します。
//すべての要素が等しい場合は、trueを返します。


@override
  String toString() {
    return 'HayatoShioya(length: ${_bytes.length}, bytes: ${_bytes})';
  }

//↑このコードの説明
//HayatoShioya オブジェクトの内容をデバッグしたい場合
//HayatoShioya オブジェクトをログに出力したい場合
//HayatoShioya オブジェクトを文字列として保存したい場合


extension HayatoShioyaRedact on HayatoShioya {
    /// 特定のバイト列をアスタリスクにして伏字にする
HayatoShioya redact(List<int> pattern) {
  var regex = RegExp(pattern.map((byte) => String.fromCharCode(byte)).join());
  return HayatoShioya(regex.replaceAll(toBytes().join(), '*'));
}
}
}


void main() {
  var hayatoShioya = HayatoShioya([1, 2, 3]);
  print(hayatoShioya.toString()); // 出力: HayatoShioya(length: 3, bytes: [1, 2, 3])

  // 特定のバイト列をアスタリスクにして伏字にする
  var pattern = [1, 2];
  var redacted = hayatoShioya.redact(pattern);

  // 出力: HayatoShioya(length: 1, bytes: [3])
  print(redacted);
}


//↑このコードの説明
//これはHayatoShioyaクラスの動作を確認するためのサンプルコード
//HayatoShioyaクラスのコンストラクタが正しく動作しているか
//toStringメソッドが正しく動作しているか
//HayatoShioyaオブジェクトの内容が正しく出力されているか




//1. オブジェクトの比較:

//2つのHayatoShioyaオブジェクトが等しいかどうかを判断する機能が必要です。これは、Equals()メソッドを実装することで実現できます。

//2. ハッシュコードの計算:

//HayatoShioyaオブジェクトのハッシュコードを計算する機能が必要です。これは、GetHashCode()メソッドを実装することで実現できます。

//3. 文字列への変換:

//HayatoShioyaオブジェクトを文字列に変換する機能が必要です。これは、ToString()メソッドを実装することで実現できます。

//4. シリアル化とデシリアル化:

//HayatoShioyaオブジェクトをストレージに保存したり、ストレージから読み込んだりするための機能が必要です。これは、Serialize()とDeserialize()メソッドを実装することで実現できます。

//5. その他の処理:

//上記の機能に加えて、以下の処理があると便利です。

//コンストラクタにString型の引数を受け取り、その文字列をバイト列に変換する機能
//特定のインデックスのバイト値を取得または設定するプロパティ
//バイト列を検索するメソッド
//バイト列を別のエンコーディングに変換するメソッド
//これらの機能を実装することで、HayatoShioyaクラスをより汎用的に使用することができます。