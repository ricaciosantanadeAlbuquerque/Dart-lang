import 'dart:convert';

void main() {
  String jsonData = '''
    {
  "produtos": [
    {"nome": "Teclado", "preco": 100},
    {"nome": "Mouse", "preco": 50}
  ]
}
''';

  // DECODE
  Map<String, dynamic> parsedjson = jsonDecode(jsonData);

  Produtos listProdutos = new Produtos.fromjson(
    listJson: parsedjson['produtos'],
  );

  listProdutos.produtos.forEach((e) {
    print('Nome: ${e.nome}, Preço: ${e.preco}');
  });

  double soma = listProdutos.produtos.fold(0.0, (inicio, produto) {
    return inicio + produto.preco;
  });

  print(' A soma dos valores de todos os produtos é  ${soma}');
}

/**
Criar classe Produto
Mapear lista
Somar total dos preços
 */

class Produtos {
  late List<Produto> produtos;

  Produtos({required this.produtos});
  factory Produtos.fromjson({required List<dynamic> listJson}) {
    return Produtos(
      produtos: listJson.map((e) => Produto.fromJson(map: e)).toList(),
    );
  }

  List<dynamic> toJson() {
    return this.produtos;
  }
}

class Produto {
  late String nome;
  late int preco;

  Produto({required this.nome, required this.preco});

  factory Produto.fromJson({required Map<String, dynamic> map}) {
    return Produto(nome: map['nome'], preco: map['preco']);
  }

  Map<String, dynamic> toJson() {
    return {'nome': nome, 'preco': preco};
  }
}
