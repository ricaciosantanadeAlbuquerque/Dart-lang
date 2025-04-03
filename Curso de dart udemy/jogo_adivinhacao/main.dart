/**
 * Crie um jogo onde o programa escolhe um número entre 1 e 100 e o usuário tenta adivinhar.

O programa deve dizer se o palpite é maior ou menor que o número correto.

O jogo continua até o usuário acertar
 */

import 'dart:math';
import 'dart:io';

void main() {
  int valorSorte = Random().nextInt(100) + 1;
  print(valorSorte);
  /**
   * Random().nextInt(100) 0 a 99
   * Random().nextInt(100 + 1) 0 a 100
   * Random().nextInt(100) + 1 // Gera entre 1 e 100
   */
  int valorEscolhido = -1;

  print('🎮 Bem-vindo ao jogo de adivinhação!');
  print('Tente adivinhar um número entre 1 e 100.');
  do {
    stdout.write('Digite um número para jogar: ');
    String? op = stdin.readLineSync();

    if (op != null && op.isNotEmpty) {
      try {
        valorEscolhido = int.parse(op);

        if (valorEscolhido < 1 || valorEscolhido > 100) {
          print('Por favor, digite um número entre 1 e 100');
          continue; // desta linha retorna para o do{} sem executar o que está abaixo desta linha e ee loop continua
        }

        if (valorEscolhido < valorSorte) {
          print('\u{1F53C} Quase !!! o valor é um pouco maior.');
        } else if (valorEscolhido > valorSorte) {
          print('\u{1F53D}Quase !!! o valor é um pouco menor.');
        } 
      } catch (e) {
        print('Entrada inválida! Digite apenas números');
      }
    } else {
      print('ERRO!!! Digite valores válidos');
    }
  } while (valorSorte != valorEscolhido);
  print('🎉 Parabéns! Você acertou o número $valorSorte.');
  print('=========Fim do Jogo=========');
}
