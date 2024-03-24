import 'dart:math';

/// Expand Cria uma nova lista expandindo ou concatenando os elementos da lista referênciada.

void main(List<String> args) {
  var matriz = [
    [1, 2, 3],
    [4, 5, 6],
  ];

  // vamos concatenar os elementos da matriz para gerar  uma nova lista.

  List<dynamic> listaValor = matriz.expand((element) {
    return element;
  }).toList();

  print(listaValor);

  List<List<int>> matriz2 = [
    [1, 2, 3, 4, 5],
    [6, 7, 8, 9, 10],
    [11, 12, 13, 14, 15]
  ];

  List<int> vetor = matriz2.expand((element) {
    return element;
  }).toList();

  print(vetor);

  vetor.forEach((element) => print(element));

  print('');
  print('Lista duplicada com expand()');

  List<num> listDuplicada = vetor.expand((element) => [element, element]).toList();
  print(listDuplicada);

  print('=====================================String list=======================================\n');

  List<String> nomes = ['Ana', 'lucas', 'ricacio', 'João', 'Matheus'];
  List<dynamic> novaListaNomes = nomes.expand((element) => [element, element]).toList();
  print('');
  novaListaNomes.sort();
  print(novaListaNomes);
  novaListaNomes.shuffle();
  print(novaListaNomes);
  print('');
  print('');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.5];

  // concatenando listas com +
  var j = inteiros + [15, 25, 35];
  print(j); // só é possível concatenar listas do mesmo tipo.

  List<dynamic> valores = []
    ..addAll(inteiros)
    ..addAll(doubles);
  print(valores);

  /// operador spread == espalhar

  List<dynamic> listaDinamica = [0, ...inteiros, 15];
  print(listaDinamica);

  listaDinamica = [...inteiros, if (doubles is List<double>) ...doubles];
  print(listaDinamica);

  listaDinamica = [...doubles, for (var item in inteiros) item];
  print(listaDinamica);

  List<List<int>> matrizInteira = [];

  for (int i = 0; i < 5; i++) {
    List<int> array = [];
    for (int j = 0; j < 10; j++) {
      array.add(Random().nextInt(10));
    }
    matrizInteira.add(array);
  }
  /**
   *  A cada loop de i que varia de 0 a 4 == 5; nós criamos uma lista inteira     List<int> array = [];
   * preenchemos  a lista array com o for j  com  10 elementos, eeee a cada fim  do for j adicionamos o array 
   * criado e preenchido na matrizInteira.
   * 
   * Lembrando que a matriz ou seja (lista de litas) foi declarada fora, já as listas internas estão sendo criadas a cada loop
   * de i e carregadas a cada loop de j por fim são adicionadas eeee o processo se repete por 5 vezes. Para cada loop uma nova lista.
   */

  print(matrizInteira);

  // expand()

  List<int> megaLista = matrizInteira.expand((element) => element).toList();
  /**
   * Veja que cada elemento da matrizInteira é um array, porém a função expand((element) => element).toList()
   * concatena cada lista da Matriz gerando uma nova lista de inteiros
   */
  print('');
  print('');
  print(megaLista);
}
