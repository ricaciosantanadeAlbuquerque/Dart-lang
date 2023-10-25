import 'pessoa33.dart';

class Endereco33 {
  final String rua;
  final String uf;
  final String bairro;
  final String cidade;
  Pessoa33? _pessoa33;

  Endereco33({required this.rua, required this.uf, required this.bairro, required this.cidade, required Pessoa33 pessoa33}) {
    this.pessoa33 = pessoa33;
  }

  Pessoa33? get pessoa33 => this._pessoa33;

  void set pessoa33(Pessoa33? pessoa33) {
    this._pessoa33 = pessoa33;
  }

  @override
  String toString() => 'Rua:$rua, Estado: $uf, Bairro: $bairro, Cidade: $cidade,';
}
