/**
 *  - Crie um programa que lê 6 valores inteiros pares e, em seguida, mostre na tela os valores lidos na ordem 
inversa. Atenção: caso o usuário digite um valor ímpar, deve desconsiderá-lo e fazer novamente a leitura até 
atingir a leitura dos valores inteiros pares.
 */
import 'dart:io';

void main() {
  List<int> par = [];

  for (var j = 0; j < 7;) {
    print("Digite um valor inteiro numerico");
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      if (entrada.isNotEmpty == true) {
        try {
          int valor = int.parse(entrada);

          if (valor % 2 == 0) {
            par.add(valor);
          } else {
            j++;
          }
        } catch (e) {
          throw Exception('ERRO! valor não numerio $entrada');
        }
      } else {
        print("ERRO! digite um valor válido.");
      }
    } else {
      print("ERRO valor nulos !");
    }
  }

  print("=======================Mostrando Valores=========================");

  for (int i = par.length - 1; i >= 0; i--) {
    print(par[i]);
  }
}
