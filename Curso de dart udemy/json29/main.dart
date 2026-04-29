import 'dart:convert';

void main() => conversaoObjeto();

void conversaoObjeto() {
  String jsonData = '''
   [
   {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
   {"nome":"lucas","idade":29,"email":"lucas@gmail.com"},
   {"nome":"carmem","idade":25,"email":"carmem@gmail.com"}
   ]
''';
  //? DECODE

  var parsedJson = jsonDecode(jsonData);

  //? Serialização

  ListPessoa listPessoa = new ListPessoa.fromJson(list: parsedJson);

  print(
    'Nome: ${listPessoa.listPessoa.elementAt(0).nome}, Idade: ${listPessoa.listPessoa.elementAt(0).idade}',
  );

  Pessoa pessoa2 = listPessoa.listPessoa.singleWhere((e) => e.nome == 'carmem');

  print('filtro nome ${pessoa2.nome}');

  Pessoa pessoa3 = Pessoa.fromJson(
    map: {'nome': 'Matheus', 'idade': 24, 'email': 'matheus@gmail.com'},
  );

  listPessoa.listPessoa.add(pessoa3);

  //? ENCODE

  List<dynamic> lista = listPessoa.toJson();
  String toJson = json.encode(lista);

  print('toJson: $toJson');
}

class ListPessoa {
   List<Pessoa> listPessoa;

  ListPessoa({required this.listPessoa});

  factory ListPessoa.fromJson({required List<dynamic> list}) {
    return ListPessoa(
      listPessoa: list.map((e) => Pessoa.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> toJson() {
    return this.listPessoa;
  }
}

class Pessoa {
   String nome;
   int idade;
   String email;

  Pessoa({required this.nome, required this.idade, required this.email});

  factory Pessoa.fromJson({required Map<String, dynamic> map}) {
    return Pessoa(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
