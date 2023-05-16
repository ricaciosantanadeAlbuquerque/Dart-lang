/**
 *  - Faça um programa que apresente o menu de opções a seguir:
Menu de opções:
1. Média aritmética
2. Média ponderada
3. Sair
Digite a opção desejada
Na opção 1: receber duas notas, calcular e mostrar a média aritmética.
Na opção 2: receber três notas e seus respectivos pesos, calcular e mostrar a média ponderada.
Na opção 3: sair do programa.
Verifique a possibilidade de opção inválida. Neste caso, o programa deverá mostrar uma mensagem
 */
import 'dart:io';

import '../revisaoFuncao12/main.dart';

void main() {
  print("===========Menu==========");
  print(" Digite [1] para Média aritimética");
  print(" Digite [2] para Média ponderada");
  print(" Digite [3] para sair !");
  String? entradaOpcao = stdin.readLineSync();

  if (entradaOpcao != null) {
    if (entradaOpcao.isNotEmpty == true) {
      try {
        // conversão

        int opcao = int.parse(entradaOpcao);

        switch (opcao) {
          case 1:
            print("Digite sua primeira nota.");
            String? entradaNota1 = stdin.readLineSync();
            print("Digite sua segunda nota");
            String? entradaNota2 = stdin.readLineSync();

            // tratamento

            if (entradaNota1 != null && entradaNota2 != null) {
              if (entradaNota1.isNotEmpty == true && entradaNota2.isNotEmpty == true) {
                try {
                  double nota1 = double.parse(entradaNota1);
                  double nota2 = double.parse(entradaNota2);

                  // calculo
                  double media = (nota1 + nota2) / 2;
                  print("Média ${media.toStringAsFixed(2)}");
                } catch (e) {
                  throw Exception('ERRO! valor $media não é um número ');
                }
              } else {
                print("ERRO! Digite um valor válido ");
              }
            } else {
              print("ERRO! valor null");
            }
            break;
          case 2:
            print("Digite a primeira nota!");
            String? n1Entrada = stdin.readLineSync();
            print("Digite seu peso !");
            String? n1Peso = stdin.readLineSync();
            print("Digite a segunda nota!");
            String? n2Entrada = stdin.readLineSync();
            print("Digite seu peso ! ");
            String? n2Peso = stdin.readLineSync();
            print("Digite a terceira nota!");
            String? n3Entrada = stdin.readLineSync();
            print("Digite seu peso ! ");
            String? n3Peso = stdin.readLineSync();
            //tratamento
            if (n1Entrada != null && n2Entrada != null && n3Entrada != null && n1Peso != null && n2Peso != null && n3Peso != null) {
              if (n1Entrada.isNotEmpty == true && n2Entrada.isNotEmpty == true && n3Entrada.isNotEmpty == true && n1Peso.isNotEmpty == true && n2Peso.isNotEmpty == true && n3Peso.isNotEmpty == true) {
                try {
                  // conversão
                  double n1 = double.parse(n1Entrada);
                  double n2 = double.parse(n2Entrada);
                  double n3 = double.parse(n3Entrada);
                  double p1 = double.parse(n1Peso);
                  double p2 = double.parse(n2Peso);
                  double p3 = double.parse(n3Peso);
                  // calculo

                  double mediaPonderada = (p1 * n1 + p2 * n2 + p3 * n3) / (p1 + p2 + p3);
                  print(" A média ponderada é ${mediaPonderada} ");
                } catch (e) {
                  throw Exception('ERRO! os valores $n1Entrada ou $n2Entrada ou $n3Entrada não são valores numéricos');
                }
                ;
              } else {
                print("ERRO valor vazio !");
              }
            } else {
              print("ERRO digite valores não nulos ");
            }
            break;
          case 3:
            print("O programa será encerrado !");
            exit(0);
          default:
            print("Valor fora da faixa, O programa será encerrado.");
            exit(0);
        }
      } catch (e) {
        throw Exception('Erro! o valor $entradaOpcao não é um  valor numérico.');
      }
    } else {
      print("ERRO! valor Vazio");
    }
  } else {
    print("ERRO! Valor nulo");
  }
}
