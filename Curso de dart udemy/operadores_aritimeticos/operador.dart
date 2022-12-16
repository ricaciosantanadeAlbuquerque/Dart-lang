void main(List<String> args) {
  print("Operadores aritimeticos (+ - * / ~/ %), incremento (+= ++) assignacao (= ??) ");
  /**
   * + soma 
   * - subtração
   * * multiplicação
   * / divisão com fração 
   * ~/ divisão inteira
   * % resto da divisão
   *  += soma e atribui o valor a esquerda
   *  ++ soma mais uma unidade ao valor 
   *  = atribuição
   *  ??  atribui um valor se a primeira opção for nula  exemplo  x = y ?? z caso y seja nulo x = z
   */
  var peso = 10;
  peso = peso + 5;
  peso += 5;
  peso++;
  print(peso); // 21

  var a, b, c, d, e, f; // 5 variáveis declaradas na mesma linha porque são do mesmo tipo

  a = 3;
  b = ++a; // a está sendo pré incrementada em uma unidade, incrementa primeiro e atribui depois
  print("a: $a b: $b");

  c = ++a / --b; // haverá um pré-incremento primeiro e depois um pré-decremento então só depois sera dividido o valor e atribuido a c == valor 1.66666666666
  print("a: $a b: $b = c: $c");

  d = a ~/ b; // ~/ divisão inteira valor 1

  print("c: $c -- d: $d");

  var valorA = 9, valorB = 2;

  print("9 ~/ 2 ${valorA ~/ valorB}"); // interpolação ${} deve ser utilizado para mostrar o valor  de uma função ou operação

  e = 1;
  f = e;
  f = null;
  f ??= ++e; // f recebe o valor se ele for nulo
  print("e: $e f: $f");

  var x, y, z;
  z = 1;
  x = y ?? z;
  print(x);
  print(x.runtimeType);
  print(y.runtimeType);
// um operador  relacional sempre retorna uma resposta booleana
  var numero = 12;
  var par = numero % 2 == 0; //  true
  var impar = numero % 2 != 0; // false
  var positivo = numero >= 0; // true
  var negativo = numero < 0; // false

  print("numero: $numero, par: $par, impar: $impar, positivo: $positivo, negativo:$negativo");

  var multiplo = 3;
  print("numero: $numero é multiplo de $multiplo ${numero % multiplo == 0}"); // para ser multiplo de um número  basta que o resto da divisão seja 0 a resposta sera booleana por causa do ==
}
