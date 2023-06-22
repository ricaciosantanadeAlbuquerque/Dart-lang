import 'abstract_caneta.dart';

class Caneta implements InterfaceCaneta {
  // atribultos de classe
  String _cor;
  String _modelo;
  double _ponta;
  int _carga;
  bool _tampa;
// construtor
  Caneta(this._cor, this._modelo, this._ponta, this._carga, this._tampa);
// get and set
  String get cor => this._cor;

  void set cor(String cor) {
    this._cor = cor;
  }

  String get modelo => this._modelo;

  void set modelo(String modelo) {
    this._modelo = modelo;
  }

  double get ponta => this._ponta;

  void set ponta(double ponta) {
    this._ponta = ponta;
  }

  int get carga {
    return this._carga;
  }

  void set carga(int carga) {
    this._carga = carga;
  }

  bool get tampada => this._tampa;

  void set tampada(bool tampada) {
    this._tampa = tampada;
  }

  // implementando os métodos da interface
  @override
  void tampar() {
    this.tampada = true;
  }

  @override
  void destampar() {
    this.tampada = false;
  }

  @override
  void escrever() {
    if (this.tampada == false) {
      if (this.carga > 0) {
        print('Escrevendo');
      } else {
        print('Acabou a tinta!');
      }
    } else {
      print("Não pode escrever");
    }
  }
  
@override
  String toString() {
    return 'Cor:$cor, Modelo:$modelo, Ponta:$ponta,  Carga:$carga Tampada:${(this.tampada)? 'sim':'nao'}';
  }
}
