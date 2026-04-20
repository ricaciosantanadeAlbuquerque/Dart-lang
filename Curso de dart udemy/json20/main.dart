import 'dart:convert';

import '../jsonConstrutorLista/main.dart';

void main() {
  //conversaoDireta();
  conversaoObject();
}

void conversaoDireta() {
  print('Conversão Direta para json');

  String jsonData = '''

      {
      "nome":"ricacio",
      "idade":28,
      "email":"ricaciozz@gamil.com"
      }
''';

  /// Decode ===================================================================
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  // Serialização ==============================================================
  String nome = parsedJson['nome'];
  int idade = parsedJson['idade'];
  String email = parsedJson['email'];

  print('Nome: $nome, idade: $idade, email: $email');

  // Encode =====================================================================

  Map<String, dynamic> map = {'nome': nome, 'idade': idade, 'email': email};
  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

void conversaoObject() {
  print('Conversão json para objeto');

  String jsonData = '''
    [
    {"nome":"ricacio","idade":28,"email":"ricaciozz@gmail.com"},
    {"nome":"lucas","idade":26,"email":"lucas@gmail.com"},
    {"nome":"Breno","idade":28,"email":"breno@gmail.com"}
    ]
''';

  // Decode
  List<dynamic> listJson = jsonDecode(jsonData);

  print('listJson: $listJson');

  // Serialização
  PessoaLista pessoaLista = new PessoaLista.fromjson(listaJson: listJson);

  print(
    'Objeto: Nome:${pessoaLista.pessoas[0].nome}, Idade: ${pessoaLista.pessoas[0].idade}, Email: ${pessoaLista.pessoas[0].email}',
  );

  Pessoa pessoa = new Pessoa.fromJson({
    'nome': 'pedro',
    'idade': 26,
    'email': 'pedro@gmail.com',
  });
  // Adicionando um novo bjeto Pessoa por meio de uma coleção pessada como argumento
  // para função addAll()
  pessoaLista.pessoas.addAll([pessoa]);

  // ENCODE

  List<dynamic> lista = pessoaLista.toJson();
  String toJson = json.encode(lista);
  print('toJson $toJson');
}

class PessoaLista {
  final List<Pessoa> pessoas;

  PessoaLista({required this.pessoas});

  factory PessoaLista.fromjson({required List<dynamic> listaJson}) {
    return PessoaLista(
      pessoas: listaJson.map((e) => Pessoa.fromJson(e)).toList(),
    );
  }

  List<dynamic> toJson() {
    return pessoas;
  }
}

class Pessoa {
  final String nome;
  final int idade;
  final String email;

  Pessoa(this.nome, this.idade, this.email);

  factory Pessoa.fromJson(Map<String, dynamic> map) {
    return Pessoa(map['nome'], map['idade'], map['email']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
