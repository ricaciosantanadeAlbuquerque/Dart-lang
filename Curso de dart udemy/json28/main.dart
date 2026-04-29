import 'dart:convert';

import '../json11/main.dart';

void main(List<String> args) {
  String JsonData = '''
    {
    "nome" : "Fernando", 
    "idade": 36, 
    "parentes": {
      "mae": "Marlene",
      "pai": "Delcio"
    },
    "tarefas": [
      "Pagar contas",
      "Estudar"
    ],
    "conjuge": {
      "nome" : "Leila", 
      "idade": 31,
      "parentes": {
        "mae": "Lindraci",
        "pai": "Pedro"
      }
    },
    "filhos" : [      
      {
        "nome" : "Chloe", 
        "idade": 1, 
        "vacinas": [
          "ACWY",
          "Sarampo"
        ]
      },
      {
        "nome" : "Bartolomeu", 
        "idade": 5, 
        "vacinas": [
          "ACWY",
          "Sarampo",
          "Meningite"
        ]
      }
    ],
    "bens": {
      "veiculos": [
        {
          "marca": "Maverick",
          "modelo": "Ford",
          "caracteristicas": {
            "tipo": "passeio",
            "passageiros": 5
          },
          "multas": [
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Estacionar Local Proibido",
              "tipo": "Grave",
              "pontos": 4
            }
          ]
        },
        {
          "marca": "Kawasaki",
          "modelo": "Ninja H2R",
          "caracteristicas": {
            "tipo": "corrida",
            "passageiros": 2
          },
          "multas": [
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            },
            {
              "descrisao": "Excesso Velocidade",
              "tipo": "Gravissima",
              "pontos": 7
            }
          ]
        }
      ],
      "imoveis": [
        {
          "tipo": "casa",
          "endereco": "Rua dos tolos, 0, Vila do Chaves",
          "contas": [
            {
              "tipo": "IPTU",
              "valor": 1000
            },
            {
              "tipo": "Condominio",
              "valor": 500
            }
          ]
        }
      ]
    }
  }
''';
  //? DECODE
  var parsedJson = jsonDecode(JsonData);

  // print(parsedJson);

  Pessoa pessoa = new Pessoa.fromJson(map: parsedJson);
  print('Descrição da multa, ${pessoa.bens.veiculos[0].multas[0].descrisao}');
  print('\n Nome do Filho, ${pessoa.filhos.elementAt(0).nome}');
  print('Imóvel: ${pessoa.bens.imoveis.elementAt(0).tipo}');
}

class Pessoa {
  String nome;
  int idade;
  Parentes parentes;
  List<String> tarefas;
  Conjuge conjuge;
  List<Filhos> filhos;
  Bens bens;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.parentes,
    required this.tarefas,
    required this.conjuge,
    required this.filhos,
    required this.bens,
  });

  factory Pessoa.fromJson({required Map<String, dynamic> map}) {
    return Pessoa(
      nome: map['nome'],
      idade: map['idade'],
      parentes: Parentes.fromJson(map: map['parentes']),
      tarefas: List<String>.from(map['tarefas']),
      conjuge: Conjuge.fromJson(map: map['conjuge']),
      filhos: (map['filhos'] as List<dynamic>)
          .map((e) => Filhos.fromJson(map: e))
          .toList(),
      bens: Bens.fromJson(map: map['bens']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }
}

class Parentes {
  String mae;
  String pai;

  Parentes({required this.mae, required this.pai});

  factory Parentes.fromJson({required Map<String, dynamic> map}) {
    return Parentes(mae: map['mae'], pai: map['pai']);
  }

  Map<String, dynamic> toJson() {
    return {'mae': mae, 'pai': pai};
  }
}

class Conjuge {
  String nome;
  int idade;
  Parentes parentes;

  Conjuge({required this.nome, required this.idade, required this.parentes});

  factory Conjuge.fromJson({required Map<String, dynamic> map}) {
    return Conjuge(
      nome: map['nome'],
      idade: map['idade'],
      parentes: Parentes.fromJson(map: map['parentes']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'parentes': parentes};
  }
}

class Filhos {
  String nome;
  int idade;
  List<String> vacinas;

  Filhos({required this.nome, required this.idade, required this.vacinas});

  factory Filhos.fromJson({required Map<String, dynamic> map}) {
    return Filhos(
      nome: map['nome'],
      idade: map['idade'],
      vacinas: List<String>.from(map['vacinas']),
    );
  }

  toJson() {
    return {'nome': nome, 'idade': idade, 'vacinas': vacinas};
  }
}

class Bens {
  List<Veiculos> veiculos;
  List<Imoveis> imoveis;

  Bens({required this.veiculos, required this.imoveis});

  factory Bens.fromJson({required Map<String, dynamic> map}) {
    return Bens(
      imoveis: (map['imoveis'] as List<dynamic>)
          .map((e) => Imoveis.fromJson(map: e))
          .toList(),
      veiculos: (map['veiculos'] as List<dynamic>)
          .map((e) => Veiculos.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'veiculos': veiculos, 'imoveis': imoveis};
  }
}

class Veiculos {
  String marca;
  String modelo;
  Caracteristicas caracteristicas;
  List<Multas> multas;

  Veiculos({
    required this.marca,
    required this.modelo,
    required this.caracteristicas,
    required this.multas,
  });

  factory Veiculos.fromJson({required Map<String, dynamic> map}) {
    return Veiculos(
      marca: map['marca'],
      modelo: map['modelo'],
      caracteristicas: Caracteristicas.fromJson(map: map['caracteristicas']),
      multas: (map['multas'] as List<dynamic>)
          .map((e) => Multas.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas,
    };
  }
}

class Caracteristicas {
  String tipo;
  int passageiros;

  Caracteristicas({required this.tipo, required this.passageiros});

  factory Caracteristicas.fromJson({required Map<String, dynamic> map}) {
    return Caracteristicas(tipo: map['tipo'], passageiros: map['passageiros']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'passageiros': passageiros};
  }
}

class Multas {
  String descrisao;
  String tipo;
  int pontos;

  Multas({required this.descrisao, required this.tipo, required this.pontos});

  factory Multas.fromJson({required Map<String, dynamic> map}) {
    return Multas(
      descrisao: map['descrisao'],
      tipo: map['tipo'],
      pontos: map['pontos'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'descrisao': descrisao, 'tipo': tipo, 'pontos': pontos};
  }
}

class Imoveis {
  String tipo;
  String endereco;
  List<Contas> contas;

  Imoveis({required this.tipo, required this.endereco, required this.contas});

  factory Imoveis.fromJson({required Map<String, dynamic> map}) {
    return Imoveis(
      tipo: map['tipo'],
      endereco: map['endereco'],
      contas: (map['contas'] as List<dynamic>)
          .map((e) => Contas.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'endereco': endereco, 'contas': contas};
  }
}

class Contas {
  String tipo;
  int valor;

  Contas({required this.tipo, required this.valor});

  factory Contas.fromJson({required Map<String, dynamic> map}) {
    return Contas(tipo: map['tipo'], valor: map['valor']);
  }

  Map<String, dynamic> toJSon() {
    return {'tipo': tipo, 'valor': valor};
  }
}
