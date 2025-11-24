import 'dart:convert';

void main() => convertObjeto();

void convertObjeto() {
  String jsonData = '''

  [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gmail.com"}

  ]

''';

  List<dynamic> fromJsonList = jsonDecode(jsonData);

  ListaUsuario listaUsuario = ListaUsuario.fromJson(fromJsonList);
  print(
    'Lista de Objetos usuários ${listaUsuario.listUsuarios.elementAt(0).nome}, idade ${listaUsuario.listUsuarios.elementAt(0).idade}',
  );

  Usuario usuario = Usuario.fromJson({
    'nome': 'Ana',
    'idade': 35,
    'email': 'ana@gmail.com',
  });

  listaUsuario.listUsuarios.add(usuario);

  List<dynamic> listaReturn = listaUsuario.toJson();
  String toJson = jsonEncode(listaReturn);

  print('Encode toJson ${toJson}');
}

class ListaUsuario {
  final List<Usuario> listUsuarios;
  ListaUsuario({required this.listUsuarios});

  factory ListaUsuario.fromJson(List<dynamic> lista) {
    return ListaUsuario(
      listUsuarios: lista.map((e) => Usuario.fromJson(e)).toList(),
    );
  }

  List<dynamic> toJson() => listUsuarios;
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
