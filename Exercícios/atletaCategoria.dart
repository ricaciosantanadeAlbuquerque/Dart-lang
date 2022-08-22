import 'dart:io';
/*2 - Um determinado clube de tênis pretende classificar seus atletas em categorias. Para isso, o clube contratou 
você para criar um programa que executasse essa tarefa. Baseada na tabela de categorias do clube, construa um 
programa que solicite a idade de um atleta e imprima sua categoria;
De 5 a 10 anos – Infantil;
De 11 a 15 anos – Juvenil;
De 16 a 20 anos – Júnior;
De 21 a 25 anos – Profissional */
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
