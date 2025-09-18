import 'dart:convert';

void main() => convertJson();

void convertJson() {
  String jsonData = '''
    [
    {"nome":"Ana","idade":28,"email":"ana@gamil.com"},
    {"nome":"Carmem","idade":29,"email":"carmem@gmail.com"},
    {"nome":"Dora","idade":30,"email":"dora@gmail.com"}
    ]
''';

  // DECODE

  List<dynamic> jsonList = jsonDecode(jsonData);

  ListaUsuario listaUsuario = new ListaUsuario.fromJson(listaJson: jsonList);

  List<Usuario> lista = listaUsuario.lista;

  lista.forEach((element) {
    print('Nome: ${element.nome}');
  });

  Usuario usuario = Usuario.fromJson(
    jsonMap: {'nome': 'Biza', 'idade': 32, 'email': 'biza@gamil.com'},
  );

  lista.add(usuario);

  // EnCode

  List<dynamic> listaJson = listaUsuario.toJson();

  String toJson = json.encode(listaJson);

  print('');

  print('toJson $toJson');
}

class ListaUsuario {
  late List<Usuario> lista;

  //? construtor default
  ListaUsuario({required this.lista});

  //? construtor nomeado
  ListaUsuario.fromJson({required List<dynamic> listaJson}) {
    this.lista = listaJson.map((e) => Usuario.fromJson(jsonMap: e)).toList();
  }

  List<dynamic> toJson() => lista;
}

class Usuario {
  late String nome;
  late int idade;
  late String email;

  //? construtor padrão
  Usuario({required this.nome, required this.idade, required this.email});

  //? construtor nomeado
  Usuario.fromJson({required Map<String, dynamic> jsonMap}) {
    this.nome = jsonMap['nome'];
    this.idade = jsonMap['idade'];
    this.email = jsonMap['email'];
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
