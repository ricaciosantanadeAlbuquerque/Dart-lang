import 'dart:convert';

void main() {
  String jsonData = '''

    {
  "pacientes": [
    {
      "nome": "Maria",
      "consultas": [
        {
          "data": "2024-01-01",
          "exames": [
            {"nome": "Sangue", "resultado": "Normal"}
          ]
        }
      ]
    }
  ]
}

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('parsedJson ${parsedJson}');

  PacientesList pacientesList = new PacientesList.fromJson(map: parsedJson);

  for (var i = 0; i <= pacientesList.pacientes.length; i++) {
    Pacientes result = pacientesList.pacientes[0];
    print('Nome do paciente: ${result.nome}');

    for (var j = 0; j <= result.consultas.length; j++) {
      print('Data dos exames: ${result.consultas[0].data}');
      for (var x = 0; x <= result.consultas[0].exames.length; x++) {
        Exames exames = result.consultas[0].exames[0];
        print('Nome do exame: ${exames.nome}, resultado: ${exames.resultado}');
      }
    }
  }

  Map<String, dynamic> map = pacientesList.toJson();
  String toJson = jsonEncode(map);
  print('toJson ${toJson}');
}

/**
 * Listar exames por paciente
Contar consultas
Filtrar exames com resultado específico
 */

class PacientesList {
  List<Pacientes> pacientes;

  PacientesList({required this.pacientes});

  factory PacientesList.fromJson({required Map<String, dynamic> map}) {
    return PacientesList(
      pacientes: (map['pacientes'] as List<dynamic>)
          .map((e) => Pacientes.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pacientes': pacientes.map((e) => e.toJson()).toList()
      };
  }
}

class Pacientes {
  String nome;
  List<Consultas> consultas;

  Pacientes({required this.nome, required this.consultas});

  factory Pacientes.fromJson({required Map<String, dynamic> map}) {
    return Pacientes(
      nome: map['nome'],
      consultas: (map['consultas'] as List<dynamic>)
          .map((e) => Consultas.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome, 
      'consultas': consultas.map((e) => e.toJson()).toList()
      };
  }
}

class Consultas {
  String data;
  List<Exames> exames;

  Consultas({required this.data, required this.exames});

  factory Consultas.fromJson({required Map<String, dynamic> map}) {
    return Consultas(
      data: map['data'],
      exames: (map['exames'] as List<dynamic>)
          .map((e) => Exames.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
       'exames': exames.map((e) => e.toJons()).toList()
       };
  }
}

class Exames {
  String nome;
  String resultado;

  Exames({required this.nome, required this.resultado});

  factory Exames.fromJson({required Map<String, dynamic> map}) {
    return Exames(nome: map['nome'], resultado: map['resultado']);
  }

  Map<String, dynamic> toJons() {
    return {'nome': nome, 'resultado': resultado};
  }
}
