import 'dart:math';

/**
 * 2. Processamento de Pedido com whenComplete
Simule um sistema de pedidos onde uma função processarPedido leva 3 segundos para processar um pedido.
 Após o pedido ser concluído, 
 independentemente de sucesso ou erro, use whenComplete para exibir uma mensagem de "Pedido finalizado".

Dicas:

Defina uma função que lança um erro aleatoriamente para simular um problema no processamento.
Use: then(), catchError(), e whenComplete().
3. Cálcu
 */
void main(List<String> args) {
  Random aleatorio = Random();
  processarPedido(aleatorio.nextInt(6) + 1).
  then((onValeu) {
    print('Pedido:${onValeu}');
  }).catchError((onError) {
    print('ERRO!:${onError}');
  }).whenComplete(() {
    print('Pedido Finalizado');
  });
}

Future<dynamic> processarPedido([int pedido = 0]) {
  print(pedido);
  var resposta;
  return Future.delayed(Duration(seconds: 3), () {
    if (pedido == 0 || pedido == 4 || pedido == 5 || pedido == 6) {
      resposta = Future.error('Pedido Inválido !!');
    } else {
      resposta = 'Seu pedido  está quase pronto.';
    }
    return resposta;
  });
}
