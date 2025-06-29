import 'dart:collection';

void main() {
  Queue<String> queue = Queue.from([
    '1	Arroz parboilizado	2	pacotes (5kg)	Tipo 1',
    '2	Feijão carioca	2	pacotes (1kg)',
    '3	Açúcar cristal	1	pacote (5kg)',
    '4	Café moído	1	pacote (500g)	Tradicional',
    '5	Óleo de soja	3	unidades	Marcas variadas',
    '6	Macarrão espaguete	2	pacotes (500g)	Com ovos',
    '7	Molho de tomate	4	sachês (340g)',
    '8	Leite integral	6	litros	Longa vida',
    '9	Manteiga com sal	1	pote (500g)',
    '10	Queijo mussarela	300	gramas	Fatiado',
    '11	Presunto	300	gramas	Fatiado',
    '12	Pão de forma	2	unidades	Integral',
    '13	Farinha de trigo	1	pacote (1kg)	Sem fermento',
    '14	Sabão em pó	2	pacotes (1kg)',
    '15	Detergente líquido	3	unidades	Neutro',
    '16	Esponja de cozinha	2	pacotes (3 unid)',
    '17	Papel higiênico	1	fardo (12 rolos)	Folha dupla',
    '18	Creme dental	2	unidades	Com flúor',
    '19	Desodorante aerosol	1	unidade	Masculino',
    '20	Sabonete	4	unidades	Neutro',
  ]);

  processandoPedido(queue).listen(
    (onData) {
      print(onData);
    },
    onDone: () => print('Fim dos Pedidos'),
    onError: (onError) {
      print('ERRO ao processar os pedidos: $onError');
    },
  );
}

/**
 * Simulação de pedidos em fila
 * Crie uma função async* que simule pedidos sendo processados em uma fila, 
 * emitindo um novo pedido a cada 2 segundos.
 */

Stream<String> processandoPedido(Queue<String> fila) async* {
  int numero = 1;
  while (fila.isNotEmpty) {
    await Future.delayed(Duration(seconds: 2));
    yield '🧾 Pedido #$numero pronto: ${fila.removeFirst()}';
    numero++;
  }
}
