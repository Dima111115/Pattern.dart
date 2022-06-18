//---------------https://dart.dev/guides/language/extension-methods---------
extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }
}

void main() {
  "1".parseInt();

  "1.1".parseDouble();
}
