import 'pessoa.dart';

class Motorista extends Pessoa {
  final num id;

  const Motorista({required this.id, required String nome, required int idade, required String sexo}) : super(nome: nome, idade: idade, sexo: sexo);

  void dirigir() {
    print("Motorista de Nome: ${super.nome} com identificação:$id");
  }
}
