import 'animal.dart';

void main() {
  Animal animal = Animal('rabicho', 'viralata'); // linhas de instanciamento
  print('Nome:${animal.nome}, Raça:${animal.raca}, Idade:${animal.idade}\n');

  Animal animal2 = Animal('rabicho', 'viralata', 3);
  print('Nome:${animal.nome}, Raça:${animal.raca}, Idade:${animal2.idade}\n');

  print(identical(animal,animal2));

   print(identical(animal, animal2)? '\n Sim! os objetos são iguais' : 'Não os objetos não são iguais');

}
