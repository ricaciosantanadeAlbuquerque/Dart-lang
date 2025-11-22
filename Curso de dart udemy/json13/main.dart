import 'dart:convert';

void main() {
  convertJsonTobject();
}

void convertJsonTobject() {
  String jsonData = '''
    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gamil.com"},
    {"nome":"Lucas","idade":29,"email":"lucas@gmail.com"}
    ]
''';

  /// DECODE

  List<dynamic> listaJson = jsonDecode(jsonData);
  ListaUsuario listaUsuario = ListaUsuario.fromJson(lista: listaJson);
  print('Lista de usuários ${listaUsuario.usuarios}');

  Usuario usuario = Usuario.fromJson(
    map: {'nome': 'Ana', 'idade': 38, 'email': 'ana@gamil.com'},
  );

  listaUsuario.usuarios.add(usuario);

  /// Encode

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = jsonEncode(lista);

  print('toJson ${toJson}');
}

class ListaUsuario {
  final List<Usuario> usuarios;

  ListaUsuario({required this.usuarios});

  ListaUsuario.fromJson({required List<dynamic> lista})
    : this(usuarios: lista.map((e) => Usuario.fromJson(map: e)).toList());

  List<dynamic> toJson() => this.usuarios;

  @override
  String toString() => '$usuarios';
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  Usuario.fromJson({required Map<String, dynamic> map})
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }

  @override
  String toString() {
    return 'nome:$nome, idade:$idade, email:$email';
  }
}
