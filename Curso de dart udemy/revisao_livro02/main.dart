void main() {
  print("Operadores Relacionais (== != > >= < <= )");
  var nota = 69;
  print(nota.runtimeType);
  print('');
  var resultado = nota >= 70;
  print('Resultado: $resultado');

/**
 * var nota;
  print(nota.runtimeType);
  print('');
  nota = 69;
  print(nota.runtimeType);
  print('');

  var resultado = nota >= 70;

  Quando declaramos uma variável do tipo var , porém não a inicalizamos no ato, ela permanecerá dynamic.
  Exemplo: var nota
 */

  bool testeLogico = (!false && true);
  print('Teste Logico: ${3 > 1 && (3 < 2) || testeLogico}');

  print('');

  print('5 == 5 && 6 > 5 : ${5 == 5 && 6 > 5}');
  print('5 != 5 && 6 == 5 : ${5 != 5 && 6 == 5}');
  print('5 <= 5 && 6 != 5 : ${5 <= 5 && 6 != 5}');
}
