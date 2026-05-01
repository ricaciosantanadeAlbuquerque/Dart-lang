import 'dart:convert';

void main() {
  String jsonData = '''{
  "nomes": ["Ana", "Bruno", "Carlos", "Daniel"]
}''';

  //? DECODE

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  // instância da class List
  List<String> lista = new List<String>.from(parsedJson['nomes']?? []);

  lista.forEach((element) {
    print('Element: ${element}');
  });

  //? ENCODE

  Map<String, dynamic> map = {'nomes': lista};
  String toJson = jsonEncode(map);
  print('toJson ${toJson}');
}

/**
Converter para List<String>
Imprimir todos com forEach
Converter de volta com jsonEncode
 */
