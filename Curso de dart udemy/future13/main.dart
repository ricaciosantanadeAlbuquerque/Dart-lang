/**
 * Implemente três funções:

carregarUsuarios: Retorna "Usuários carregados" após 2 segundos.
carregarProdutos: Retorna "Produtos carregados" após 3 segundos.
carregarPedidos: Retorna "Pedidos carregados" após 4 segundos. Use Future.wait para esperar o resultado de todas as funções e exibi-los juntos.
 */

void main() {
  // Construtor Statico Future.wait()

  Future.wait([carregarUsuario(), carregarProduto(), carregarPedido()])
      .then((onValue) {
        print('Lista de Resultados das Future: ${onValue}');
        // Sabendo que o retorno  de uma Função Future.wait(), é uma lisa de resultados.  podemos iterar sobre essa lista
        onValue.forEach((value){
          print(value);
        });
      })
      .catchError((onError) {
        print(onError);
      })
      .whenComplete(() {
        print('-------------Função Finalizada com Sucesso-----------------');
      });
}

/**
 * A função carregarUsuário, retorna  um objeto Future  via contrutor nomeado Future.delayed()
 */
Future<String> carregarUsuario() => Future.delayed(Duration(seconds: 2), () {
      return "Usuário Carregado";
    });

Future<String> carregarProduto() => Future.delayed(Duration(seconds: 3), () {
      return "Produto Carregado";
    });

Future<String> carregarPedido() => Future.delayed(Duration(seconds: 4), () {
      return 'Pedido Carregado';
    });
