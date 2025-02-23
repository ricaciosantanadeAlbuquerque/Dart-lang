void main() {
  print('(01.0) variáveis');
  // comentário de linha única
  /// comentário de documentação
  /**
    * comentário em bloco
        var 
        num
        int 
        double
        bool
        String
        dynamic
    */

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado = valorA + valorB + valorC;
  print('O resultado: $resultado ');

/**
 * O tipo var, é dinâmica enquanto não for inicializada. Após a sua inicialização,
 * ela passa a ter o mesmo tipo do dado que foi atribuido a ela. o que chamamos de tipagem por inferência.
 * Uma vez que está variável foi tipada por atribuição de dados, ela não mudará o seu tipo. permanecendo com 
 * a mesma tipagem até o fim do programa. 
 */

  var salario = 1758, desconto = 250;

  var conta = salario - desconto;

  print('O seu saldo atual é de ! $conta\n');

  var numero = 3 + ((2 * 4) + (10 / 2));

  print('O resultado da operação ${numero}');

  /// concatenando dados

  print("concatenar " "STrings " "é simples assim");

  print('ricacio ' 'Santana ' 'de Albuquerque ');

  print('''Carmen ''' '''Lins ''' ''' de Albuquerque''');

  var texto1 = '\nRicacio';
  var texto2 = " Santana \n";
  var texto3 = ' start \n';
  var texto4 = '''
  ========== Game ==========
  -----------Jogar---------
  jogador 1 A
  jogador 2 B

  ''';

  print(texto1 + texto2 + texto3 + texto4);

  /**
   * 
   * O dart  aceita String com aspas simples dupla e tripla, porém as aspas
   * triplaS permitem uma abordagem mais solta dos caracteres. Como se fosse a junção
   * de várias String uma a baixo da outra.
   * 
   */

  var verdadeiro = true;
  var falso = false;

  // para variáveis usamos $,
  //para operções mais complexas ${}

  print('Verdadeiro: ${verdadeiro}');
  print('Falso $falso');

  print(''.runtimeType); // retorna o tipo de dado

  /// Criando constantes

  final String nome = 'Ricacio ';
  const String sobrenome = 'Santana';

  final nomeCompleto = nome + sobrenome; // concatenando valores Strings

  print(nomeCompleto);

  /// Variáveis fortemente tipadas

  String idNome = 'Ricacio';
  int idade = 36;
  double altura = 1.72;
  bool adulto = true;

  print('''
  Nome: $idNome,
  Idade: $idade,
  altura: $altura,
  adulto: $adulto,
  ''');

  var num1;
  num1 = 12;
  num1 = 33.33;
  num1 = '72';

  print('valor de $num1');

  var num2 = 10;
  //num2 = 10.50;
  //num2 = '72';

 /**
  * sobre o tipo [var] podemos afirma que, 
    ser uma variável for declarada e inicialida na mesma linha recebendo um tipo de dado, Ela será tipada por inferência e
    não poderá alterar seu tipo durante a execução do programa.
    Mas se uma variável do tipo [var] for declarada em uma linha, e inicializada em outra. 
    Ela será dinâmica, podendo ter seu tipo altera no decorrer da execução do app.

  */
}
