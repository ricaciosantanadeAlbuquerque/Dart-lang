import 'animal.dart';
/// objeto imutável
class Gato extends Animal {
  final String nome;
  final String dono;

  const Gato(
      {required this.nome,
      required this.dono,
      required String idade,
      required String sexo})
      : super(
            idade: idade,
            sexo: sexo); // super faz a referência a super instância Animal

  @override
  void fazSom() {
    print('Gato Mia');
  }
}
