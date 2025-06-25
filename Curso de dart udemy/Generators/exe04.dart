/**
 *  Letras do alfabeto de A até Z
Crie uma função sync* que gere uma Iterable<String> com as letras de A a Z
 */

void main(List<String> args) {
  final Iterable<String> result = alfabeto();
  print(result);
}

Iterable<String> alfabeto() sync* {
  for (int i = 65; i <= 90; i++) {
    yield String.fromCharCode(i);
  }
}
