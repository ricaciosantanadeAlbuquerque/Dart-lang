import 'dart:convert';

void main() {
  final String jsonData = '''
    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":27,"email":"lucas@gmail"},
    {"nome":"ana","idade":22,"email":"ana@gmail.com"}
    ]
''';

  //? DECODE
  List<dynamic> parsedJson = jsonDecode(jsonData);

  //? Serialização

  ListUser usuarios = ListUser.fromJson(listaJson: parsedJson);

  User user = User.fromJson(
    map: {'nome': 'biza', 'idade': 26, 'email': 'biza@gmail.com'},
  );

  usuarios.lista.add(user);

  usuarios.lista.forEach((e) {
    print('nome:${e.nome}, idade: ${e.idade}, email: ${e.email}');
  });
  List<dynamic> listaPessoas = usuarios.toJson();

  //? ENCODE

  String toJson = jsonEncode(listaPessoas);

  print('toJson: $toJson');
}

class ListUser {
  final List<User> lista;

  ListUser({required this.lista});

  ListUser.fromJson({required List<dynamic> listaJson})
    : this(lista: listaJson.map((e) => User.fromJson(map: e)).toList());

  List<dynamic> toJson() {
    return lista.map((e) => e.tojson()).toList();
  }
}

class User {
  final String nome;
  final int idade;
  final String email;

  User({required this.nome, required this.idade, required this.email});

  User.fromJson({required Map<String, dynamic> map})
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> tojson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }

  @override
  String toString() {
    return 'nome:$nome, idade:$idade, email:$email';
  }
}
