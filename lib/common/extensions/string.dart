extension StringExt on String {
  int parseInt() {
    return int.parse(this);
  }

  double parseDouble() {
    return double.parse(this);
  }

  String capitalize() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}
