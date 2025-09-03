import 'dart:convert';

void main() {
  String json = '''
  {
  "nome": "ricacio",
  "idade": 32,
  "salario": 1870.50
  }
''';

  /// Decode
  Map<String, dynamic> parsedJson = jsonDecode(json);

  print(parsedJson);

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  double salario = parsedJson['salario'];

  print('Nome: $nome, idade:$salario, idade:$idade');

  /// encode

  Map<String, dynamic> map = {
    "nome": "Ricacio",
    "idade": 32,
    "salario": 1870.50,
  };

  String toJson = jsonEncode(map);

  print('ToJson: $toJson');

  String listJson = '''
  [
  {"nome":"ricacio","idade":32,"salario":1876.67},
  {"nome":"lucas","idade":30,"salario":2500.00},
  {"nome":"marcos","idade":28,"salario":3500.00}
  ]
''';

  /// DECODE
  List<dynamic> parsedListJson = jsonDecode(listJson);
  parsedListJson.forEach((map) {
    String nome = map['nome'];
    int idade = map['idade'];
    double salario = map['salario'];

    print('nome: $nome, idade: $idade, salário:$salario');
  });

  /// ENCODE

  String toJson02 = jsonEncode(parsedListJson);
  print('ToJson2 $toJson02');
}
