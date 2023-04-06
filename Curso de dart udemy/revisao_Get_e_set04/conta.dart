import 'dart:math';

class Conta {
  bool alterarLimite = false;
  int _numeroConta = 0;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;

  Conta({required String nome}) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print("Conta numero: ${_numeroConta}, Titular: ${_nome} Criada com sucesso");
  }

  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite;
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print('conta numero: ${this._numeroConta}, Titula: ${this._nome} Criada com sucesso !');
  }
  // get and set ===

  int get numeroConta {
    return this._numeroConta;
  }

  double? get saldo => this._saldo;

  void set limite(double limite) {
    if (alterarLimite) {
      // true
      this._limite = limite; // novo limite
      print("Limite alterado para o valor: $_limite");
    } else {
      print("Permissão negada !");
    }
  }

  // get and set personalizados
  String get informacao => "Titula: ${_nome} N Conta: ${_numeroConta} Saldo: ${this._saldo} Limite: $_limite";

  void set deposito(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print("Deposito valor: ${deposito} saldo atualizado: $_saldo");
    }
  }

  void set saque(double saque) {
    if (saque > 0 && saque <= _limite) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print("Saque realizado com sucesso ! $saque, saldo atual: $_saldo");
      } else {
        print('Saldo no valor $_saldo, insuficiente para saque de $saque');
      }
    } else {
      print("Limite para saque ${this._limite}");
    }
  }
}
