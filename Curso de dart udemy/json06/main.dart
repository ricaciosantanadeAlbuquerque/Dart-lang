import 'dart:convert';

void main() {
  String jsonData = '''
[
{"nome":"Ricacio","idade":28,"email":"ricaciozz@gmail.com"},
{"nome":"Lucas","idade":25,"email":"lucas@gmail.com"},
{"nome":"carmem","idade":45,"email":"carmem@gmail.com"}
]
''';

  /// DECODE JSON PARA OBJECT
  List<dynamic> listaData = jsonDecode(jsonData);
  ListaUsuario listaUsuario = new ListaUsuario.fromJson(listaMap: listaData);
  var usuario = listaUsuario.lista.elementAt(0);
  print(
    'Nome: ${usuario.nome}, idade: ${usuario.idade}, email: ${usuario.email}',
  );

  Usuario usuario02 = Usuario.fromJson(
    map: {'nome': 'joao', 'idade': 26, 'email': 'joao@gmail.com'},
  );

  listaUsuario.lista.add(usuario02);

  /// ENCODE OBJECT PARA JSON

  List<dynamic> lista = listaUsuario.toJson();

  String toJson = jsonEncode(lista);

  print('JSON: $toJson');
}

class ListaUsuario {
  final List<Usuario> lista;

  ListaUsuario({required this.lista});

  factory ListaUsuario.fromJson({required List<dynamic> listaMap}) {
    return ListaUsuario(
      lista: listaMap.map((map) => Usuario.fromJson(map: map)).toList(),
    );
  }

  List<dynamic> toJson() => lista;
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
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
