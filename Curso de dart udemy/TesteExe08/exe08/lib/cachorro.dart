import 'package:exe08/animal.dart';

class Cachorro extends Animal {
  final String nome;
  final String sexo;

  const Cachorro({
    required this.nome,
    required this.sexo,
    required super.som,
    required super.tipo,
  });

  @override
  String falar() => '${super.som} como um cão';
}
