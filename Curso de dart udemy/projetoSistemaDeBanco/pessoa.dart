import 'conta_comum.dart';

abstract class Pessoa {
  String? _nomePessoa;
  String? _ederecoPessoa;
  int? _cepPessoa;
  int? _telefonePessoa;
  double? _rendaPessoa;
  int _situacaoPessoa = 1;
  ContaComum? _contaComum;

  Pessoa(this._nomePessoa, this._ederecoPessoa, this._cepPessoa, this._telefonePessoa, this._rendaPessoa, this._situacaoPessoa);

  ContaComum? get contaComum => this._contaComum;

  void set contaComum(ContaComum? contaComum) {
    this._contaComum = contaComum;
  }

  String? get nomePessoa => this._nomePessoa;

  void set nomePessoa(String? nomePessoa) {
    this._nomePessoa = nomePessoa;
  }

  String? get ederecoPessoa => this._ederecoPessoa;

  void set ederecoPessoa(String? ederecoPessoa) {
    this._ederecoPessoa = ederecoPessoa;
  }

  int? get cepPessoa => this._cepPessoa;

  void set cepPessoa(int? cepPessoa) {
    this._cepPessoa = cepPessoa;
  }

  int? get telefonePessoa => this._telefonePessoa;

  void set telefonePessoa(int? telefonePessoa) {
    this._telefonePessoa = telefonePessoa;
  }

  double? get rendaPessoa => this._rendaPessoa;

  void set rendaPessoa(double? rendaPessoa) {
    this._rendaPessoa = rendaPessoa;
  }

  int get situacaoPessoa => this._situacaoPessoa;

  void set situacaoPessoa(int situacaoPessoa) {
    this._situacaoPessoa = situacaoPessoa;
  }
  
 @override
  String toString() {
    return 'Nome: $_nomePessoa, Endereço: $_ederecoPessoa,  Cep: $_cepPessoa, Telefone: $_telefonePessoa, Renda: $_rendaPessoa \n status conta ${situacaoPessoa == 1 ? ' aberta' : 'fechada'}';
  }
}
