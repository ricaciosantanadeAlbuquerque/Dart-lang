void main() {
  var numero = 5;
  while (numero > 0) {
    print('while $numero');
    numero--;
  }

  var contagem = 1;
  do {
    print('contagem: $contagem');
    contagem++;
  } while (contagem <= 3);

  int multiplo = 4;
  int min = 10;
  int max = 20;
  dynamic resultado = min;

  while (resultado <= max) {
    if (resultado % multiplo == 0) {
      print('Primeiro multiplo de $multiplo entre $min e $max é: $resultado');
      break;
    }

    resultado++;
  }
}
