import 'dart:convert';

void main() => conversaoObjeto();

void conversaoObjeto() {
  String jsonData = '''
    [
    {"nome":"ricacio","idade":32,"email":"ricaciozz@gamil.com"},
    {"nome":"Lucas","idade":28,"email":"lucas@gamil.com"},
    {"nome":"Ana","idade":45,"email":"ana@gamil.com"}
    ]
''';

  //? DECODE

  var jsonResult = jsonDecode(jsonData);

  print(jsonResult.runtimeType);
  print('');
  print('${jsonResult}');

  ListaPessoa listaPessoa = ListaPessoa.fromJson(listJson: jsonResult);
  var lista = listaPessoa.listaPessoa;

  //? mostrando os valores

  lista.forEach((e) {
    print('Nome:${e.nome}, idade: ${e.idade}, email:${e.email}');
  });

  Pessoa pessoa = Pessoa.fromJson(
    map: {'nome': 'Biza', 'idade': 50, 'email': 'Biza@gmail.com'},
  );

  listaPessoa.listaPessoa.add(pessoa);

  //? ENCODE
  List<dynamic> listaJson = listaPessoa.tojson();
  String toJson = jsonEncode(listaJson);

  print('toJson ${toJson}');
}

class ListaPessoa {
  late List<Pessoa> listaPessoa;

  ListaPessoa({required this.listaPessoa});

  ListaPessoa.fromJson({required List<dynamic> listJson})
    : this(
        listaPessoa: listJson.map((map) => Pessoa.fromJson(map: map)).toList(),
      );

  List<dynamic> tojson() => this.listaPessoa;
}

class Pessoa {
  late String nome;
  late int idade;
  late String email;

  Pessoa({required this.nome, required this.idade, required this.email});

  Pessoa.fromJson({required Map<String, dynamic> map})
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'iadde': idade, 'email': email};
  }
}
