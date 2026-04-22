import 'dart:convert';

void main() {
  // conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  print('conversao Direta Json');

  String json = '''

      {
       "nome":"lucas","idade":25,"email":"lucas@gmail.com"
        }

''';

  //? DECODE
  var parsedJson = jsonDecode(json);
  print('parsedJson $parsedJson');

  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('Nome:$nome, Idade: $idade, email:$email');

  // Encode

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};

  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

void conversaoObjeto() {
  print('Conversão json Objeto');

  String jsonData = '''

    [
    {"nome":"ricacio","idade":28,"email":"ricacio@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gamil.com"},
    {"nome":"ana","idade":24,"email":"ana@gmail.com"}
    ]

''';
  //? DECODE
  List<dynamic> listJson = jsonDecode(jsonData);
  print('parsedJon $listJson');

  //? Serialização

  ListaPessoa listaPessoa = new ListaPessoa.fromJson(lista: listJson);
  Pessoa pessoa1 = listaPessoa.pessoas.singleWhere((e) => e.nome == 'ricacio');
  Pessoa pessoa2 = new Pessoa.fromJson(
    map: {'nome': 'joao', 'idade': 28, 'email': 'joao'},
  );

  listaPessoa.pessoas.add(pessoa2);

  listaPessoa.pessoas.forEach((e) {
    print('Nome:${e.nome}, Idade: ${e.idade}, Email:${e.email}');
  });

  print('Nome: ${pessoa1.nome}');

  //? ENCODE

  List<dynamic> lista = listaPessoa.tojson();
  String toJson = jsonEncode(lista);

  print('toJson ${toJson}');
  
}

class ListaPessoa {
  final List<Pessoa> pessoas;

  ListaPessoa({required this.pessoas});

  factory ListaPessoa.fromJson({required List<dynamic> lista}) {
    return ListaPessoa(
      pessoas: lista.map((e) => Pessoa.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> tojson() => pessoas;
}

class Pessoa {
  final String nome;
  final int idade;
  final String email;

  Pessoa({required this.nome, required this.idade, required this.email});

  factory Pessoa.fromJson({required Map<String, dynamic> map}) {
    return Pessoa(nome: map['nome'], idade: map['idade'], email: map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
