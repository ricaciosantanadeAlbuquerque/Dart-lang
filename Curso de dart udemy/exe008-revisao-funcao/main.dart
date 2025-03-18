import 'dart:io';

void main() {
  stdout.write('Digite um número');
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = fatorial(numero);

  stdout.write('O fatorial de  $numero é $resultado');
}

int fatorial(int valor) {
  if (valor <= 1) {
    return 1;
  } else {
    return valor * fatorial(valor - 1);
  }

  /**
   * fatorial chama a sí mesma  enquanto n for diferente de 1
   */
}
