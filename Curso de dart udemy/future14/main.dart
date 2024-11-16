void main() async {
  Future<String> usuario =
      Future.delayed(Duration(seconds: 2), () => 'Usuário Carregado');
  Future<String> produto =
      Future.delayed(Duration(seconds: 3), () => 'Produto Carregado');
  Future<String> pedido =
      Future.delayed(Duration(seconds: 4), () => 'Pedido Carregado');

  // Criamos Três objetos Futures

  List<String> result = await Future.wait([usuario, produto, pedido]);
  print(result); // lista de resultados

  for (var item in result) {
    print(item);
  }
}
