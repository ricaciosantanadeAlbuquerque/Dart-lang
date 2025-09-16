import 'dart:convert';

void main() {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  String jsonData = '''
  {
    "nome":"ricacio","idade":32,"email":"email"
  }

''';

  // DECODE

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  // serialização

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('Serialização) Nome: $nome, idade: $idade, email: $email\n');

  // Encode

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('toJson: $toJson');
}

void conversaoObjeto() {
  String listJson = '''
  [
  {"nome":"Ricacio","idade":32,"email":"Ricacio@gmail.com"},
  {"nome":"Lucas","idade":29,"email":"Lucas@gmail.com"},
  {"nome":"carmem","idade":35,"email":"carmem@gamil.com"}
  ]
''';

  /// DECODE
  List<dynamic> listaJsonData = jsonDecode(listJson);
  print('listJsonData: $listaJsonData');
  // SERIALIZAÇÃO
  ListaUsuario listaUsuario = ListaUsuario.fromJson(listaJson: listaJsonData);

  List<Usuario> lista = listaUsuario.listaUsuario;

  lista.forEach((e) {
    print('nome:${e.nome}, idade: ${e.idade}, email: ${e.email}');
  });

  listaUsuario.listaUsuario.add(
    Usuario.fromJson(
      map: {'nome': 'Ana', 'idade': 42, 'email': 'Ana@gmail.com'},
    ),
  );
  // ENCODE

  List<dynamic> listaToJson = listaUsuario.toJson();
  String toJson = json.encode(listaToJson);

  print('ToJson $toJson');
}

class ListaUsuario {
  final List<Usuario> listaUsuario;

  ListaUsuario({required this.listaUsuario});

  factory ListaUsuario.fromJson({required List<dynamic> listaJson}) {
    return ListaUsuario(
      listaUsuario: listaJson.map((map) => Usuario.fromJson(map: map)).toList(),
    );
  }

  List<dynamic> toJson() => listaUsuario;
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson({required Map<String, dynamic> map}) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = Map();
    map['nome'] = nome;
    map['idade'] = idade;
    map['email'] = email;

    return map;
  }
}
