import 'interfaceCaneta.dart';

class Caneta implements CanetaInterface {
  String? _modelo;
  String? _cor;
  double? _ponta;
  int? _carga;
  bool? _tampada;

  Caneta(this._modelo, this._cor, this._ponta, this._carga,) {
    this._modelo = (this._modelo != null) ? this._modelo : 'indefinido';
    this._cor = (this._cor != null) ? this._cor : 'indefinido';
    this._ponta = (this._ponta != null) ? this._ponta : 0.5;
    this._carga = (this._carga != null) ? this._carga : 100;
    this._tampada = true;
  }

  String? get modelo => this.modelo;

  void set modelo(String? modelo) {
    this._modelo = modelo;
  }

  String? get cor => this._cor;

  void set cor(String? cor) {
    this._cor = cor;
  }

  double? get ponta => this._ponta;

  void set ponta(double? ponta) {
    this._ponta = ponta;
  }

  int? get carga => this._carga;

  void set carga(int? carga) {
    this._carga = carga;
  }

  bool? get tampada => this._tampada;

  void set tampada(bool? tampada) {
    this._tampada = tampada;
  }

  // sobreposição obrigatória de métodos
  @override
  void escrever() {
    if (this.tampada == false && this.carga! > 0 && this.carga! <= 100) {
      print("Escrevendo !!!");
    } else {
      print("Não é possível escrever !");
    }
  }

  @override
  void tampar() {
    this.tampada = true;
  }

  @override
  void destampar() {
    this.tampada = false;
  }

  // estado
  @override
  String toString() => 'Modelo: ${_modelo}, Cor: ${_cor},Ponta: ${_ponta}, Carga: ${_carga}, Tampada:${ (_tampada == true) ? 'SIM' : 'NAO'}';
}
