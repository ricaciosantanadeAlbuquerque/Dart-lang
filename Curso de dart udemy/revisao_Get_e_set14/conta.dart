import 'dart:math';

class Conta {
  // atribulto
  bool alterarLimite = false;
  String? _nome;
  int? _numeroConta;
  double _saldo = 0;
  double _limite = 500;
// construtor padrão
  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print("Numero da conta:${this._numeroConta}, Titula:${this._nome}, criada com sucesso !");
  }
// construtor nomeado
  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print("Numero da conta:${this._numeroConta}, Titular: ${this._nome}, Criada com  sucesso !");
  }

  // get ====

  int? get numeroConta => this._numeroConta ?? 1;

  double? get saldo => this._saldo;

// set ===
  void set limite(double limite) {
    if (alterarLimite) {
      this._limite = limite;
      print("Limite alterado para o valor $_limite");
    } else {
      print("permissão negada!");
    }
  }

//  get and set costumizados

  void set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print("Saque valor: $saque, Saldo atualizado: $_saldo");
      } else {
        print("Saldo valor: $_saldo é  insuficiente para saque de $saque");
      }
    } else {
      print("Limite para saque $_limite");
    }
  }

  String get informacao => 'Titular:${this._nome}, Numero da conta ${this._numeroConta}, Saldo:${this._saldo}';

  void set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print("Deposito valor: ${deposito}, Saldo atualizado ${this._saldo}");
    }
  }
}
