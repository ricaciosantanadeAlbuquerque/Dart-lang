/**
 * conversao por opção
 */
import 'dart:io';

void main() {
  print("Digite um valor para A");
  String? num1 = stdin.readLineSync();
  print("Digte um valor para B");
  String? num2 = stdin.readLineSync();
  // conversao ===============================================================
  int A = int.parse(num1!);
  int B = int.parse(num2!);
  dynamic resultado = (A > B) ? "Sim o valor de $A é maior do que $B" : "Sim o valor de $B é maior do que $A";

  print(resultado);
}
