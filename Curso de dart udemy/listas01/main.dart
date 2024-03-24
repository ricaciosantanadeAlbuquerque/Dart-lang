void main(List<String> args) {
  var array = [0, 2.5, 5, 7.25, 10];
  print('\nMostrando elementos via função forEach()\n');

  array.forEach((element) {
    print(element);
  });

  /**
   * A função forEach(); recebe uma função anônima com parametro como argumento para si mesma, onde o parametro da função anonima enxerga
   * cada elemento da lista.
   */

  List<String> estadosNordeste = ['Paraíba', 'Pernambuco', 'Rio Grande do Norte', 'Ceará', 'Bahia', 'Alagoas', 'Maranhão', 'Sergipe'];

  print('');
  estadosNordeste.forEach((element) {
    print('Estado: $element');
  });
  print('');
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.5];
  List<bool> boleans = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print(frutas.runtimeType);

  print('/nboleans[3]: ${boleans[inteiros.length] ? 'Verdadeiro' : 'falso'}');
  print('\n');
  print('/nboleans[3]: ${boleans[inteiros.length] ? 'verdadeiro' : 'falso'}');
  print('');
  frutas.forEach((element) {
    print('$element');
  });
  print('');

  doubles.forEach((element) {
    print(element);
  });

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  print('========== Mostrando Frutas List ==========\n');
  frutas.forEach((element) => print(element));

  //============Removendo elementos=================

  frutas.remove('Abacaxi'); // recebe o elemento que se deseja excluir como argumento.

  print(frutas);
  print('');

  frutas.removeLast(); // remove o último elemento da lista;

  frutas.forEach((element) {
    print(element);
  });

  frutas.removeRange(0, 1); // Devemos passar o índice de início(Start) e o índice do fim do intervalo (end)
  /**
   *  O início do intervalo é inclusivo, mas o final do intervalo é exclusivo, o que significa que o início está incluído no intervalo, *  mas o final não está incluído no intervalo.
   */

  print('===3===');

  frutas.forEach((element) => print(element));

  frutas.removeWhere((element) => element == 'Banana'); // Se o elemento for igual a String Banana entãooooooo Banana será excluida da lista.
  print('\n');

  print(frutas);

  print(frutas.elementAt(0));
  print(frutas.contains('tomate')); // retorna true or false;
  // deu erro porque a linguagem Case sensitive
  print(frutas.contains('Tomate'));
  
}
