/**
 *  . Faça um programa que leia 2 valores inteiro (A e B) e mostre o resultado da divisão inteira. O programa deve 
      exibir uma mensagem do tipo: “A divisão de _ por _ é igual a _ ”.

 */
import 'dart:io';

void main() {
  print("Digite um valor numérico para [A] ");
  String? entradaA = stdin.readLineSync();
  print("Digite um valor numérico para [B]");
  String? entradaB = stdin.readLineSync();

  int A = int.parse(entradaA!);
  int B = int.parse(entradaB!);

  print("A divisão e $A por $B é de ${(A / B).truncate()}");
}
