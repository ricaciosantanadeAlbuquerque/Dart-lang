void main(List<String> args) {
  /**
   * >  maior 
   * <  menor
   * >= maior ou igual 
   * <= menor ou igual 
   * !=  diferente
   * == igual 
   * 
   */

  var nota = 69;
  var resultado = nota >= 70; // os operadores relacionais retornam um valor bool
  print("Aluno aprovado ${resultado}");

  bool testeLogico = (!false && true);
  print("Teste Lógico ${3 > 1 && (3 < 2) || testeLogico}"); // true
  print(5 == 5 && 6 > 5); // true
  print(5 != 5 && 6 == 5); // false
  print(5 <= 5 && 6 != 5); // true 
}
