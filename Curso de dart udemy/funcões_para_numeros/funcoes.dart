void main() {
  var pi = 3.14; // double
  double num1 = 3.30;
  var inteiroj = 100;
// floor() a função floor() faz o arredondamento  para baixo

  print(num1.floor());
  print("\n");
  print(pi.floor());
  print("=======================================================================================================================");
  //=============================================round()===========================================================================
  // a função round() faz o arredondamento para o valor mais próximo  dependendo do valor, se for ate 1.30 ou 2.30 ou 3.30 ou seja, até a metado do valor, o arredondamento é para baixo, se não, se o valor for acima da metade tipo 2.56 o arredondamento será para cima.

  print(num1.round());
  num1 = 3.56;
  print(num1.round());

  //===============================================ceil()=========================================================================
  /**
   * Faz o arredondamento do valor numérico Sempre para cima 
   */
  print("=======================================================================================================================");
  print(pi.ceil());

  //===============================================clamp()=========================================================================
  /**
   * A função clamp() recebe um intervalor de valores sendo um o mais baixo exemplo 2.50 e outro o mais alto 3.90 
   * a função retorna o valor mais aproximado de um numero inteiro. 
   */
  print("========================================================================================================================");
  print(num1.clamp(3, 3.56)); // retornou o maior valor do intervalor

  //==============================================compareTo()======================================================================
  /**
   * compara valores inteiros sendo que se o valor da variável  for menor  do que o valor comparado retorna -1 
   * se for igual retorna  0 
   * e se for maior retorn 1
   */
  print("=======================================================================================================================");
  print(num1.compareTo(3)); // num1 > 3 return 1
  print(num1.compareTo(5)); // num1 < 5 return -1
  print(num1.compareTo(3.56)); // num1 == 3.56  return 0
  //===============================================remainder()===================================================================
  /**
   * A função remainder() retorna o resto da divisão  da variável ou valor por um número. 
   */
  print("=======================================================================================================================");

  print(pi.remainder(3)); // o resto da divisão é  0.14000000000000012
  var inteiro = 4;
  print("\n");

  print(inteiro.remainder(2)); // return resto da divisão
  // outra maneira de obter o resto da divisão
  var resto = inteiro % 2;
  print(resto);
  // ===========================================toInt()============================================================================
  /**
   * convert um valor para inteiro 
   */
  print("=========================================================================================================================");
  print(pi.toInt()); // retorna um valor inteiro  no caso 3
  // ==========================================toString()===========================================================================
  /**
   * converte um valor numérico para String
   */
  print("========================================================================================================================");
  print(pi.toString().runtimeType); // runtimeType == tipo da variável

  // ===========================================toStringAsFixed()=================================================================
  /**
   * A função toStringAsFixed() abrevia o número de casas decimais que o usuário deseja mostrar 
   */

  // o valor de pi é 3.14 com a função vai ficar 3.1
  print(pi.toStringAsFixed(1)); // é necessário passar o número de casas decimais

  print(num1.toStringAsFixed(1)); // 3.5

  var num3 = 20;

  print(num3.remainder(3)); // a função irá dividir por 3 eee mostrar o resto da divisão

  //======================================truncate()=================================================================
  /**
   * A função truncate() elimina as casas decimais
   */
  var x = 7.9999999;
  print(x);
  print("\n");
  print(x.truncate());

  //+++++++++++++++++++++++++++++++++++++++isNegative==================================================================
  /**
   * Este get permite dizer se a varial é negativa ou não
   */
  print("===================================================================================================");
  print(x.isNegative); // por ser um atribulto não tem parâmetros
  // return false não e negativa possui valor.

  //++++++++++++++++++++++++++++++++++++++isInfinite================================================================
  /**
   *  este get permite dizer se o valor é infinito ou não false ou true
   */
  print("=========================================================================================================================");
  print(x.isInfinite); // por ser um atribulto não tem parâmetros

  //================================================GCD()===========================================================================
  /**
   * Essa função é muito importante pois ela retorna o máximo de divisores entre dois numweros gcd()
   * 
   */
  print("========================================================================================================================");
  print(12.gcd(16)); // quero o máximo de divisores entre 12 e 16 gcd()
  // função que busca o máximo de divisores entre dois números

  print(30.gcd(20)); // encontra o máximo de divisores enter os intervalos 

  //=============================================toDouble()======================================================================
  /**
   * converte para double
   */
  print("========================================================================================================================");
  print(inteiroj.toDouble()); //converte para double
}
