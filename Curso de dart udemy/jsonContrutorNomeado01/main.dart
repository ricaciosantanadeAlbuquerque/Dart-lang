import 'dart:convert';

void main() {
  String jsonData = '''
  [
  {"nome":"ana","idade":26,"email":"ana@gamicl.com"},
  {"nome":"carmem","idade":25,"email":"carmem@gmail.com"},
  {"nome":"nino","idade":30,"email":"nino@gmail.com"}
  ]
''';

  // DECODE
  List<dynamic> lista = jsonDecode(jsonData);
  // serializando para objeto, via construtor nomeado

  ListaUsuario listaUsuario = ListaUsuario.fromJson(
    json: lista,
  ); // linha de instanciamento

  List<Usuario>? listResult = listaUsuario.lista;

  listResult.forEach((e) {
    print('${e.nome}');
  });

  Usuario usuario = new Usuario.fromJson({
    'nome': 'ricacio',
    'idade': 28,
    'email': 'ricaciozz@gmail.com',
  });

  listaUsuario.lista.add(usuario);

  // ENCODE

  List<dynamic> listaToJson = listaUsuario.toJson();
  String json = jsonEncode(listaToJson);

  print('toJson ${json}');
}

class ListaUsuario {
  List<Usuario> lista = [];

  ListaUsuario({required this.lista});

  ListaUsuario.fromJson({required List<dynamic> json}) {
    ListaUsuario(lista: json.map((e) => Usuario.fromJson(e)).toList());
  }

  List<dynamic> toJson() => lista;
}

class Usuario {
  late String nome;
  late int idade;
  late String email;

  Usuario({required this.nome, required this.idade, required this.email});

  Usuario.fromJson(Map<String, dynamic> json) {
    this.nome = json['nome'];
    this.idade = json['idade'];
    this.email = json['email'];
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
