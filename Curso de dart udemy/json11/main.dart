import 'dart:convert';

void main() {
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

  Map<String, dynamic> jsonResult = jsonDecode(jsonData);

  Pessoa pessoa = Pessoa.fromJson(json: jsonResult);

  print('${pessoa}');

  Map<String, dynamic> mapJson = pessoa.toJson();
  String toJson = jsonEncode(mapJson);

  print('toJson $toJson');
}

class Pessoa {
  final String nome;
  final int idade;
  final Parentes parentes;
  final List<String> tarefas;
  final Conjuge conjuge;
  final List<Filhos> filhos;
  final Bens bens;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.parentes,
    required this.tarefas,
    required this.conjuge,
    required this.filhos,
    required this.bens,
  });

  Pessoa.fromJson({required Map<String, dynamic> json})
    : this(
        nome: json['nome'],
        idade: json['idade'],
        parentes: Parentes.fromJson(map: json['parentes']),
        tarefas: List<String>.from(json['tarefas']),
        conjuge: Conjuge.from(map: json['conjuge']),
        filhos: (json['filhos'] as List)
            .map((e) => Filhos.froJson(map: e))
            .toList(),
        bens: Bens.fronJson(map: json['bens']),
      );

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes,
      'tarefas': tarefas,
      'conjuge': conjuge,
      'filhos': filhos,
      'bens': bens,
    };
  }

  @override
  String toString() {
    return '$nome, $idade, ${bens}, ${conjuge} ${filhos}, ${parentes}, ${tarefas}';
  }
}

class Parentes {
  final String mae;
  final String pai;

  Parentes({required this.mae, required this.pai});

  Parentes.fromJson({required Map<String, dynamic> map})
    : this(mae: map['mae'], pai: map['pai']);

  Map<String, dynamic> toJson() {
    return {'mae': mae, 'pai': pai};
  }

  @override
  String toString() {
    return '$mae, $pai';
  }
}

class Conjuge {
  final String nome;
  final int idade;
  final Parentes parentes;

  Conjuge({required this.nome, required this.idade, required this.parentes});

  Conjuge.from({required Map<String, dynamic> map})
    : this(
        nome: map['nome'],
        idade: map['idade'],
        parentes: Parentes.fromJson(map: map['parentes']),
      );

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'parentes': parentes};
  }

  @override
  String toString() {
    return '$nome, $idade, ${parentes}';
  }
}

class Filhos {
  final String nome;
  final int idade;
  final List<String> vacinas;

  Filhos({required this.nome, required this.idade, required this.vacinas});

  Filhos.froJson({required Map<String, dynamic> map})
    : this(
        nome: map['nome'],
        idade: map['idade'],
        vacinas: List<String>.from(map['vacinas']),
      );

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'idade': idade, 'vacinas': vacinas};
  }

  @override
  String toString() {
    return '$nome, $idade, ${vacinas}';
  }
}

class Bens {
  final List<Veiculos> veiculos;
  final List<Imoveis> imoveis;

  Bens({required this.veiculos, required this.imoveis});

  Bens.fronJson({required Map<String, dynamic> map})
    : this(
        imoveis: (map['imoveis'] as List)
            .map((e) => Imoveis.fromJson(map: e))
            .toList(),
        veiculos: (map['veiculos'] as List)
            .map((e) => Veiculos.fromJson(map: e))
            .toList(),
      );

  Map<String, dynamic> toJson() {
    return {'veiculos': veiculos, 'imoveis': imoveis};
  }

  @override
  String toString() {
    return '${veiculos}, ${imoveis}';
  }
}

class Veiculos {
  final String marca;
  final String modelo;
  final Caracteristicas caracteristicas;
  final List<Multas> multas;

  Veiculos({
    required this.marca,
    required this.modelo,
    required this.caracteristicas,
    required this.multas,
  });

  Veiculos.fromJson({required Map<String, dynamic> map})
    : this(
        marca: map['marca'],
        modelo: map['modelo'],
        caracteristicas: Caracteristicas.fromJson(map: map['caracteristicas']),
        multas: (map['multas'] as List)
            .map((e) => Multas.fromJson(map: e))
            .toList(),
      );

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas,
      'multas': multas,
    };
  }

  @override
  String toString() {
    return ' $marca, $modelo, ${multas}, ${caracteristicas}';
  }
}

class Caracteristicas {
  final String tipo;
  final int passageiros;

  Caracteristicas({required this.tipo, required this.passageiros});

  Caracteristicas.fromJson({required Map<String, dynamic> map})
    : this(tipo: map['tipo'], passageiros: map['passageiros']);

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'passageiros': passageiros};
  }

  @override
  String toString() {
    return '${tipo}, $passageiros';
  }
}

class Imoveis {
  final String tipo;
  final String endereco;
  final List<Contas> contas;

  Imoveis({required this.tipo, required this.endereco, required this.contas});

  Imoveis.fromJson({required Map<String, dynamic> map})
    : this(
        tipo: map['tipo'],
        endereco: map['endereco'],
        contas: (map['contas'] as List)
            .map((e) => Contas.fromJson(map: e))
            .toList(),
      );

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'endereco': endereco, 'contas': contas};
  }

  @override
  String toString() {
    return '$tipo, $endereco, ${contas}';
  }
}

class Contas {
  final String tipo;
  final int valor;

  Contas({required this.tipo, required this.valor});

  Contas.fromJson({required Map<String, dynamic> map})
    : this(tipo: map['tipo'], valor: map['valor']);

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'valor': valor};
  }

  @override
  String toString() {
    return '$tipo, $valor';
  }
}

class Multas {
  final String descrisao;
  final String tipo;
  final int pontos;

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

  @override
  String toString() {
    return '$descrisao, $tipo, $pontos';
  }
}
