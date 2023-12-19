import 'dart:math';

class Conta {
  bool alteraLimite = false;
  int? _numeroConta;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;

// construtor padrão

  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('\nConta numero: ${this._numeroConta}, Titular: ${this._nome}, com construtor default\n');
  }
// construtor nomeado
  Conta.vip(String? nome, {double limite = 10000}) {
    this.alteraLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('\n Conta numero:${this._numeroConta}, Títular: ${this._nome},');
  }

  // get and set padrão
  int? get numeroConta => this._numeroConta;

  void set numeroConta(int? numeroConta) {
    this._numeroConta = numeroConta;
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  double get saldo => this._saldo;

  void set saldo(double saldo) {
    this._saldo = saldo;
  }

  double get limite => this._limite;

  void set limite(double limite) {
    this._limite = limite;
  }

// get and set costumizado

  String get informacao => 'Títular: ${this.nome}, Número da conta: ${this.numeroConta}, Saldo:${this.saldo}, Limite:${this.limite}';

  void set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print('Deposito valor:$deposito, saldo atualizado: $_saldo');
    }
  }

  void set saque(double saque) {
    if (saque > 0 && saque <= limite) {
      if (saque <= saldo) {
        this._saldo -= saque;
        print('Saque valor:$saque, saldo atualizado $_saldo');
      } else {
        print('Saldo valor: $saldo insuficiente para saque de $saque');
      }
    } else {
      print('Limite para saque: ${_limite}');
    }
  }
}
