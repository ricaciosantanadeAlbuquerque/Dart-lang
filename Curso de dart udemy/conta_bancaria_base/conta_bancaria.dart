class ContaBancaria {
  // atributos de instância
  double _saldo = 0.0;
  String titular = 'Indefinido';

// construtor padrão
  ContaBancaria({required this.titular,});

  double get saldo => this._saldo;

  void set _setSaldo(double saldo) => this._saldo = saldo;

  bool depositar({required double valo}) {
    if (valo > 0 && !valo.isNegative) {
      this._setSaldo = this.saldo + valo;
      return true;
    } else {
      return false;
    }
  }

  bool sacar({required double valor}) {
    if (!valor.isNegative && valor > 0) {
      if (this._saldo >= valor) {// se tiver em conta
        this._setSaldo = (this.saldo - valor);
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
