void main() {
// chamada a função
  operadoresMatematicos();
  print('======Relacionais======');
  operadoresRelacionais();
  print('======Logico======');
  operadoresLogicos();
  print('======Incremento======');
  operadoresIncremento();
}

/// Frequentemente utilizados para realizar operações matemáticas
void operadoresMatematicos() {
  /**
   *  + adição ou concatenação
   *  - subtração
   *  * multiplicação
   *  / divisão
   *  ~/ divisão inteira
   *  % resto da divisão
   */

  print(40 + 2); // 42
  print('40' + '2'); // 402 concatenação de Strings
  print(50 - 8); // 42
  print(-(-42)); // -(-) inversão de sinal,  se é negativo torna-se positivo R= 42
  print(6 * 7); // 42
  print(11 / 2); // 5.5 double
  print(11 ~/ 2); // 5 inteira
  print(11 % 2); // 1
}

/// Realizam comparações entre valores de diferentes objetos.
void operadoresRelacionais() {
  /**
   *  ==  Equalidade ou igualdade 42 == 42
   *  != Diferença   42 != 42
   *  >  maior  42 > 42
   *  >= maior ou igual 42 >= 42
   *  <  menor  42 < 42
   *  <= menor ou igual 42 <= 42
   *  
   * Toda operação envolvendo os operadores relacionais retorna um tipo booleano
   */

  print(42 == 42); // true
  print(42 != 42); // false
  print(42 > 42); // false
  print(42 >= 42); // true
  print(42 < 42); // false
  print(42 >= 42); // true

  //PS! Operadores Relacionais retornam um tipo booleano
}

/// Operadores para espressão booleanas
void operadoresLogicos() {
  /**
  * && AND
  * || OR
  * !  inversão de valor lógico
  */

  print(42 == 42 && 42 <= 10); // false
  print(42 == 42 && 42 <= 10 || 42 != 42); // false
  print(42 == 42 && 42 <= 10 || 42 != 10); // true
}

/// adicionam ou diminuem um valor a uma variável numerica
void operadoresIncremento() {
  /**
   * ++var pré-incremento
   * var++ pós-incremento
   * --var pré-decremento
   * var-- pós-decremento
   */

  /// Incrementa ou decrementa a variável antes de utilizar a mesma.

  var a = 0;
  var b = 1 + ++a; // adicionar um antes de utilizar a variável
  print(a); // 1
  print(b); // 2

  var c = 0;
  var d = 1 + --c; // diminue um antes de utilizar a variável
  print(c); // -1
  print(d); // 0

  // Se o operador vem depois da variável tipo var++ ou var--, então utilizasse a variável primeiro e depois incrementa ou decrementa

  void posIncremento(){
    var a = 0;
    var b = 1 + a++;
    print(a); // 1
    print(b); // 1

    var c = 0;
    var d  = 1 + c--;
    print(c); // -1
    print(d); // 1
  }

  posIncremento(); // a chamada a uma função deve ser feita depois de sua declração.


}
