import 'dart:io';
/*4 - Faça um programa que fique recebendo números inteiros e contando quantos números foram iguais a 2. Caso 
o usuário digite o número zero, o programa deverá parar de receber valores e exibir quantos números foram 
iguais a 2;
 */
void main() {
  int num1 = 1;
  int cont = 0;
  while (num1 != 0) {
    print("Digite um valor numérico");
    String? num = stdin.readLineSync();
    num1 = int.parse(num!);
    if (num1 == 2) {
      cont += 1; // cont = cont + 1 ou  cont++
    }
  }
  print("Aquantidade de números iguais a 2 é [${cont}]");
}
