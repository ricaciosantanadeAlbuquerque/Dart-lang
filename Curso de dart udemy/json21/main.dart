import 'dart:convert';
import 'dart:developer';

void main(List<String> args) => conversaoObjeto();

void conversaoDireta() {
  print('Conversão direta para json');

  String jsonData = '''
    {
     "nome":"Ricacio","idade":28,"email":"ricaciozz@gmail.com"
    }
''';

  //? Decode

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  log('$parsedJson');
  print('$jsonData');

  //? serialização

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('Nome: $nome, Idade: $idade, email: $email');
  log('Nome: $nome, Idade: $idade, Email:$email');

  //? ENCODE

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);
  print('toJson $toJson');
  log('toJson: $toJson');
}

void conversaoObjeto() {
  print('Conversao json para objeto');

  String jsonData = '''

    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
    {"nome":"carmem","idade":42,"email":"carmem@gmail.com"}
    ]

''';
  //? DECODE

  List<dynamic> listJson = jsonDecode(jsonData);

  print(listJson);

  ListaPessoa listaPessoa = ListaPessoa.fromJson(listaMap: listJson);
  print(
    'Nome: ${listaPessoa.pessoas[0].nome},' +
        'Idade:${listaPessoa.pessoas.elementAt(0).idade}, Email:${listaPessoa.pessoas[0].email}',
  );

  Pessoa pessoa = listaPessoa.pessoas.singleWhere((e) => e.nome == 'ricacio');
  log('Nome: ${pessoa.nome}, Idade: ${pessoa.idade}, email: ${pessoa.email}');

  Pessoa pessoa2 = new Pessoa.fromJson(
    map: {'nome': 'joão', 'idade': 22, 'email': 'joao@gmail.com'},
  );

  listaPessoa.pessoas.addAll([pessoa2]);

  //? ENCODE

  List<dynamic> lista = listaPessoa.toJson();
  String toJson = jsonEncode(lista);
  print('\ntoJson: ${toJson}');
}

class ListaPessoa {
  late List<Pessoa> pessoas;

  ListaPessoa({required this.pessoas});

  ListaPessoa.fromJson({required List<dynamic> listaMap})
    : this(pessoas: listaMap.map((e) => Pessoa.fromJson(map: e)).toList());

  List<dynamic> toJson() {
    return pessoas;
  }
}

class Pessoa {
  late String nome;
  late int idade;
  late String email;

  Pessoa({required this.nome, required this.idade, required this.email});

  factory Pessoa.fromJson({required Map<String, dynamic> map}) {
    return Pessoa(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() => {
    'nome': this.nome,
    'idade': this.idade,
    'email': this.email,
  };
}
