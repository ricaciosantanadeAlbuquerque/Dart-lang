import 'dart:convert';

void main() => convertObject();

void convertObject() {
  String jsonData = '''
  [
    {"nome":"ricacio","idade":29,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":30,"email":"lucas@gmail.com"}
  ]

''';
  // Decode
  List<dynamic> listJson = jsonDecode(jsonData);
  print('Decode ${listJson}');

  // serialização

  ListaUsuario listaUsuario = new ListaUsuario.fromJson(listaMap: listJson);

  print(' Lista de Usuário ${listaUsuario.listaUsuario.elementAt(0).nome}');

  Usuario usuario = new Usuario.fromJson({
    'nome': 'Ana',
    'idade': 23,
    'email': 'ana@gamil.com',
  });

  listaUsuario.listaUsuario.add(usuario);

  // Encode

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = jsonEncode(lista);

  print('toJson $toJson'); 
}

class ListaUsuario {
  List<Usuario> listaUsuario;

  ListaUsuario({required this.listaUsuario});

  factory ListaUsuario.fromJson({required List<dynamic> listaMap}) {
    return ListaUsuario(
      listaUsuario: listaMap.map((e) => Usuario.fromJson(e)).toList(),
    );
  }

  List<dynamic> toJson() {
    return listaUsuario;
  }
}

class Usuario {
  String? nome;
  int? idade;
  String? email;

  Usuario({this.nome, this.idade, this.email});

  factory Usuario.fromJson(Map<String, dynamic> map) {
    return Usuario(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
