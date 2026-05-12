import 'dart:convert';

void main() {
  final String jsonData = '''

  {
  "pedidos": [
    {
      "cliente": "Fernando",
      "itens": [
        {
          "produto": "Pizza",
          "quantidade": 2,
          "preco": 50
        },
        {
          "produto": "Refrigerante",
          "quantidade": 1,
          "preco": 10
        }
      ]
    }
  ]
}
''';

 //? DECODE

  Map<String, dynamic> parsedJson = jsonDecode(jsonData);

  Pedidos pedidos = Pedidos.fromJsom(map: parsedJson);

  int valorTotalPedidos = pedidos.pedidos.elementAt(0).itens.fold(0, (
    ini,
    value,
  ) {
    return ini + value.preco;
  });

  print('valor total: ${valorTotalPedidos}');

  Item item = Item.fromJson(
    map: {'produto': 'casima', 'quantidade': 3, 'preco': 75},
  );

  pedidos.pedidos.elementAt(0).itens.add(item);

  pedidos.pedidos.elementAt(0).itens.sort((a, b) => a.preco.compareTo(b.preco));

  //? ENCODE

  Map<String, dynamic> map = pedidos.toJson();
  String toJson = jsonEncode(map);

  print('toJson ${toJson}');
}

class Pedidos {
  List<Pedido> pedidos;

  Pedidos({required this.pedidos});

  factory Pedidos.fromJsom({required Map<String, dynamic> map}) {
    return Pedidos(
      pedidos: (map['pedidos'] as List<dynamic>)
          .map((e) => Pedido.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'pedidos': pedidos.map((e) => e.toJson()).toList()};
  }
}

class Pedido {
  String cliente;
  List<Item> itens;

  Pedido({required this.cliente, required this.itens});

  factory Pedido.fromJson({required Map<String, dynamic> map}) {
    return Pedido(
      cliente: map['cliente'],
      itens: (map['itens'] as List<dynamic>)
          .map((e) => Item.fromJson(map: e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {'cliente': cliente, 'itens': itens.map((e) => e.toJson()).toList()};
  }
}

class Item {
  String produto;
  int quantidade;
  int preco;

  Item({required this.produto, required this.quantidade, required this.preco});

  factory Item.fromJson({required Map<String, dynamic> map}) {
    return Item(
      produto: map['produto'],
      quantidade: map['quantidade'],
      preco: map['preco'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'produto': produto, 'quantidade': quantidade, 'preco': preco};
  }
}
