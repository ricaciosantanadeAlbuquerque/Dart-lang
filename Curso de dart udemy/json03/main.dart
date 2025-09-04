import 'dart:convert';

void main() {
  //conversaoDireta();
  conversaoObjeto();
}

void conversaoDireta() {
  String json = '''
   
   {"nome":"Ricacio","idade":28,"salario":1867.00}

''';

  /// Decode

  Map<String, dynamic> map = jsonDecode(json);

  // serialização direta

  String nome = map['nome'];
  int idade = map['idade'];
  double salario = map['salario'];

  print('Nome: $nome, idade: $idade, salario $salario');

  Map<String, dynamic> map01 = {
    "nome": idade,
    "idade": idade,
    "salario": salario,
  };

  // Encode
  String toJson = jsonEncode(map01);

  print('Tojson $toJson');
}

void conversaoObjeto() {
  String listaAlunosJson = '''
  [
  {"nome":"Ricacio","idade":28,"nota":10.0},
  {"nome":"Ana","idade":33,"nota":9.5},
  {"nome":"carmem","idade":26,"nota":8.8}
  ]
  ''';

  // Decode
  List<dynamic> listaAluno = jsonDecode(listaAlunosJson);
  // serialização para objeto
  ListaAluno result = ListaAluno.fromJson(listaJson: listaAluno);
  var lista = result.listaAluno;

  lista.forEach((e) {
    print('nome:${e.nome}, idade:${e.idade}, nota, ${e.nota}');
  });

  Aluno alunoNovato = Aluno.fromJson({
    "nome": "Angela",
    "idade": 42,
    "nota": 10.0,
  });

  lista.add(alunoNovato);

  // Encode
  List<dynamic> listaDynamic = result.toJson();

  String toJson = json.encode(listaDynamic);

  print(toJson);
}

class ListaAluno {
  final List<Aluno> listaAluno;

  ListaAluno({required this.listaAluno});

  factory ListaAluno.fromJson({required List<dynamic> listaJson}) {
    return ListaAluno(
      listaAluno: listaJson.map((map) => Aluno.fromJson(map)).toList(),
    );
  }

  List<dynamic> toJson() => listaAluno;
}

class Aluno {
  final String nome;
  final int idade;
  final double nota;

  Aluno({required this.nome, required this.idade, required this.nota});

  //  map para objeto
  factory Aluno.fromJson(Map<String, dynamic> map) {
    return Aluno(nome: map['nome'], idade: map['idade'], nota: map['nota']);
  }

  // obejto para map
  Map<String, dynamic> toJson() {
    return {"nome": nome, "idade": idade, "nota": nota};
  }
}
