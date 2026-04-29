import 'dart:convert';

void main() {
  String jsonData = '''

      [
      {"nome":"biza","idade":55,"email":"biza@gmail.com"},
      {"nome":"dora","idade":36,"email":"dora@gmail.com"},
      {"nome":"ana","idade":44,"email":"ana@gmail.com"}
      ]
''';

  //? Decode =====================================================================

  List<dynamic> parsedJson = jsonDecode(jsonData);

  ListUsuario listUsuario = new ListUsuario.fromJson(parsedJson);

  print('Nome: ${listUsuario.list.elementAt(0).nome}');

  Usuario usuario = new Usuario.fromJson({
    'nome': 'Martha',
    'idade': 42,
    'email': 'marthajp@gmail.com',
  });

  listUsuario.list.add(usuario);

  //? ENCODE
  List<dynamic> lista = listUsuario.toJson();
  String toJson = jsonEncode(lista);
  print('toJson $toJson');
}

class ListUsuario {
  late List<Usuario> list;

  ListUsuario(this.list);

  ListUsuario.fromJson(List<dynamic> lista)
    : this(lista.map((e) => Usuario.fromJson(e)).toList());

  List<dynamic> toJson() => this.list;
}

class Usuario {
  late String nome;
  late int idade;
  late String email;

  Usuario(this.nome, this.idade, this.email);

  Usuario.fromJson(Map<String, dynamic> map)
    : this(map['nome'], map['idade'], map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
