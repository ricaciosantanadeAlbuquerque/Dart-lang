import 'dart:io';

void main(List<String> args) {
  print('Digite um valor numerico');
  int numero = int.parse(stdin.readLineSync()!);

  stdout.write(
      'O fatorial de $numero é ${numero >= 30 ? fatorialGande(numero) : fatorial(numero)}');
}

/**
 * 
 */

int fatorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * fatorial(n - 1);
  }
}

BigInt fatorialGande(int n) {
  BigInt result = BigInt.one;

  for (var i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }

  return result;
}
