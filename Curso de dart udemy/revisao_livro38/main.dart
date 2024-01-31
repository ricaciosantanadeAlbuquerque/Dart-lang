import 'dart:math';

/**
 * Faça uma função que deve gerar uma lista de números inteiros
 * Faça uma função que recebe um inteiro um array e faz uma bucas no array retornando true se o  valor existir, ou false se não existir.
 * Faça uma Closures que deve receber um valor inteiro e o retorno da função que gera a lita (array),a Closures mais interna deve receber a 
 * funcao que irá fazer a busca. E retornar o resultado desta busca, para função mais externa, que por sua vez, irá retornar este valor para  quem a evocar.
 */
void main() {
  executar();
}

List<int> geradorLista() {
  List<int> lista = [];
  for (var i = 0; i < 100; i++) {
    lista.add(Random().nextInt(100 + 1));
  }
  print(lista);
  return lista;
}

bool busca(int busca, List<int> array) {
  // print(busca);
  bool achou = false;
  var valor = 0;
  for (var item in array) {
    if (item == busca) {
      achou = true;
      valor = item;
      break;
    }
  }

  print('Valor:$valor encontrado');

  return achou;
}

void executar() {
  var externa = ({required int valor, required List<int> array}) {
    var interna = (bool Function(int valor, List<int> array) p) {
      var retorno = p(valor, array);
      return retorno;
    };

    return interna(busca);
  };

  var receptora = externa(valor: 10, array: geradorLista());
  print('');
  print(receptora);
  print('');

  if (receptora) {
    print('O numero buscado existe ! na lista');
  } else {
    print('O número buscado na lista não existe ');
  }
}
