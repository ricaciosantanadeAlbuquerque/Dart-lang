/**
 *  Escreva um programa para ler uma temperatura dada na escala Fahrenheit e exibir o equivalente em
    Celsius. Fórmula: C= 5.0/9.0 * (F-32)
    Observação: Para testar se a sua resposta está correta saiba que 100oC = 212F

 */
import 'dart:io';

void main(List<String> args) {
  print("Digite o valor da temperatura em Fahrenheit ");
  String? entradaF = stdin.readLineSync();
  int temperaturaF = int.parse(entradaF!);
  double c = 5.0 / 9.0 * (temperaturaF - 32);
  print("O valor em C é de ${c.truncate()}");
}
