import 'dart:math';

///Every
/// Faz um teste em todos os elementos da lista, se todos forem true então a lista retorna retorna true
///
void main(List<String> args) {
  List<int> interiros = [0, 1, 2, 3, 4, 5];
  bool resultado = interiros.every((element) {
    return element > 0;
  });

  print(resultado);

  List<num> numeros = [20, 10, 30, 55, 65, 78, 80];

  print(numeros.every((element) => element >= 10) ? 'Lista aprovada' : 'Lista recusado pois possui valores a baixo de 10');

  List<String> nome = ['Ana', 'Lucas', 'João', 'Biza', 'Ricacio'];

  bool resul = nome.every((element) {
    return element.contains('a');
  });

  print(resul); // ERRO! ã

  List<double> testValores = [];

  for (var i = 0; i < 10; i++) {
    testValores.add(Random().nextDouble());
  }

  print(testValores.every((element) {
    return element > 0;
  }) ? 'sim todos so valores são maiores que 0 ' : 'Não!! nem todos os valores são maiores que zero');

  /**
   * A função every() faz um teste em todos os elementos da lista, se todos os elementos da lista forem true então a lista será ture.
   */

}
