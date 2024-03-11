import 'pessoa.dart';

class Endereco {
  final String rua;
  final String numero;
  final String uf;
  final String bairro;
  Pessoa? pessoa;

  Endereco({required this.rua, required this.numero, required this.bairro, required this.uf});

  void adicionarTitularDoEndereco(Pessoa pessoa) => this.pessoa = pessoa;

  @override
  String toString() => ' Rua:$rua, Número:$numero, Bairro:$bairro Uf:$uf ';
}
