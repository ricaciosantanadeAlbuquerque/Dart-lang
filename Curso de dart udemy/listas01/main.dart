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
}
