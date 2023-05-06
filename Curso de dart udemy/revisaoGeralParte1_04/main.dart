/**
 *  Faça um programa para ler o número de gols marcados pelo Nacional de Patos e o número de gols marcados 
*   pelo Treze. Escrever o nome do time vencedor. Caso não haja vencedor, escrever EMPATE.
 */
import 'dart:io';

void main() {
  print("Digite o número de gols marcados pelo Nacional de Patos ");
  String? entradaPatos = stdin.readLineSync();
  print("Digite o número de gols marcados pelo 13 ");
  String? entradaTreze = stdin.readLineSync();

  if (entradaPatos != null && entradaTreze != null) {
    if (entradaPatos.isNotEmpty == true && entradaTreze.isNotEmpty == true) {
      try {
        int patos = int.parse(entradaPatos);
        int treze = int.parse(entradaTreze);

        if (patos > treze) {
          print("O vencedor é o Nacional de Patos !");
        } else if (treze > patos) {
          print("O vencedor é o treze !");
        } else {
          print("Empate!");
        }
      } catch (e) {
        throw Exception('ERRO! não é um numero $entradaTreze ou $entradaPatos');
      }
    } else {
      print("Digite um valor válido.");
    }
  } else {
    print("Digite um valor válido.");
  }
}
