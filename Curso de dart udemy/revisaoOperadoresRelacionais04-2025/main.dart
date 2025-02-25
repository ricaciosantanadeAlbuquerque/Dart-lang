void main() {
  /**
   * 
   * Operadores Relacionais
   * 
   * > 
   * <
   * >=
   * <=
   * ==
   * !=
   * 
   */
  var nota = 69;
  var resultado = nota >= 70;
  print('Resultado: $resultado');

  bool testeLogico = (!false && true);
  //print(testeLogico);

  print('Teste Lógico ${3 > 1 && ((3 < 2) || testeLogico)} ');

  print('5 == 5 && 6 > 5 ${5 == 5 && 6 > 5}');
  print('5 != 5 &&  6 == 5 ${5 != 5 && 6 == 5}');
  print(' 5 <= 5 && 6 != 5 ${5 <= 5 && 6 != 5}');
}
