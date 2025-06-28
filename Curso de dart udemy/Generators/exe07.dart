import 'dart:collection';

void main() {
  Queue<String> pedido = new Queue.from([
    'Arroz parboilizado	2	pacotes (5kg)	Tipo 1',
    'Feijão carioca	2	pacotes (1kg)	',
    'Açúcar cristal	1	pacote (5kg)',
    'Café moído	1	pacote (500g)	Tradicional',
    'Óleo de soja	3	unidades	Marcas variadas',
    'Macarrão espaguete	2	pacotes (500g)	Com ovos',
    'Óleo de soja	3	unidades	Marcas variadas',
    'Leite integral	6	litros	Longa vida',
    'Manteiga com sal	1	pote (500g)	',
    'Queijo mussarela	300	gramas	Fatiado',
    'Presunto	300	gramas	Fatiado',
    'Pão de forma	2	unidades	Integral',
    'Farinha de trigo	1	pacote (1kg)	Sem fermento',
    'Sabão em pó	2	pacotes (1kg)	',
    'Detergente líquido	3	unidades	Neutro',
    'Esponja de cozinha	2	pacotes (3 unid)',
    'Papel higiênico	1	fardo (12 rolos)	Folha dupla',
    'Creme dental	2	unidades	Com flúor',
    'Desodorante aerosol	1	unidade	Masculino',
    '	Sabonete	4	unidades	Neutro',
  ]); // Fila criada

  processandoPedido(pedido).listen(
    (onData) {
      print(onData);
    },
    onDone: () => print('Fim da Lista  de pedido, Boas compras.'),
    onError: (onError) {
      print('Erro !!! $onError');
    },
    cancelOnError: true,
  );
}

/**
 * Simulação de pedidos em fila
Crie uma função async* que simule pedidos sendo processados em uma fila, 
emitindo um novo pedido a cada 2 segundos.
 */

/// Generator async*
Stream<String> processandoPedido(Queue fila) async* {
  for (String intem in fila) {
    print('');
    await Future.delayed(
      Duration(seconds: 2));
    print('');
    yield 'Pedido Pronto! $intem';
  }
}
