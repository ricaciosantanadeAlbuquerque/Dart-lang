import 'pessoa.dart';

class Motorista extends Pessoa {
  final String cnh;

  Motorista({required this.cnh, required String nome, required int idade, required String sexo}) : super(nome: nome, idade: idade, sexo: sexo);

  @override
  String toString() => 'CNH: $cnh ' + super.toString();
}
