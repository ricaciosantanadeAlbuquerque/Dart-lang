void main() {
// chamada a função
  operadoresMatematicos();
  print('======Relacionais======');
  operadoresRelacionais();
  print('======Logico======');
  operadoresLogicos();
  print('======Incremento======');
  operadoresIncremento();
  print('======validacaoTipo======');
  operadoresValidacaoTipo();
  print('======Operadores Geraies======');
  operadoresGerais();
  print('====== Operadores de nulidade ======');
  operadoresDeNulidade();
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
/// Utilizados para validação e converção de tipo em tempo de execução
void operadoresValidacaoTipo(){
  /**
   * as  conversão de tipo typeCast
   *  is  validação de tipo, retorna true se for do tipo.
   *  is! validação de tipo, retorna true se não for do tipo. 
   */

   num a = 42;

 print( (a as int).bitLength);  // o get bitLength retorna a quantidade de bit que a variável possui. está função só existe no tipo int.


  num b = 42;
//print( (b as int).bitLength); não é possível fazer conversão de typeCast com tipo não relacionados

 // é possível saber o tipo da varivável  antes da conversão por typeCast, utilizando o operador de validação (is)

 if(b is int){ // true
    print( (b as int).bitLength);
 }

 if(b is! int){ // false
   print('Não é um tipo inteiro');
 }

 // como  o tipo num está relacionado a int então ele será validado como int mesmo sendo num, já que num é pai de double e int

 /**
  * as conversão typeCast 
    is validação  E
    is! validação NãoE
  */
}

void operadoresGerais(){
  /**
 * . Operador de acesso a menbros
 * () chamada a função
 * .. Operador de acesso cascade ou em cascata
 * ... spread ou espalhar
 *  A == B ? A : B ;
 * [] acesso a itens de lista 
 * 
 */

/// operador de acesso .
final frase = StringBuffer();
frase.write('operação');
frase.write('em');
frase.write('cascade');

print(frase);

final frase2 = StringBuffer()..write('Operação')..write('em')..write('cascade');
print(frase2);

/**
 * write() deve receber como argumento um  elemento,  e escrever o mesmo no console.
 * Para usar a função write(), crie um objeto     StringBuffer().
 * O operador em cascade, permite fazer várias chamadas a métodos e atributos, 
 * com apenas uma referência ao objeto
 */

final vogais = ['a','e','i','o','u'];
final consoantes = ['b','c','d'];

final alfabeto = [...vogais,...consoantes]; // O operador Spread espalha tudo de uma lista dentro de outra lista e em ordem.

print(alfabeto);

int numero = 42;
print(numero % 2 == 0 ? 'Par' : 'Impar'); // O ternário executa uma operação booleana  condicional com três valores
// se true executa o que está depois da enterrogação se não executa o que está nos dois pontos.

/// operador de acesso a itens de lista ou map. Lista via index Map<> via chave.
/// 
Map<String,String> map = {
  'vogais':'a,e,i,o,u',
  'consoantes':'b,c,d',
};

List<String> vogais2 = ['a','e','i','o','u']; // 0  a 4

print(vogais2[0]); // a
print(vogais[4]); // u;
print(map['vogais']);// 'a,e,i,o,u'

}

void operadoresDeNulidade(){
  /**
   *  ?? ternário nulo
   *  ??=  atribuição caso nulo
   *  ?. acesso a atributo caso não nulo
   *  ?.. operações em cascade caso não nulo
   *  ?[] acesso a index caso não nulo
   */
 /// ternário nulo
  int?  a  =  null ;
 var resposta = a ?? 42; // se a for nulo então resposta recebe 42

 print(resposta);
/// atribuição caso nulo 
 int? resposta2 = null;
 resposta2 ??= 42;

 print(resposta2);

 int? num1 = null;
 var result = num1 ?? 100; // ternário null

 print(result);
 int? num2 = null; // Primeiro num2 tem que ser inicializada como null, só então podemos usar ??=
 num2 ??= 250; // caso num2 seja null atribui.

 /// acesso nulo ?.
 int? resposta3 = null;
 print(resposta3?.bitLength); // null
 /**
  * O intuito do operador de acesso nulo, é evitar que seja lançada uma exceção caso a variável seja nula. 
  */

  /// cascade nulo ?..
  
  StringBuffer? frasesDia = null;
  frasesDia?..write('Bom')..write(' dia ')..write('João pessoa');
  print(frasesDia); // ?.. caso o objeto seja null, então não será lançada uma exceção. Mas retornará null.
  // Caso ele esteja com valor Object então mostrará a frase;

  // Acesso a itens nulo ?[]: Valida o acesso a valores de uma lista ou map quando  a variável pode conter um valor nulo.
  List<String>? vogais3 ;
 // print(vogais3?[1]);
  print(vogais3![1]);// estou informando ao compilador  que pode executar pois está variável não está null

}

