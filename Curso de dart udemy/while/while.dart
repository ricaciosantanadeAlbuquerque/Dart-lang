void main() {
  // enquanto a condição for veradeira ele executa o que estiver dentro do corpo da função

  var cont = 0;

  while (cont < 10) {
    // 10 loop de 0 a 9 == 10
    print(cont);
    cont++;
  }

  // o do{}while  entra na condição  e depois faz o teste.
  var num1 = 100;
  do {
    print(num1);
    num1--;
  } while (num1 >= 0);

  var multiplo = 4;
  var minimo = 0;
  var maximo = 100;

  while (minimo <= maximo) {
    if (minimo % multiplo == 0) {
      print("$multiplo é multiplo de $minimo ");
    }
    minimo++;
  }
}
