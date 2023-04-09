import 'dart:math';

class Conta {
  // atribultos
  bool alterarLimite = false;
  int _numeroConta = 0;
  String? _nome;
  double _saldo = 0;
  double _limite = 500;

// construtor Padrão
  Conta(String nome) {
    this._nome = nome;
    this._numeroConta = Random().nextInt(9999);
    print("Conta  de número ${this._numeroConta}, Titular ${this._nome} Criada com sucesso ! ");
  }

// consrutor nomeado ====
  Conta.vip(String nome, {double limite = 10000}) {
    // caso um valor não seja passado para 'limite', o valor permitido para saque será 10000
    this.alterarLimite = true;
    this._nome = nome;
    this._limite = limite;
    this._numeroConta = Random().nextInt(9999);
  }

// get and set

  int get numeroConta => this._numeroConta;
  double get saldo => this._saldo;

  // passando um novo limite para saque

  void set limite(double limite) {
    if (alterarLimite) {
      //tem permissão para alterar o limite de saque
      this._limite = limite;
      print("Limite alterado para o valor $_limite");
    } else {
      print("Você não tem permissão para alterar o limite de saque desta conta !");
    }
  }

// get and set personalizados
  String get informacao => 'Titular: ${this._nome}, Número Conta ${this._numeroConta}, Saldo: ${this._saldo}';

  void set depositar(double deposito) {
    if (deposito > 0) {
      this._saldo += deposito;
      print("Deposito no valor de $deposito, Saldo no valor de ${this._saldo}");
    } else {
      print("Digite um valor para deposito");
    }
  }

  void set saque(double saque) {
    if (saque > 0 && saque <= this._limite) {
      if (saque <= this._saldo) {
        this._saldo -= saque;
        print("Saque no valor ${saque}, saldo Atualizado: ${this._saldo}");
      } else {
        print("Saldo ${this._saldo} é insuficiente para saque");
      }
    } else {
      print("O Limite para Saque é até ${_limite}");
    }
  }
}
