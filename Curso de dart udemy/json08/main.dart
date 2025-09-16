import 'dart:convert';

void main(List<String> args) {
  conversaoObjeto();
}

void conversaoDireta() {
  String json = '''
  {
    "nome":"ricacio",
    "idade":36,
    "email":"ricaciozz@gamil.com"
  }''';

  // DECODE
  Map<String, dynamic> mapJson = jsonDecode(json);

  String nome = mapJson['nome'];
  int idade = mapJson['idade'];
  String email = mapJson['email'];

  // Serialização
  print('Nome: $nome, idade:$idade, email:$email');

  // ENCODE
  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

void conversaoObjeto() {
  String json = '''
  {
  "nome":"lucas",
  "idade":25,
  "email":"lucas@gmail.com"
  }
''';

  // DECODE
  Map<String, dynamic> jsonMap = jsonDecode(json);
  Pessoa pessoa = Pessoa.fromJson(jsonMap);
  print('nome:${pessoa.nome}, idade: ${pessoa.idade} email: ${pessoa.email}');

  // ENCODE

  Map<String, dynamic> map = pessoa.toJson();
  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

class Pessoa {
  final String nome;
  final int idade;
  final String email;

  Pessoa({this.nome = "indefinido", this.idade = 0, this.email = "indefinido"});

  factory Pessoa.fromJson(Map<String, dynamic> json) {
    return Pessoa(
      nome: json['nome'],
      idade: json['idade'],
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
