import 'dart:io';

void main() {
  int j = 0;
  while (j < 10) {
    print("Digite sua primeira nota! ");
    String? nota1 = stdin.readLineSync();
    print("Digite sua segunda Nota");
    String? nota2 = stdin.readLineSync();
    print("Digite sua terceira nota ");
    String? nota3 = stdin.readLineSync();
    int NOTA1 = int.parse(nota1!);
    int NOTA2 = int.parse(nota2!);
    int NOTA3 = int.parse(nota3!);
    if (NOTA1 >= 0 &&
        NOTA1 <= 10 &&
        NOTA2 >= 0 &&
        NOTA2 <= 10 &&
        NOTA3 >= 0 &&
        NOTA3 <= 10) {
      int media = (NOTA1 + NOTA2 + NOTA3) ~/ 3;
      if (media >= 7 && media <= 10) {
        print("${j} Parabéns você está aprovado ! Com amédia  ${media}");
      } else {
        print("Sinto muito você está reprovado ");
      }
    } else {
      print("Valor fora da faixa!");
      break;
    }
    j++;
  }
  print("Fim !");
}
