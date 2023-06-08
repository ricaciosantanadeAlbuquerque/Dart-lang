void main(List<String> argument) {
  // boas Práticas utilizar CamelCase
  //Tipo de Comentarios: // comentário de uma única linha
  // /**/ comentários em bloco
  /// Comentário de documentção

  var valorA; // o tipo "var" é dynamic até o momento de sua atribuição, então ela passa a ser do tipo  do dado  que ela gurda.
  // sua tipagem é por inferência
  valorA = 10;
  print(valorA.runtimeType);
  var valorB = 4;
  print(valorB.runtimeType);
  var valorC = 2.5;
  print(valorC.runtimeType);

  var resultado;
  resultado = valorA + valorB + valorC; // somando valores
  print(resultado);

  var salario = 1000, desconto = 250; // como são do mesmo tipo, podem ser declaradas e inicializadas na mesma linha
  var conta = salario - desconto;
  print(conta);

  /**
   * Primeiro os parâmetros ()
   * segundo * e / 
   * terceiro + -
   */

  var numero = 3 + ((2 * 4) + (10 / 5));

  print(numero);

  print(''' 
  CONCATENÇÃO DE STRINGS
  ''');
  // + para Strings junta ou concatena as String em um único texto;

  var texto1 = 'Ricacio ';
  var texto2 = 'Santana ';
  var texto3 = 'Albuuquerque ';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  String nome1 = 'ricacio';
  int idade = 29;
  double altura = 1.72;
  bool valor = true;
  dynamic dados = 10;
  print(dados.runtimeType);
  dados = "ana";
  print(dados.runtimeType);
  dados = 5.5;
  print(dados.runtimeType);
  dados = true;
  print(dados.runtimeType);

  /// O tipo dynamic, pode receber qualquer valor.
}
