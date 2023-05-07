import 'dart:math';

/**
 * – Faça um programa que sorteie 6 números entre 1 e 60.
 */
void main() {
  Random random = Random();
  print("========== JOGO DA SORTE ==========");
  List<int> sorte = [];
  for (int i = 0; i < 6; i++) {
    int numero = random.nextInt(60 + 1);
    sorte.add(numero);
  }
  print(sorte);
}
