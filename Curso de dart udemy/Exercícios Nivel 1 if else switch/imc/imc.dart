/**
 *  - O índice de massa corpórea (IMC) de um indivíduo é obtido dividindo-se o seu peso (em Kg) pelo quadrado da 
altura (em metros). Assim, por exemplo, uma pessoa de 1,67m e pesando 55kg tem IMC igual a 19,73. Escreva um 
programa que solicite ao usuário o seu peso em kg e sua altura em metros e, a partir deles, calcule o índice de 
massa corpórea e apresente o resultado de acordo com a situação abaixo.
IMC Situação
< 18,5 Magro
18,5 – 24,9 Normal
25,0 – 29,9 Sobrepeso
30,0 – 34,9 Obeso
35,0 – 39,9 Obesidade mórbida
 */
import 'Dart:io';

void main(List<String> args) {
  print("Por favor digite seu peso !");
  String? pesoString = stdin.readLineSync();
  print("Por favor agora Digite sua Altura ");
  String? alturaString = stdin.readLineSync();

  // Conversão ==================================

  double peso = double.parse(pesoString!); // A interrogação após a variável diz para o compilador que a variável não é nula!
  double altura = double.parse(alturaString!); // sem a interrogação o código não ira compilar

  // calculo =====================================

  double imcPuro = peso / (altura * altura); // parenteses vem primeiro na ordem de precedência entre os operadores
  double imcFormatado = double.parse(imcPuro.toStringAsFixed(2)); // formata a quantidade de casas decimais // as double é uma converção de tapCasting // anotação de converção note que não tem as barras de comentários

  if (imcFormatado < 18.5) {
    print("Você é Magro, seu IMC é de ${imcFormatado}");
  } else if (imcFormatado >= 18.5 && imcFormatado <= 24.9) {
    print("Você é Normal seu IMC é de ${imcFormatado}");
  } else if (imcFormatado >= 25.0 && imcFormatado <= 29.9) {
    print("Você está com  Sobrepeso, seu IMC é de ${imcFormatado}");
  } else if (imcFormatado >= 30.0 && imcFormatado <= 34.9) {
    print("Você está Obeso, seu IMC é de ${imcFormatado}");
  } else if (imcFormatado >= 35.0 && imcFormatado <= 39.9) {
    print("Obesidade Mórbida, seu IMC é de ${imcFormatado}");
  } else {
    print("Valor fora da faixa !");
  }
}
