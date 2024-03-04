import 'pessoa.dart';

class Motorista extends Pessoa {
  final int cnh;

  const Motorista({required this.cnh, required String nome, required int idade, required String sexo}) : super(nome, idade, sexo);

  @override
  String toString() => 'CNH:$cnh, ' + super.toString();
}
