import 'dart:convert';

void main(List<String> args) {
  String jsonData = '''

    {
  "sensores": [
    {
      "id": "temp1",
      "leituras": [
        {"valor": 30, "timestamp": 1},
        {"valor": 35, "timestamp": 2}
      ]
    }
  ]
}

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson: ${parsedJson}');

  Sensores sensores = new Sensores.fromJson(map: parsedJson);

  int somavalor = sensores.sensores.elementAt(0).leituras.fold(0, (
    init,
    value,
  ) {
    return init + value.valor;
  });

  var media = somavalor / 2;

  print(' A média de leituras ${media.truncate()}');

  sensores.sensores.elementAt(0).leituras.sort((a, b) {
    return b.timestamp.compareTo(a.timestamp);
  });

  sensores.sensores.elementAt(0).leituras.forEach((e) {
    print('timeStamp: ${e.timestamp}');
  });

  //? ENCODE

  Map<String, dynamic> map = sensores.toJson();
  String toJson = jsonEncode(map);
  print('toJson ${toJson}');
}

/**
 *  Calcular média das leituras
Detectar valor acima de limite
Ordenar por timestamp

   {
  "sensores": [
    {
      "id": "temp1",
      "leituras": [
        {"valor": 30, "timestamp": 1},
        {"valor": 35, "timestamp": 2}
      ]
    }
  ]
}
 */

class Sensores {
  List<Sensor> sensores;

  Sensores({required this.sensores});

  factory Sensores.fromJson({required Map<String, dynamic> map}) {
    return Sensores(
      sensores: (map['sensores'] as List<dynamic>)
          .map((e) => Sensor.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'sensores': sensores.map((e) => e.toJson()).toList()};
  }
}

class Sensor {
  String id;
  List<Leituras> leituras;

  Sensor({required this.id, required this.leituras});

  factory Sensor.fromJson({required Map<String, dynamic> map}) {
    return Sensor(
      id: map['id'],
      leituras: (map['leituras'] as List<dynamic>)
          .map((e) => Leituras.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id, 
      'leituras': leituras.map((e) => e.toJosn()).toList()
      };
  }
}

class Leituras {
  int valor;
  int timestamp;

  Leituras({required this.valor, required this.timestamp});

  factory Leituras.fromJson({required Map<String, dynamic> map}) {
    return Leituras(valor: map['valor'], timestamp: map['timestamp']);
  }

  Map<String, dynamic> toJosn() {
    return {'valor': valor, 'timestamp': timestamp};
  }
}
