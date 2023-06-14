import 'animal.dart';

void main() {
  Animal animal = Animal("gato", "siamês"); // instância de da  classe animal.
  print("Nome:${animal.nome}, raça:${animal.raca}, Idade:${animal.idade}\n");

  Animal animal2 = Animal("leão", 'felino', 12);
  print("Nome:${animal2.nome}, raça:${animal2.raca}, Idade:${animal2.idade}\n");

  print("Os objetos são iguais? ${identical(animal,animal2)? 'Sim! são iguais.\n':'Não! não são iguais.'}\n");
}
