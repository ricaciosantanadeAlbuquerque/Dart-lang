import 'dart:convert';

void main() {
  String jsonData = '''

    {
  "cursos": [
    {
      "nome": "Flutter",
      "aulas": [
        {"titulo": "Introdução", "duracao": 10},
        {"titulo": "Widgets", "duracao": 20}
      ]
    }
  ]
}

''';

  //? Decode
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  //? Serialização

  Cursos cursos = new Cursos.fromJson(map: parsedJson);

  cursos.curso.forEach((e) {
    print('Nome do curso: ${e.nome}');
  });

  cursos.curso[0].aulas.forEach((e) {
    print('Aulas: ${e.titulo}');
  });
  var duracaoTotal = cursos.curso[0].aulas.fold(0, (a, b) {
    return a + b.duracao;
  });

  print('Duração total do curso $duracaoTotal minutos.');

  Aulas aulas = new Aulas.fromJson(
    map: {'titulo': 'widgets responsivos', 'duracao': 60},
  );

  cursos.curso[0].aulas.add(aulas);

  //? ENCODE
  Map<String, dynamic> map = cursos.toJson();
  String toJson = jsonEncode(map);

  print('');
  print('toJson $toJson');
}

class Cursos {
  List<Curso> curso;

  Cursos({required this.curso});

  factory Cursos.fromJson({required Map<String, dynamic> map}) {
    return Cursos(
      curso: (map['cursos'] as List<dynamic>)
          .map((e) => Curso.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'cursos': curso.map((e) => e.toJson()).toList()};
  }
}

class Curso {
  String nome;
  List<Aulas> aulas;

  Curso({required this.nome, required this.aulas});

  factory Curso.fromJson({required Map<String, dynamic> map}) {
    return Curso(
      nome: map['nome'],
      aulas: (map['aulas'] as List<dynamic>)
          .map((e) => Aulas.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'aulas': aulas.map((e) => e.toJson()).toList()};
  }
}

class Aulas {
  String titulo;
  int duracao;

  Aulas({required this.titulo, required this.duracao});

  factory Aulas.fromJson({required Map<String, dynamic> map}) {
    return Aulas(titulo: map['titulo'], duracao: map['duracao']);
  }

  Map<String, dynamic> toJson() {
    return {'titulo': titulo, 'duracao': duracao};
  }
}
