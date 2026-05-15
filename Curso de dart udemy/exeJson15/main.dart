import 'dart:convert';

void main() {
  final String jsonData = '''

    {
  "viagens": [
    {
      "destino": "Recife",
      "dias": 5,
      "gastos": [
        {
          "tipo": "Hotel",
          "valor": 1200
        },
        {
          "tipo": "Comida",
          "valor": 400
        }
      ]
    }
  ]
}

''';

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  Viagens viagens = Viagens.fromJson(map: parsedJson);

  var gastoTotal = viagens.viagens.elementAt(0).gastos.fold(0, (a, b) {
    return a + b.valor;
  });

  print('Gatos total: $gastoTotal');

  var mediaDiaria = gastoTotal / viagens.viagens.elementAt(0).dias;

  print(' Gastos diarios $mediaDiaria ');

  Gastos gastos = Gastos.fromJson(map: {'tipo': 'passeios', 'valor': 120});

  viagens.viagens.elementAt(0).gastos.add(gastos);

  viagens.viagens
      .elementAt(0)
      .gastos
      .sort((a, b) => b.valor.compareTo(a.valor));

  Map<String, dynamic> map = viagens.toJson();
  String toJson = jsonEncode(map);

  print('toJson $toJson');
}

class Viagens {
  List<Viagen> viagens;

  Viagens({required this.viagens});

  factory Viagens.fromJson({required Map<String, dynamic> map}) {
    return Viagens(
      viagens: (map['viagens'] as List<dynamic>)
          .map((e) => Viagen.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'viagens': viagens};
  }
}

class Viagen {
  String destino;
  int dias;
  List<Gastos> gastos;

  Viagen({required this.destino, required this.dias, required this.gastos});

  factory Viagen.fromJson({required Map<String, dynamic> map}) {
    return Viagen(
      destino: map['destino'],
      dias: map['dias'],
      gastos: (map['gastos'] as List<dynamic>)
          .map((e) => Gastos.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'destino': destino, 'dias': dias, 'gastos': gastos};
  }
}

class Gastos {
  String tipo;
  int valor;

  Gastos({required this.tipo, required this.valor});

  factory Gastos.fromJson({required Map<String, dynamic> map}) {
    return Gastos(tipo: map['tipo'], valor: map['valor']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'valor': valor};
  }
}
