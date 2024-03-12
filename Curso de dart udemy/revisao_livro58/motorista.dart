import 'pessoa.dart';

class Motorista extends Pessoa {
  final String cnh;

 const Motorista({required this.cnh, required String nome, required String idade, required String sexo}) : super(nome: nome, idade: idade, sexo: sexo);

  @override
  String toString() => 'CNH:$cnh ${super.toString()}';
}
