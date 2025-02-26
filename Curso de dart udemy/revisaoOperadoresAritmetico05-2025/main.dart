void main() {
  print(
      ' Operadores Aritméticos ( * / ~/ % + - )  incremento (+= ++) decremento (-= --) assingnacao( = ?? ) \n');

  var peso = 10;
  print(peso);
  peso = peso + 5;
  print(peso);
  peso += 5;
  print(peso);
  peso++; // pós - incremento
  print(peso);

  var a, b, c, d, e, f;
  a = 3;
  b = ++a; // pré-incremento;
  print('a $a, b $b ');
  print('');
  c = ++a / --b; // 5 e 3
  print('a $a, b $b ');
  print(c);

  d = a ~/ b;

  print('c $c, d $d');

  var valorA = 9, valorB = 2;

  print('Ex: 9 ~/ 2 = ${valorA ~/ valorB}');

  e = 1;
  f = e;
  f = null;
  f ??= ++e; // ternário nulo atribuição

  print('e $e f $f');

  var x, y, z;
  z = 1;
  x = y ?? z; // ternário nulo.

  print(x);

  var num1 = 12;

  print((num1 % 2 == 0) ? 'Par' : 'Impar');
}
