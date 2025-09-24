import 'dart:convert';

void main() {
  String json = '''
{
"usuario":"ricacio",
"senha":"123",
"permissoes":["owner","admin"]
}''';

  print(json);

  /// DECODE

  Map decode = jsonDecode(json);

  print(decode.runtimeType);

  print(decode);

  /// Encode

  Map map = {
    'usuario': 'ricacio',
    'idade': 32,
    'permissoes': ['woner', 'admin'],
  };

  String toJson = jsonEncode(map);

  print(toJson);
}
