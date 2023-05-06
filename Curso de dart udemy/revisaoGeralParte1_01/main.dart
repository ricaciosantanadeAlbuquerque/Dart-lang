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
import 'dart:io';

void main() {
  print("==============IMC===============\n");
  print("Digite sua altura ! ");
  String? entradaAltura = stdin.readLineSync(); // pode ser nula
  print("Digite o seu peso ! ");
  String? entradaPeso = stdin.readLineSync();

  // tratamento e conversão

  if (entradaAltura != null && entradaPeso != null) {
    // V e V

    if (entradaAltura.isNotEmpty == true && entradaPeso.isNotEmpty == true) {
      try {
        double altura = double.parse(entradaAltura.replaceAll(',','.')); // replaceAll() troca tudo que é virgula no caractere por ponto.
        double peso = double.parse(entradaPeso.replaceAll(',','.'));

        // calculo
        double imc = peso / (altura * altura);

        if (imc < 18.5) {
          print("Você é magro! Seu IMC é de ${imc.truncate()}");
        } else if (imc >= 18.5 && imc <= 24.9) {
          print("Você é Normal! Seu IMC é de ${imc.truncate()}");
        } else if (imc >= 25.0 && imc <= 29.9) {
          print("Você está com Sobrepeso! Seu IMC é de ${imc.truncate()}"); // truncate() elimina tudo após a virgula
        } else if (imc >= 30.0 && imc < 34.9) {
          print("Você está Obeso! Seu IMC é de ${imc.truncate()}");
        } else if (imc >= 35.0 && imc <= 39.9) {
          print(" Obesidade mórbida ! Seu IMC é de ${imc.truncate()}");
        }
      } catch (e) {
        throw Exception('ERRO! o $entradaAltura ou o $entradaPeso não é um numero!');
      }
    } else {
      print("Digite valores válidos");
    }
  } else {
    print("Digite valores válidos ");
  }
}
