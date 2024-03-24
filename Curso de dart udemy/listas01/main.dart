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
}
