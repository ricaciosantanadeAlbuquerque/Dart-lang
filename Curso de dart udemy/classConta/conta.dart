import 'estrutura_dados.dart';
import 'interfaceConta.dart';

class Conta implements Interface {
  // Atributos de classe

  int? _numeroConta;
  String? _tipo;
  String? _dono;
  double? _saldo;
  bool? _status;

// construtor

  Conta(
    this._dono,
    this._numeroConta,
  ) {
    this._saldo = 0;
    this._status = false;
  }

  int? get numeroConta => this._numeroConta;

  void set numeroConta(int? numeroConta) {
    this._numeroConta = numeroConta;
  }

  String? get tipo => this._tipo;

  void set tipo(String? tipo) {
    this._tipo = tipo;
  }

  String? get dono => this._dono;

  void set dono(String? dono) {
    this._dono = dono;
  }

  double? get saldo => this._saldo;

  void set saldo(double? saldo) {
    this._saldo = saldo;
  }

  bool? get status => this._status;

  void set status(bool? status) {
    this._status = status;
  }

// Interface =======================================
  @override
  void abrirConta(String? tipo) {
    this.tipo = tipo ?? 'indefinido';
    this.status = true;

    if (this.tipo == 'CC') {
      this.saldo = 50;
    } else if (this.tipo == 'CP') {
      this.saldo = 150;
    }

    EstruturaDados.addDados(this); // cadastrando   instância
  }

  @override
  void fecharConta() {
    if (this.status! == true) {
      if (this.saldo! > 0) {
        print("Você ainda tem dinheiro na conta !!");
        print("Necessário sacar para encerrar a conta !");
      } else if (this.saldo! < 0) {
        print('há um débito em aberto, não é possível encerrar esta conta.');
      } else {
        print("conta encerrada com sucesso! ");
        this.status = false;
      }
    } else {
      print("ERRO! não é possível fechar conta");
    }
  }

  @override
  void depositar(double? valor) {
    if (this.status == true) {
      this.saldo = this.saldo! + valor!;
    } else {
      print("Erro ! Não foi possível realizar o deposito ");
    }
  }

  @override
  void sacar(double? sacar) {
    if (this.status == true) {
      if (this.saldo! >= sacar!) {
        this.saldo = this.saldo! - sacar;
      } else {
        print("Você não possui saldo o suficiente para o saque !");
      }
    } else {
      print("Você não possui uma conta em berto !");
    }
  }

  @override
  void pagarMensalidade() {
    var taxa = 0.0;

    if (this.tipo == 'CC') {
      taxa = 12;
    } else if (this.tipo == 'CP') {
      taxa = 20;
    }

    // apartir desta linha,  já sabemos o valor  da taxa

    if (this.status == true) {
      if (this.saldo! > taxa) {
        this.saldo = this.saldo! - taxa;
      }
    }
  }

  void transferencia({required int numeroConta, required String dono, required double valor}) {
    if (this.status == true) {
      if (this.saldo! > 0) { // tem dinheiro para transferir
        this.saldo = this.saldo! - valor; // o valor diminuido  dessa conta constará em uma outra
        EstruturaDados.buscaDados(numeroConta, dono, valor); // o mesmo valor será passado para esta outra conta
      } else {
        print("Saldo insuficiente para transação !");
      }
    } else {
      print("Erro !");
    }
  }

  @override
  String toString() => 'NumeroConta: $numeroConta, titular: $dono, Saldo:$saldo, Conta: ${(status == true) ? 'ativada' : 'encerrada'}';

  void exibirDados() {
    EstruturaDados.listarObjetos();
  }
}
