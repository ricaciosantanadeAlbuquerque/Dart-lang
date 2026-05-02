import 'dart:convert';

void main() {
  String jsonData = '''

    {
  "linhas": [
    {
      "numero": "101",
      "paradas": [
        {"nome": "Centro", "tempo": 5},
        {"nome": "Bairro", "tempo": 10}
      ]
    }
  ]
}

 ''';

  //? DECODE
  Map<String, dynamic> mapJson = jsonDecode(jsonData);

  LinhasTempo linhasTempo = LinhasTempo.fromJson(map: mapJson);

  print(
    'Paradas: ${linhasTempo.linhas[0].paradas[0].nome}, Tempo: ${linhasTempo.linhas[0].paradas[0].tempo}',
  );

  Tempo tempos = linhasTempo.linhas[0];

  var tempoTotal = tempos.paradas.fold(0, (a, b) {
    return a + b.tempo;
  });

  print('Tempo total das Linhas ${tempoTotal}');

  Paradas paradas = new Paradas.fromJson(map: {'nome': 'Manaíra', 'tempo': 25});
  tempos.paradas.add(paradas);
  tempos.paradas.sort((a, b) => b.tempo.compareTo(a.tempo));

  /// Ordenando em decrescente

  tempos.paradas.forEach((e) {
    print('Paradas:${e.nome}, tempo: ${e.tempo}');
  });

  //? ENCODE

  Map<String, dynamic> map = linhasTempo.toJson();
  String toJson = jsonEncode(map);

  print('toJson ${toJson}');
}

class LinhasTempo {
  List<Tempo> linhas;

  LinhasTempo({required this.linhas});

  factory LinhasTempo.fromJson({required Map<String, dynamic> map}) {
    return LinhasTempo(
      linhas: (map['linhas'] as List<dynamic>)
          .map((e) => Tempo.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'linhas': linhas.map((e) => e.toJson()).toList()};
  }
}

class Tempo {
  String numero;
  List<Paradas> paradas;

  Tempo({required this.numero, required this.paradas});

  factory Tempo.fromJson({required Map<String, dynamic> map}) {
    return Tempo(
      numero: map['numero'],
      paradas: (map['paradas'] as List<dynamic>)
          .map((e) => Paradas.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'numero': numero,
      'paradas': paradas.map((e) => e.toJson()).toList(),
    };
  }
}

class Paradas {
  String nome;
  int tempo;

  Paradas({required this.nome, required this.tempo});

  factory Paradas.fromJson({required Map<String, dynamic> map}) {
    return Paradas(nome: map['nome'], tempo: map['tempo']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'tempo': tempo};
  }
}
