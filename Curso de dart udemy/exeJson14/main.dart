import 'dart:convert';

void main(List<String> args) {
  print(args);

  final String jsonData = '''

      {
  "turmas": [
    {
      "nome": "Turma A",
      "alunos": [
        {
          "nome": "Ana",
          "notas": [8, 7, 9]
        },
        {
          "nome": "Pedro",
          "notas": [5, 6, 4]
        }
      ]
    }
  ]
}

''';

  //? Decode

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  Turmas turmas = Turmas.fromJson(map: parsedJson);

  num mediaAluno = 0;

  late String nome;
  List<Map<String, dynamic>> alunosGeral = [];

  for (var e in turmas.turmas[0].alunos) {
    Map<String, dynamic> alunosResult = {};
    num caixa = 0;
    int cont = 0;
    for (var i in e.notas) {
      caixa += i;
      cont++;
      nome = e.nome;
    }
    mediaAluno = caixa ~/ cont;
    print('Media do aluno $nome, é $mediaAluno');
    alunosResult['nome'] = nome;
    alunosResult['media'] = mediaAluno;
    if (mediaAluno >= 7 && mediaAluno <= 10) {
      print('Aluno $nome, aprovado!');
    } else {
      print('Aluno $nome, está reprovado!');
    }
    print('$alunosResult');

    alunosGeral.add(alunosResult);
  }
  alunosGeral.sort((a, b) {
    return a['media'];
  });

  print('lista $alunosGeral');

  Aluno aluno = Aluno.fromJson(
    map: {
      'nome': 'ricacio',
      'notas': [10, 8, 9],
    },
  );

  turmas.turmas.elementAt(0).alunos.add(aluno);

  Map<String, dynamic> map = turmas.toJson();
  String toJson = jsonEncode(map);

  print('toJson ${toJson}');
}

class Turmas {
  final List<Turma> turmas;

  Turmas({required this.turmas});

  factory Turmas.fromJson({required Map<String, dynamic> map}) {
    return Turmas(
      turmas: (map['turmas'] as List<dynamic>)
          .map((e) => Turma.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'turmas': turmas};
  }
}

class Turma {
  String nome;
  List<Aluno> alunos;

  Turma({required this.nome, required this.alunos});

  factory Turma.fromJson({required Map<String, dynamic> map}) {
    return Turma(
      nome: map['nome'],
      alunos: (map['alunos'] as List<dynamic>)
          .map((e) => Aluno.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'alunos': alunos.map((e) => e.toJson()).toList()};
  }
}

class Aluno {
  String nome;
  List<int> notas;

  Aluno({required this.nome, required this.notas});

  factory Aluno.fromJson({required Map<String, dynamic> map}) {
    return Aluno(nome: map['nome'], notas: List<int>.from(map['notas']));
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'notas': notas};
  }
}
