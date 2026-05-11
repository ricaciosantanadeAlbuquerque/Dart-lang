import 'dart:convert';

void main() {
  String jsonData = '''

      {
  "alunos": [
    {
      "nome": "Carlos",
      "idade": 25,
      "treinos": [
        {
          "tipo": "Peito",
          "duracao": 60
        },
        {
          "tipo": "Perna",
          "duracao": 90
        }
      ]
    }
  ]
}

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  Alunos alunos = Alunos.fromJson(map: parsedJson);

  var somaNota = alunos.alunos.elementAt(0).treinos.fold(0, (t, treino) {
    return t + treino.duracao;
  });

  print('tempo total do treino: ${somaNota}');

  Treino treino = Treino.fromJson(map: {'tipo': 'Costa', 'duracao': 30});
  alunos.alunos.elementAt(0).treinos.add(treino);

  alunos.alunos[0].treinos.forEach((e) {
    print('Treino: ${e.tipo}, duração: ${e.duracao}');
  });

  alunos.alunos[0].treinos.sort((a, b) => a.duracao.compareTo(b.duracao));

  print('=============//=======================');

  alunos.alunos.elementAt(0).treinos.forEach((e) {
    print('Treino: ${e.tipo}, Duração: ${e.duracao}');
  });

  alunos.alunos.elementAt(0).idade = 45;

  //? ENCODE

  Map<String, dynamic> map = alunos.toJson();

  String toJson = jsonEncode(map);

  print('======================//================');
  
  print('toJson ${toJson}');
}
/**
 * Criar:
Aluno
Treino
Fazer:
calcular tempo total de treino
adicionar novo treino
ordenar treinos por duração
aumentar idade do aluno
 */

class Alunos {
  List<Aluno> alunos;

  Alunos({required this.alunos});

  factory Alunos.fromJson({required Map<String, dynamic> map}) {
    return Alunos(
      alunos: (map['alunos'] as List<dynamic>)
          .map((e) => Aluno.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'alunos': alunos.map((e) => e.toJson()).toList()};
  }
}

class Aluno {
  String nome;
  int idade;
  List<Treino> treinos;

  Aluno({required this.nome, required this.idade, required this.treinos});

  factory Aluno.fromJson({required Map<String, dynamic> map}) {
    return Aluno(
      nome: map['nome'],
      idade: map['idade'],
      treinos: (map['treinos'] as List<dynamic>)
          .map((e) => Treino.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'treinos': treinos.map((e) => e.toJson()).toList(),
    };
  }
}

class Treino {
  String tipo;
  int duracao;

  Treino({required this.tipo, required this.duracao});

  factory Treino.fromJson({required Map<String, dynamic> map}) {
    return Treino(tipo: map['tipo'], duracao: map['duracao']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'duracao': duracao};
  }
}
