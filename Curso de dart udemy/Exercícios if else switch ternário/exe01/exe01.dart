/**
 * 1. Escreva	 um	 programa	 para	 ler	 2	 valores	 (considere	 que	 	 não	 serão	
   informados	valores	iguais)	e	escrever	o	maior	deles.
 */

import 'dart:io';

void main(List<String> args) {
  print("Digite o primeiro valor ");
  String? primeiroValor = stdin.readLineSync();
  print("Digite o segundo valor ");
  String? segundoValor = stdin.readLineSync();

  int primeiro = int.parse(primeiroValor!);
  int segundo = int.parse(segundoValor!);

  if (primeiro > segundo) {
    print("O primeiro valor é o maior  $primeiro");
  } else {
    print("O segundo valor é o maior $segundo");
  }
}
