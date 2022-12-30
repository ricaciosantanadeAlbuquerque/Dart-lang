import 'Dart:io';

/**
 * 9 – Faça um programa que receba a idade e a altura de várias pessoas, calcule e mostre a média das alturas 
daquelas com mais de 50 anos. Para encerrar a entrada de dados, digite uma idade que seja menor ou igual a 
zero. Use a estrutura de repetição do ... while para resolver este problema.
 */
void main(List<String> args) {
  int? idade;
  double media = 0;
  double soma = 0;
  int cont = 0;

  do {
    print("Digite sua idade! ");
    String? idadeX = stdin.readLineSync();
    idade = int.parse(idadeX!);   // cuidado para não colocar o tipo int novamente na variável assim o compilador vai entender que é outra variável idade. tipo { int idade = int.parse(idadeX!);}

    if (idade == 0) break; // condição de saida

    print("Por favor, digite sua altura.");
    String? alturaX = stdin.readLineSync();
    double altura = double.parse(alturaX!);

    if (idade > 50) {
      soma += altura;
      cont++;
    }

    print(idade);
  } while (idade != 0); // true

  media = soma / cont;

  print(" A média das idades das pessoas com 50 anos é de ${media}");
}
