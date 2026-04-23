import 'dart:convert';

void main() {
  conversaoObjeto();
}

void conversaoObjeto() {
  String jsonData = '''

    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
    {"nome":"ana","idade":24,"email":"ana@gmail.com"}
    ]

''';

  //?  DECODE

  List<dynamic> parsedListjson = jsonDecode(jsonData);
  print('Decode $parsedListjson');

  ListUsuario listaUsuario = new ListUsuario.fromJson(lista: parsedListjson);

  print('Serialização ${listaUsuario.listUsuarios?[0].nome}');

  Usuario usuario = listaUsuario.listUsuarios!.singleWhere(
    (e) => e.nome == 'ricacio',
  );

  Usuario usuario2 = new Usuario.fromJson(
    map: {'nome': 'joao', 'idade': 22, 'email': 'joao@gmail.com'},
  );
  listaUsuario.listUsuarios?.add(usuario2);
  print('\nnome ${usuario.nome}\n');

  List<dynamic> lista = listaUsuario.toJson();
  String toJson = jsonEncode(lista);

  print('toJson ${toJson}');
}

class ListUsuario {
  List<Usuario>? listUsuarios;

  ListUsuario({required this.listUsuarios});

  ListUsuario.fromJson({required List<dynamic> lista}) {
    this.listUsuarios = lista
        .map((element) => Usuario.fromJson(map: element))
        .toList();
  }

  List<dynamic> toJson() => listUsuarios ?? [];
}

class Usuario {
  String? nome;
  int? idade;
  String? email;

  Usuario({this.nome, this.idade, this.email});

  Usuario.fromJson({required Map<String, dynamic> map}) {
    this.nome = map['nome'] == null
        ? 'indefinido'
        : map['nome'].toString().isEmpty
        ? 'indefinido'
        : map['nome'];

    this.idade = map['idade'] == null ? 0 : map[idade];

    this.email = map['email'] == null
        ? 'indefinido'
        : map['email'].toString().isEmpty
        ? 'indefinido'
        : map['email'];
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': 28, 'email': email};
  }
}
