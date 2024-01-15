void main() {
  print('Operadores aritimméticos  (+ - * / ~/ % ), incremento (+= ++), decremento (-= --), assingnação (= ?? ??=)');

  var peso = 10;
  peso = peso + 5;
  print(peso);
  peso += 5;
  print(peso);
  peso++; //  mais uma unidade para peso
  print(peso);
  // peso está tendo o seu valor sobreposto !!

  var a, b, c, d, e, f; // podemos declarar várias variáveis na mesma linha desde que sejam do mesmo tipo

  a = 3; // a foi inicializada com 3;
  b = ++a; // pré-incremento ++a pós-incremento a++;
  print('a:$a, b:$b');
  print('');

  c = ++a / --b;

  print('valor de C : $c');

  d = a ~/ b; // divisao inteira ~/
  print('');

  print('Valor de D : $d');

  var valorA = 9, valorB = 2;
  print(' ex: 9 ~/ 2  = ${valorA ~/ 2}');

  e = 1;
  f = e;
  f = null;
  f ??= ++e;

  print('f:$f, e:$e');

  var x, y, z;
  z = 1;
  x = y ?? z;
  print('');
  print(x);

  var nome;
  print('');
  print('Nome: ${nome ?? 'Ricacio'}');

  print(nome); // ?? é diferente ??=

  print('Nome: ${nome ??= 'Ricacio'}');

  print(nome);

  var numero = 12;
  var par = numero % 2 == 0; // é par
  var impar = numero % 2 != 0; // é impar
  var positivo = numero >= 0;
  var negativo = numero < 0;
  print('');

  print('Numero: $numero, par $par, Impar: $impar, positivo:$positivo, negativo:$negativo');

  var multiplo = 3;
  print('número:$numero é múltiplo de $multiplo ? ${numero % multiplo == 0}');

  int dividendo = 19, divisor = 4;
  double quociente = dividendo / divisor;
  int resto = dividendo.remainder(divisor);
  int resto2 = dividendo % divisor;
  bool exata = resto == 0;

  print('resto1:$resto, resto2:$resto2');
  print('');

  print('Quociente:$quociente, Exate:$exata, Resto:$resto\n');

}
