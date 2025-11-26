import 'dart:convert';

void main() {
  convertJsonObject();
}

void convertJsonObject() {
  String jsonData = '''

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

  /// Decode

  Map<String, dynamic> fromJson = jsonDecode(jsonData);

  print('Map ${fromJson}');

  // Serialização

  Pessoa pessoa = Pessoa.fromJson(fromJson);

  print('Bens: ${pessoa.bens?.imoveis[0].endereco}');

  print(
    'Nome: ${pessoa.nome}, Descrição da multa ${pessoa.bens?.veiculos[0].multas?.elementAt(0).descrisao}',
  );

  print('');

  pessoa.bens?.imoveis.forEach((e) {
    print(
      'Tipo: ${e.tipo}, endereço: ${e.endereco}, contas: ${e.contas?.elementAt(0).tipo} e valor ${e.contas?.elementAt(0).valor}',
    );
  });

  // Encode

  Map<String,dynamic> mapResult = pessoa.toJson();
  String toJson = jsonEncode(mapResult);

  print('');

  print('toJson ${toJson}');
}

class Pessoa {
  String? nome;
  int? idade;
  Parentes? parentes;
  List<String>? tarefas;
  Conjuge? conjuge;
  List<Filhos>? filhos;
  Bens? bens;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.parentes,
    required this.tarefas,
    required this.conjuge,
    required this.filhos,
    required this.bens,
  });

  factory Pessoa.fromJson(Map<String, dynamic> map) {
    return Pessoa(
      nome: map['nome'],
      idade: map['idade'],
      parentes: Parentes.fromJson(map['parentes']),
      tarefas: List<String>.from(map['tarefas']),
      conjuge: Conjuge.fromjson(map['conjuge']),
      filhos: (map['filhos'] as List).map((e) => Filhos.fromJson(e)).toList(),
      bens: Bens.fromJson(map['bens']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge?.toJson(),
      'filhos': filhos?.map((e) => e.toJson()).toList(),
      'bens': bens?.toJson(),
    };
  }
}

class Parentes {
  String? mae;
  String? pai;

  Parentes({required this.mae, required this.pai});

  factory Parentes.fromJson(Map<String, dynamic> map) {
    return Parentes(mae: map['mae'], pai: map['pai']);
  }

  Map<String, dynamic> toJson() => {'mae': mae, 'pai': pai};
}

class Conjuge {
  String? nome;
  int? idade;
  Parentes? parentes;

  Conjuge({required this.nome, required this.idade, required this.parentes});

  factory Conjuge.fromjson(Map<String, dynamic> map) {
    return Conjuge(
      nome: map['nome'],
      idade: map['idade'],
      parentes: Parentes.fromJson(map['parentes']),
    );
  }
  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'parentes': parentes?.toJson()};
  }
}

class Filhos {
  String? nome;
  int? idade;
  List<String>? vacinas;

  Filhos({required this.nome, required this.idade, required this.vacinas});

  factory Filhos.fromJson(Map<String, dynamic> map) {
    return Filhos(
      nome: map['nome'],
      idade: map['idade'],
      vacinas: List<String>.from(map['vacinas']),
    );
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'vacinas': vacinas};
  }
}

class Bens {
  List<Veiculos> veiculos;
  List<Imoveis> imoveis;

  Bens({required this.veiculos, required this.imoveis});

  factory Bens.fromJson(Map<String, dynamic> map) {
    return Bens(
      veiculos: (map['veiculos'] as List)
          .map((e) => Veiculos.fromJson(e))
          .toList(),
      imoveis: (map['imoveis'] as List)
          .map((e) => Imoveis.fromJson(e))
          .toList(),
    );
  }

  Map<String,dynamic> toJson() {
    return {'veiculos': veiculos.map((e) => e.tojson()).toList(), 'imoveis': imoveis.map((e) => e.toJson()).toList()};
  }
}

class Veiculos {
  String? marca;
  String? modelo;
  Caracteristicas? caracteristicas;
  List<Multas>? multas;

  Veiculos({
    required this.marca,
    required this.modelo,
    required this.caracteristicas,
    required this.multas,
  });

  factory Veiculos.fromJson(Map<String, dynamic> map) {
    return Veiculos(
      marca: map['marca'],
      modelo: map['modelo'],
      caracteristicas: Caracteristicas.fromJson(map['caracteristicas']),
      multas: (map['multas'] as List).map((e) => Multas.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> tojson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas?.map((e) => e.toJson()).toList()
    };
  }
}

class Caracteristicas {
  String? tipo;
  int? passageiros;

  Caracteristicas({required this.tipo, required this.passageiros});

  factory Caracteristicas.fromJson(Map<String, dynamic> map) {
    return Caracteristicas(tipo: map['tipo'], passageiros: map['passageiros']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'passageiros': passageiros};
  }
}

class Multas {
  String? descrisao;
  String? tipo;
  int? pontos;

  Multas({required this.descrisao, required this.tipo, required this.pontos});

  factory Multas.fromJson(Map<String, dynamic> map) {
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
  String? tipo;
  String? endereco;
  List<Contas>? contas;

  Imoveis({required this.tipo, required this.endereco, required this.contas});

  factory Imoveis.fromJson(Map<String, dynamic> map) {
    return Imoveis(
      tipo: map['tipo'],
      endereco: map['endereco'],
      contas: (map['contas'] as List).map((e) => Contas.fromJson(e)).toList(),
    );
  }

  Map<String,dynamic> toJson() {
    return {'tipo': tipo, 'endereco': endereco, 'contas': contas?.map((e) => e.toJson()).toList()};
  }
}

class Contas {
  String? tipo;
  int? valor;

  Contas({required this.tipo, required this.valor});

  factory Contas.fromJson(Map<String, dynamic> map) {
    return Contas(tipo: map['tipo'], valor: map['valor']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'valor': valor};
  }
}
