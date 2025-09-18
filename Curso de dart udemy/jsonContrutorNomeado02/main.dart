import 'dart:convert';

void main() => conversaoJsonObjeto();

void conversaoJsonObjeto() {
  String jsonData = '''
[
 {"nome":"ricacio","salario":1867.00},
 {"nome":"Marcos","salario":1900.00}
]
''';

  // DECODE
  List<dynamic> list = jsonDecode(jsonData);
  print(list);

  Lista listResult = Lista.fromJson(listaJson: list);

  List<Funcionario> listaF = listResult.lista;

  listaF.forEach((e) {
    print('${e.nome}');
  });

  Funcionario funcionario = new Funcionario.fromJson(
    jsonMap: {'nome': 'Ana', 'salario': 2585.25},
  );

  listResult.lista.add(funcionario);

  // ENCODE

  List<dynamic> listaReturn = listResult.toJson();
  String toJson = jsonEncode(listaReturn);

  print('toJson $toJson');
}

class Lista {
  List<Funcionario> lista = [];

  Lista({required this.lista});

  Lista.fromJson({required List<dynamic> listaJson}) {
    this.lista = listaJson
        .map((map) => Funcionario.fromJson(jsonMap: map))
        .toList();
  }

  List<dynamic> toJson() => lista;
}

class Funcionario {
  late String nome;
  late double salario;

  //? construtor default da classe
  Funcionario({required this.nome, required this.salario});

  //? construtor nomeado
  Funcionario.fromJson({required Map<String, dynamic> jsonMap}) {
    this.nome = jsonMap['nome'];
    this.salario = jsonMap['salario'];
  }

  Map<String, dynamic> toJson() => {'nome': nome, 'salario': salario};
}
