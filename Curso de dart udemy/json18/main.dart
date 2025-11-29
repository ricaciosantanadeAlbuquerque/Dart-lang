import 'dart:convert';

void main() {
  convertObject();
}

void convertObject() {
  String jsonData = '''
  [
  {"nome":"ricacio","idade":28,"email":"ricaciozz@gamicl.com"},
  {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
  {"nome":"ana","idade":35,"email":"ana@gmail.com"}
  ]

''';
  // Decode
  List<dynamic> listJsonResult = jsonDecode(jsonData);

  // serialização

  ListaUsuario listaUsuario = new ListaUsuario.fromJson(lista: listJsonResult);

  print('Objeto: ${listaUsuario.listaUsuario.elementAt(0).nome}');

  // adicionando um usuário;

  Usuario usuario = new Usuario.fromJson(
    map: {'nome': 'carmem', 'idade': 38, 'email': 'carmem@gmail.com'},
  );

  listaUsuario.listaUsuario.add(usuario);

  // ENCODE

  String toJson = jsonEncode(listaUsuario.toJson());

  print('');
  print('toJson: ${toJson}');
}

class ListaUsuario {
  final List<Usuario> listaUsuario;

  ListaUsuario({required this.listaUsuario});

  ListaUsuario.fromJson({required List<dynamic> lista})
    : this(listaUsuario: lista.map((e) => Usuario.fromJson(map: e)).toList());

  List<dynamic> toJson() => (listaUsuario as List<dynamic>);
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
}
