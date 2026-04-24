import 'dart:convert';

void main(List<String> args) => conversaoObjeto();

void conversaoObjeto() {
  print('Conversao de json para Objeto');

  String jsonData = '''

    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@g,ail.com"},
    {"nome":"lucas","idade":42,"email":"lucas@gmail.com"},
    {"nome":"carmem","idade":36,"email":"carmem@gmail.com"}
    ]

''';
  //? DECODE

  List<dynamic> parsedJson = jsonDecode(jsonData);
  print('lista dynamica ${parsedJson}');

  //? Serialização

  ListaPessoa listaPessoa = new ListaPessoa.fromJson(lista: parsedJson);

  print(
    '\nNome: ${listaPessoa.pessoasList[0].nome}, Idade: ${listaPessoa.pessoasList.elementAt(0).idade}\n',
  );

  Pessoa pessoa = listaPessoa.pessoasList.singleWhere(
    (e) => e.nome == 'ricacio',
  );
  print('');
  print('nome: ${pessoa.nome}, Idade: ${pessoa.idade}');

  Pessoa pessoa2 = new Pessoa.fromJson(
    map: {'nome': 'Ana', 'idade': 25, 'email': 'ana@gmail.com'},
  );

  listaPessoa.pessoasList.addAll([pessoa2]);

  List<dynamic> lista = listaPessoa.toJson();
  String toJson = jsonEncode(lista);

  print('toJson ${toJson}');
}

class ListaPessoa {
  List<Pessoa> pessoasList;

  ListaPessoa({required this.pessoasList});

  factory ListaPessoa.fromJson({required List<dynamic> lista}) {
    return ListaPessoa(
      pessoasList: lista.map((e) => Pessoa.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> toJson() => pessoasList;
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
