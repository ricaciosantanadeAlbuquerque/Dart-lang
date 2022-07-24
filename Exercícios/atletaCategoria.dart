import 'dart:io';

void main() {
  print("Digite sua idade por favor !");
  String? idade = stdin.readLineSync();
  int idade1 = int.parse(idade!);
  if (idade1 >= 5 && idade1 <= 10) {
    print("Infantial");
  } else if (idade1 >= 11 && idade1 <= 15) {
    print("Juvenil");
  } else if (idade1 >= 16 && idade1 <= 20) {
    print("Júnior");
  } else if (idade1 >= 21 && idade1 <= 25) {
    print("Profissional");
  } else {
    print("Idade fora da faixa estabelecida ");
  }
}
