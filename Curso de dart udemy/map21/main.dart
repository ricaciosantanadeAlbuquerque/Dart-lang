/**
   * Calcular o valor total do estoque

Crie uma função que receba o Map do estoque e retorne o valor total de todos os produtos em estoque.
O valor total de cada produto é dado por quantidade * preco.
Produtos com baixo estoque

Implemente uma função que receba o Map e retorne uma lista com os nomes dos produtos cujo estoque (quantidade) seja menor que 10.


Escreva uma função que receba o Map e uma categoria como entrada. Retorne uma lista de produtos que pertencem àquela categoria.
Do mais caro ao mais barato.

Crie uma função que identifique o produto mais caro (com base no preco) e retorne o nome dele e o valor do preço.
Aumentar preço de uma categoria

Escreva uma função que receba o Map e uma categoria. Aumente o preço de todos os produtos dessa categoria em 10% e retorne o Map atualizado.
Relatório de estoque por categoria

Crie uma função que agrupe os produtos por categoria e retorne um novo Map, onde as chaves são as categorias e os valores são listas com os nomes dos produtos de cada categoria.

   */

void main() {
  Map<String, Map<String, dynamic>> estoque = {
    "TV": {"quantidade": 10, "preco": 1500.0, "categoria": "eletrônicos"},
    "Geladeira": {
      "quantidade": 5,
      "preco": 3000.0,
      "categoria": "eletrodomésticos"
    },
    "Arroz": {"quantidade": 100, "preco": 20.0, "categoria": "alimentos"},
    "Camiseta": {"quantidade": 50, "preco": 30.0, "categoria": "vestuário"},
    "Smartphone": {
      "quantidade": 15,
      "preco": 2000.0,
      "categoria": "eletrônicos"
    },
    "Computador": {
      "quantidade": 5,
      "preco": 2800.0,
      "categoria": "eletrônicos"
    },
    "Cadeira": {"quantidade": 9, "preco": 250, "categoria": 'Movies'},
  };

  //print(valorTotalEstoque(estoque));

  //print(estoqueBaixo(estoque));

  // for (var element in valorCategoria(map: estoque, categoria: 'eletrônicos'))
  // print(element);

  //print(identificarProdutoMaisCaro(estoque: estoque));

  //print(aumentarPreco(estoque: estoque, categoria: 'eletrônicos'));

  print(agrupandoCategoria(estoque: estoque));
}

/// Retorna O Valor total do Estoque.
double valorTotalEstoque(Map<String, Map<String, dynamic>> map) {
  List<dynamic> result = [];

  map.forEach((key, value) {
    result.add(value['quantidade'] * value['preco']);
  });

  print(result);
  return result.reduce((ant, atu) => ant + atu);
}

/// Estoque a baixo de 10
List<String> estoqueBaixo(Map<String, Map<String, dynamic>> map) {
  List<String> baixoEstoque = [];

  for (var elementMap in map.entries) {
    if (elementMap.value['quantidade'] < 10) {
      baixoEstoque.add(elementMap
          .key); // add  o nome dos Map<> cuja quantidade é menor que 10
    }
  }

  return baixoEstoque;
}

//Escreva uma função que receba o Map e uma categoria como entrada. Retorne uma lista de produtos que pertencem àquela categoria.
//Do mais caro ao mais barato.

List<String> valorCategoria(
    {required Map<String, Map<String, dynamic>> map,
    required String categoria}) {
  final List<dynamic> listMap = [];
  final List<String> listFinal = [];

  for (var element in map.entries) {
    if (element.value.containsValue(categoria)) {
      listMap.add(element);
    }
  }

  for (MapEntry i in listMap) {
    listFinal.add('${i.key},  ${i.value}');
  }

  return listFinal.reversed.toList();
}

///Crie uma função que identifique o produto mais caro (com base no preco) e retorne o nome dele e o valor do preço.
//Aumentar preço de uma categoria

Map<String, dynamic> identificarProdutoMaisCaro(
    {required Map<String, Map<String, dynamic>> estoque}) {
  String produtoMaisCaro = "";
  double maiorPreco = 0.0;

  estoque.forEach((produto, detalhes) {
    if (detalhes['preco'] > maiorPreco) {
      maiorPreco = detalhes['preco'];
      produtoMaisCaro = produto;
    }
  });

  return {'nome': produtoMaisCaro, 'preco': maiorPreco};
}

/// Escreva uma função que receba o Map e uma categoria. Aumente o preço de todos os produtos dessa
/// categoria em 10% e retorne o Map atualizado.
///

Map<String, Map<String, dynamic>> aumentarPreco(
    {required Map<String, Map<String, dynamic>> estoque,
    required String categoria}) {
  estoque.forEach((produto, detalhes) {
    if (detalhes['categoria'] == categoria) {
      detalhes.update('preco', (value) => value + (value * 0.10));
    }
  });

  return estoque;
}

//Crie uma função que agrupe os produtos por categoria e retorne um novo Map, onde as chaves são as categorias e os valores são listas com os nomes dos produtos de cada categoria.

Map<String, List<String>> agrupandoCategoria({
  required Map<String, Map<String, dynamic>> estoque,
}) {
  Map<String, List<String>> mapa = {};

  estoque.forEach((produto, detalhes) {
    String categoria = detalhes['categoria'];
    // Adiciona a categoria ao mapa se ainda não existir
    if (!mapa.containsKey(categoria)) {
      mapa[categoria] = [];
    }
    // Adiciona o produto à lista correspondente
    mapa[categoria]?.add(produto);
  });

  return mapa;
}

