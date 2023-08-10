import 'dart:convert';

printJson(Map json) {
  JsonEncoder encoder = const JsonEncoder.withIndent('  ');
  var prettyString = encoder.convert(json);
  prettyString.split('\n').forEach((element) => print(element));
}

printArray(List list) {
  for (final entry in list) {
    print(entry);
  }
}
