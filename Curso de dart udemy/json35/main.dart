import 'dart:convert';

void main() {
  final String jsonData = '''
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
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

 /**
  *  print(
    'USO DIRETO: ${parsedJson['bens']['veiculos'][0]['multas'][0]['descrisao']}',
  );
  */

  Pessoa pessoa = Pessoa.fromJson(mapJson: parsedJson);

  print(
    'USO Objeto: ${pessoa.bens.veiculos.map((e) => e.multas.map((e) => e.descrisao).toList()).toList()}',
  );

  Map<String, dynamic> map = pessoa.toJson();

  print('toJson: ${jsonEncode(map)}');

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

  factory Pessoa.fromJson({required Map<String, dynamic> mapJson}) {
    return Pessoa(
      nome: mapJson['nome'],
      idade: mapJson['idade'],
      parentes: Parentes.fromJson(mapJson: mapJson['parentes']),
      tarefas: List<String>.from(mapJson['tarefas']),
      conjuge: Conjuge.fromJson(mapJson: mapJson['conjuge']),
      filhos: (mapJson['filhos'] as List<dynamic>)
          .map((e) => Filhos.fromJson(mapJson: e))
          .toList(),
      bens: Bens.fromJson(mapJson: mapJson['bens']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'idade': idade,
      'parentes': parentes.toJson(),
      'tarefas': tarefas,
      'conjuge': conjuge.toJson(),
      'filhos': filhos.map((e) => e.toJson()).toList(),
      'bens': bens.toJson(),
    };
  }
}

class Parentes {
  String mae;
  String pai;

  Parentes({required this.mae, required this.pai});

  factory Parentes.fromJson({required Map<String, dynamic> mapJson}) {
    return Parentes(mae: mapJson['mae'], pai: mapJson['pai']);
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

  factory Conjuge.fromJson({required Map<String, dynamic> mapJson}) {
    return Conjuge(
      nome: mapJson['nome'],
      idade: mapJson['idade'],
      parentes: Parentes.fromJson(mapJson: mapJson['parentes']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome, 
      'idade': idade, 
      'parentes': parentes.toJson()
      };
  }
}

class Filhos {
  String nome;
  int idade;
  List<String> vacinas;

  Filhos({required this.nome, required this.idade, required this.vacinas});

  factory Filhos.fromJson({required Map<String, dynamic> mapJson}) {
    return Filhos(
      nome: mapJson['nome'],
      idade: mapJson['idade'],
      vacinas: List<String>.from(mapJson['vacinas']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome, 
      'idade': idade, 
      'vacinas': vacinas
      };
  }
}

class Bens {
  List<Veiculos> veiculos;
  List<Imoveis> imoveis;

  Bens({required this.veiculos, required this.imoveis});

  factory Bens.fromJson({required Map<String, dynamic> mapJson}) {
    return Bens(
      imoveis: (mapJson['imoveis'] as List<dynamic>)
          .map((e) => Imoveis.fromJson(mapJson: e))
          .toList(),
      veiculos: (mapJson['veiculos'] as List<dynamic>)
          .map((e) => Veiculos.fromJson(mapJson: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'veiculos': veiculos.map((e) => e.toJson()).toList(), 
      'imoveis': imoveis.map((e) => e.toJson()).toList()
      };
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

  factory Veiculos.fromJson({required Map<String, dynamic> mapJson}) {
    return Veiculos(
      marca: mapJson['marca'],
      modelo: mapJson['modelo'],
      caracteristicas: Caracteristicas.fromJson(
        mapJson: mapJson['caracteristicas'],
      ),
      multas: (mapJson['multas'] as List<dynamic>)
          .map((e) => Multas.fromJson(mapJson: e))
          .toList(),
    );
  } 

  Map<String, dynamic> toJson() {
    return {
      'marca': marca,
      'modelo': modelo,
      'caracteristicas': caracteristicas.toJson(),
      'multas': multas.map((e) => e.toJson()).toList(),
    };
  }
}

class Caracteristicas {
  String tipo;
  int passageiros;

  Caracteristicas({required this.tipo, required this.passageiros});

  factory Caracteristicas.fromJson({required Map<String, dynamic> mapJson}) {
    return Caracteristicas(
      tipo: mapJson['tipo'],
      passageiros: mapJson['passageiros'],
    );
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

  factory Multas.fromJson({required Map<String, dynamic> mapJson}) {
    return Multas(
      descrisao: mapJson['descrisao'],
      tipo: mapJson['tipo'],
      pontos: mapJson['pontos'],
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

  factory Imoveis.fromJson({required Map<String, dynamic> mapJson}) {
    return Imoveis(
      tipo: mapJson['tipo'],
      endereco: mapJson['endereco'],
      contas: (mapJson['contas'] as List<dynamic>)
          .map((e) => Contas.fromJson(mapJson: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
       'endereco': endereco,
        'contas': contas.map((e) => e.toJson()).toList()
        };
  }
}

class Contas {
  String tipo;
  int valor;

  Contas({required this.tipo, required this.valor});

  factory Contas.fromJson({required Map<String, dynamic> mapJson}) {
    return Contas(tipo: mapJson['tipo'], valor: mapJson['valor']);
  }

  Map<String, dynamic> toJson() {
    return {'tipo': tipo, 'valor': valor};
  }
} 
