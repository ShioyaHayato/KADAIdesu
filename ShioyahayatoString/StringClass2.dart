class HayatoShioya {
  List<int> _bytes;

  HayatoShioya(List<int> bytes) {
    _bytes = bytes;
  }

  int get length => _bytes.length;

  List<int> toBytes() {
    return _bytes;
  }

  // 独自の処理を書かなきゃ動かない
}
