import '../Construtores/main.dart';

void main() {
  Animal animal = Animal("Tubarão", "peixe ", 15); // parâmetros posicionados  devem obedecer a ordem declarada

  print("Nome ${animal.nome}, Raça ${animal.raca}, Idade: ${animal.idade}");
  print("============================================================================================================================");
  Animal animal01 = Animal("Anta","mamifero",);
  print("Nome ${animal01.nome}, Raça ${animal01.raca}, Idade: ${animal01.idade}");

  /**
   * Embora sejam instâncias da mesma classe e compartilhem os mesmo atribultos e métodos 
   * os valores são diferentes. 
   */
}
