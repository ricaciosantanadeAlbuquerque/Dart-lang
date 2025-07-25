import 'package:exe08/animal.dart';

class Gato extends Animal {
  final String nome;
  final String sexo;

  const Gato({
    required this.nome,
    required this.sexo,
    required super.tipo,
    required super.som,
  });

  @override
  String falar() => '${super.som} como Gato';
}
