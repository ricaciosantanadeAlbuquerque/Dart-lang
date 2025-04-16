import 'animal.dart';

class Cachorro extends Animal {
  final String nome;
  final String dono;

  const Cachorro(
      {required this.nome,
      required this.dono,
      required String idade,
      required String sexo})
      : super(idade: idade, sexo: sexo); // super == super construtor da classe animal

  @override
  void fazSom() {
    print('Cachorro Late !!!');
  }
}
