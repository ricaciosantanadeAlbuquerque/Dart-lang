/**
 *  Faça um programa que leia um vetor de 5 posições para números reais e, depois, um código inteiro. Se o 
código for zero, finalize o programa; se for 1, mostre o vetor na ordem direta; se for 2, mostre o vetor na ordem 
inversa. Caso, o código for diferente de 1 e 2 escreva uma mensagem informando que o código é inválido.
 */
import 'dart:io';

void main() {
  List<double> reais = [];
  
  print("Digite um valor  entre 1 e 2 ");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty == true) {
      try {
        int opcao = int.parse(entrada);

        if (opcao >= 1 && opcao <= 2) {
       
          for (var j = 0; j < 5; j++) {
            print("Digite um valor Real");
            String? entradaReal = stdin.readLineSync();

            if (entradaReal != null) {
              if (entradaReal.isNotEmpty == true) {
                try {
                  double real = double.parse(entradaReal);
                  reais.add(real);
                } catch (e) {
                  throw Exception('ERRO! $entradaReal não é um número');
                }
              } else {
                print("Vazio! o programa será encerrado !");
                exit(0);
              }
            } else {
              print("Nulo! o programa será encerrado !");
              exit(0);
            }
          }

          switch (opcao) {
            case 1:
              for (var j = 0; j < reais.length; j++) {
                print("\n${j+1}:  ${reais[j]}");
              }
              break;
            case 2:
              for (int i = reais.length - 1; i >= 0; i--) {
                print("\n${i + 1}:  ${reais[i]}");
              }
              break;
            case 0:
              print("O programa será encerrado.");
              exit(0);
            default:
              print("Código é inválido.");
          }
        } else {
          print("Código é inválido !");
        }
      } catch (e) {
        throw Exception('ERRO! $entrada não é um valor numérico');
      }
    } else {
      print("ERRO! valor vazio !!");
    }
  } else {
    print("ERRO! valor nulo.");
  }
}
