import 'Dart:io';

/**
 * 2 - Um determinado clube de tênis pretende classificar seus atletas em categorias. Para isso, o clube contratou 
 *  você para criar um programa que executasse essa tarefa. Baseada na tabela de categorias do clube, construa um 
 *  programa que solicite a idade de um atleta e imprima sua categoria;
 *  De 5 a 10 anos – Infantil;
 *  De 11 a 15 anos – Juvenil;
 *  De 16 a 20 anos – Júnior;
 *  De 21 a 25 anos – Profissional.
 */
void main() {
  print("Digite sua idade ");
  String? entrada = stdin.readLineSync();
  // conversao==========================
  int idade = int.parse(entrada!);

  if (idade >= 5 && idade <= 10) {
    print("Infantil.");
  } else if (idade >= 11 && idade <= 15) {
    print("Juvenil.");
  } else if (idade >= 16 && idade <= 20) {
    print("Juvenil.");
  } else if (idade >= 21 && idade <= 25) {
    print("Profissional.");
  } else {
    print("Sua idade está fora da faixa etária permitida.");
  }
}
