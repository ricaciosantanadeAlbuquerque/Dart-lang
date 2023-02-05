import 'dart:math';

class Conta {
  
  bool? alterarLimite = false;
  int? _numeroConta;
  String? _nome;
  double _saldo = 0;
  double? _limite = 500;
  // construtor padrão
  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(999); // instancia da classe Random
    print("Conta numero: ${_numeroConta} Titular ${_nome}");
  }
// construtor nomeado
  Conta.vip(String nome, {double limite = 10000}) {
    this.alterarLimite = true;
    this._limite = limite; // limite para saque
    this._nome = nome;
    this._numeroConta = Random().nextInt(999);
    print("Numero Conta: ${_numeroConta} Titular: ${_nome}");
  }
  // get e set padrão
  int get numeroConta {
    return this._numeroConta!;
  }

  double? get saldo => this._saldo;

  void set limite(double limite) {
    if (alterarLimite!) {
      this._limite = limite;
      print("Limite alterado para o valor: $_limite");
    } else {
      print("Permissão negada! Alteração: Limite do titular ");
    }
  }

  // get e set costumizado
  void set depositar(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print("Deposito valor: ${deposito} saldo atualizado : $_saldo ");
    }
  }

  void set saque(double saque) {
    if (saque > 0 && saque <= _limite!) {
      if (saque <= _saldo) {
        this._saldo -= saque;
        print("Saque valor: $saque saldo Atualizado $_saldo");
      } else {
        print("Saldo valor: $_saldo insuficiente para saque de $saque ");
      }
    } else {
      print("Limite para saque: $_limite");
    }
  }
}
