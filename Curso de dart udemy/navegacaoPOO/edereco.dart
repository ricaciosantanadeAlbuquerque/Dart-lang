import 'pessoa.dart';

class Endereco {
  String? _rua;
  int? _numero;
  String? _bairro;
  String? _estado;
  Pessoa? _pessoa;

  Endereco({required String rua, required int numero, required String bairro, required String estado, required Pessoa pessoa}) {
    this.rua = rua;
    this.numero = numero;
    this.bairro = bairro;
    this.estado = estado;
    this.pessoa = pessoa;
  }

  String? get rua => this._rua;

  set rua(String? value) => this._rua = value;

  int? get numero => this._numero;

  void set numero(int? numero) => this._numero = numero;

  String? get bairro => this._bairro;

  void set bairro(String? bairro) => this._bairro = bairro;

  String get estado => this._estado!;

  void set estado(String estado) => this._estado = estado;

  Pessoa get pessoa => this._pessoa!;

  void set pessoa(Pessoa value) => this._pessoa = value;

  @override
  String toString() {
    return 'Rua:$_rua, Número:$_numero, Bairro:$_bairro, Estado:$_estado';
  }

  String quemMoraAi() {
    return this.pessoa.toString();
  }

  String consultar() {
    return toString();
  }
}
