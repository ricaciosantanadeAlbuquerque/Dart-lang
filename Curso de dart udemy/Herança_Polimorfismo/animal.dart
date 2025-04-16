/// Objeto Imutável
 abstract class Animal {
  final String idade;
  final String sexo;

 const Animal({required this.idade, required this.sexo});

  void fazSom(); // Método abstrato;
}
