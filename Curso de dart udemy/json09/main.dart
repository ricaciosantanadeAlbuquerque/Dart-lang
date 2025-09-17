import 'dart:convert';

void main() {
  String jsonData = '''
    [
    {"nome":"Ricacio","idade":28,"email":"ricaciozz@gamil.com"},
    {"nome":"Lucas","idade":26,"email":"lucas@gamil.com"},
    {"nome":"Ana","idade":36,"email":"ana@gamil.com"}
    ]
''';
  // Decode
  List<dynamic> listJson = jsonDecode(jsonData);

  ListaUsuario listaUsuario = ListaUsuario.fromJson(listJson);
  List<Usuario> lista = listaUsuario.lista;

  lista.forEach((e) {
    print('Nome: ${e.nome}');
  });

  Usuario usuario = Usuario.fromJson({
    'nome': 'lula',
    'idade': 32,
    'email': 'lula@gmail.com',
  });

  lista.add(usuario);

  // Encode

  List<dynamic> lista01 = listaUsuario.toJson();
  String toJson = jsonEncode(lista01);

  print('toJson ${toJson}');
}

class ListaUsuario {
  final List<Usuario> lista;

  ListaUsuario({required this.lista});

  factory ListaUsuario.fromJson(List<dynamic> listajson) {
    return ListaUsuario(
      lista: listajson.map((map) => Usuario.fromJson(map)).toList(),
    );
  }

  List<dynamic> toJson() => lista;
}

class Usuario {
  final String nome;
  final int idade;
  final String email;

  Usuario({required this.nome, required this.idade, required this.email});

  factory Usuario.fromJson(Map<String, dynamic> map) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
