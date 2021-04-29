final RegExp _regex = RegExp(r'[^0-9]');

double getDecimalValue(String value) {
  if (value.isEmpty) return 0;

  var number = value.replaceAll(_regex, '');
  var length = number.length;
  var decimalValue =
      '${number.substring(0, length - 2)}.${number.substring(length - 2)}';

  return double.parse(decimalValue);
}
