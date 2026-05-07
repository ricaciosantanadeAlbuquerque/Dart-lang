import 'dart:convert';

void main() {
  const String jsonData = '''

      {
  "jogadores": [
    {
      "nome": "Hero",
      "nivel": 10,
      "inventario": [
        {"item": "Espada", "dano": 50},
        {"item": "Escudo", "defesa": 20}
      ]
    }
  ]
}

''';
  //? DECODE
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  print('ParsedJson ${parsedJson}');

  Jogadores jogadores = new Jogadores.fromJson(map: parsedJson);

  jogadores.jogadores.forEach((e) {
    print('Nome:${e.nome}, nível: ${e.nivel}');
  });

  jogadores.jogadores.elementAt(0).inventario.forEach((e) {
    print('Item:${e.item}, Dano: ${e.dano}, Defesa: ${e.defesa}');
  });

  Inventario inventario = Inventario.fromJson(
    map: {'item': 'Armadura', 'dano': 0, 'defesa': 50},
  );

  jogadores..jogadores.elementAt(0).inventario.add(inventario);

  jogadores.jogadores.elementAt(0).nivel = 20;

   var result = jogadores.jogadores.elementAt(0).inventario.fold(0, (
    initialValue,
    combine,
  ) {
    var valor = (combine.dano != 0) ? combine.dano : combine.defesa;
    return (initialValue.toInt()) + valor;
  });

  print('Calcular poder total (dano + defesa) ${result}');

  //? Encode

  Map<String, dynamic> map = jogadores.toJson();
  String toJson = jsonEncode(map);
  print('toJson $toJson');
}

class Jogadores {
  List<Jogador> jogadores;

  Jogadores({required this.jogadores});

  factory Jogadores.fromJson({required Map<String, dynamic> map}) {
    return Jogadores(
      jogadores: (map['jogadores'] as List<dynamic>)
          .map((e) => Jogador.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'jogadores': jogadores};
  }
}

class Jogador {
  String nome;
  int nivel;
  List<Inventario> inventario;

  Jogador({required this.nome, required this.nivel, required this.inventario});

  factory Jogador.fromJson({required Map<String, dynamic> map}) {
    return Jogador(
      nome: map['nome'] ?? 'Indefinido',
      nivel: map['nivel'] ?? 0,
      inventario: (map['inventario'] as List<dynamic>)
          .map((e) => Inventario.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'nivel': nivel,
      'inventario': inventario.map((e) => e.toJson()).toList(),
    };
  }

  @override
  String toString() {
    return 'nome:$nome, nível:$nivel, intervalo: $inventario';
  }
}

class Inventario {
  String item;
  int dano;
  int defesa;

  Inventario({required this.item, required this.dano, required this.defesa});

  factory Inventario.fromJson({required Map<String, dynamic> map}) {
    return Inventario(
      item: map['item'] ?? 'Indefinido',
      dano: map['dano'] ?? 0,
      defesa: map['defesa'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {'item': item, 'dano': dano, 'defesa': defesa};
  }
}

/**
 * Calcular poder total (dano + defesa)
   Adicionar item
   Subir nível do jogador
 */
