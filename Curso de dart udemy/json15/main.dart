import 'dart:convert';

// construtor com lista de inicialização
void main() {
  convertJson();
}

void convertJson() {
  String jsonDataList = '''

      [
       {"nome":"ricacio","idade":29,"email":"ricaciozz@gamil.com"},
       {"nome":"lucas","idade":28,"email":"lucas@gmail.com"},
       {"nome":"ana","idade":35,"email":"ana@gmail.com"}
      ]

''';

  /// Decode
  List<dynamic> parsedListJson = jsonDecode(jsonDataList);

  /// serialização
  ListaPessoa listaPessoa = ListaPessoa.fromJson(parsedListJson);

  listaPessoa.listPessoa.forEach((e) {
    print('nome: ${e.nome}, idade: ${e.idade}, email: ${e.email}');
  });

  /// adicionando mais uma pessoa

  Pessoa pessoa = Pessoa.fromJson({
    'nome': 'matheus',
    'idade': 35,
    'email': 'matheus@gmail.com',
  });

  listaPessoa.listPessoa.add(pessoa);

  /// Encode

  List<dynamic> result = listaPessoa.toJson();
  String toJson = jsonEncode(result);

  print('toJson ${toJson}');
  
}

class ListaPessoa {
  List<Pessoa> listPessoa;

  ListaPessoa({required this.listPessoa});

  ListaPessoa.fromJson(List<dynamic> lista)
    : this(
        listPessoa: lista.map((e) {
          return Pessoa.fromJson(e);
        }).toList(),
      );

  List<dynamic> toJson() => listPessoa;
}

class Pessoa {
  final String nome;
  final int idade;
  final String email;

  Pessoa({required this.nome, required this.idade, required this.email});

  Pessoa.fromJson(Map<String, dynamic> map)
    : this(nome: map['nome'], idade: map['idade'], email: map['email']);

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'email': email};
  }
}
