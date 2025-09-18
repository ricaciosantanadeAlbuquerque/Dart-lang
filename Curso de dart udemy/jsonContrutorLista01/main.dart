import 'dart:convert';

void main() {
  conversaoJsonObject();
}

void conversaoJsonObject() {
  String jsonData = '''
    [
    {"nome":"Ricacio","idade":27,"email":"ricaciozz@gmail.com"},
    {"nome":"Lucas","idade":35,"email":"lucas@gmail.com"}
    ]
''';

  // DECODE

  var jsonResult = jsonDecode(jsonData);

  print(jsonResult.runtimeType);

  // Serialização em Objeto

  Lista lista = new Lista.fromJsom(lista: jsonResult);
  var listaResult = lista.lista;

  listaResult.forEach((e) {
    print(e.nome);
  });

  Usuario usuario = Usuario.fromJson(
    jsonMap: {'nome': 'biza', 'idade': 29, 'email': 'biza@gamil.com'},
  );

  lista.lista.add(usuario);

  // ENCODE

  List<dynamic> listaJson = lista.toJson();
  String toJson = jsonEncode(listaJson);

  print('toJson ${toJson}');
}

class Lista {
  late List<Usuario> lista;

  Lista({required this.lista});

  Lista.fromJsom({required List<dynamic> lista})
    : this(lista: lista.map((e) => Usuario.fromJson(jsonMap: e)).toList());

  List<dynamic> toJson() => lista;
}

class Usuario {
  late String nome;
  late int idade;
  late String email;

  Usuario({required this.nome, required this.idade, required this.email});

  Usuario.fromJson({required Map<String, dynamic> jsonMap})
    : this(
        nome: jsonMap['nome'],
        idade: jsonMap['idade'],
        email: jsonMap['email'],
      );

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
