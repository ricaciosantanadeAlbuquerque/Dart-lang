/**
 * Classe totalmente encapsulada !!
 */
class ContaBanco {
  // atribultos

  int? _numeroConta;
  String? _itpo;
  String? _dono;
  double? _saldo;
  bool? _status;

  // Construtor =============================
  ContaBanco({required String dono}) {
    // construtor com parâmetros nomeados, neste caso nosso parâmetros não aceita null
    this._dono = dono;
    this.saldo = 0;
    this.status = false;
  }

  // get and set

  int? get numeroConta => this._numeroConta;

  void set numeroConta(int? numeroConta) {
    this._numeroConta = numeroConta;
  }

  String? get tipo => this._itpo;

  void set tipo(String? tipo) {
    this._itpo = tipo;
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

  // métodos ===========================================================================

  void abrirConta(String tipo) {
    if (this.status == false) {
      this.status = true; // abrir conta
      this.tipo = tipo; // tipo da conta cc 'Conta Corrente' cp 'conta poupança'

      if (this.tipo == 'cc') {
        this.saldo = 50;
      } else if (this.tipo == 'cp') {
        this.saldo = 150;
      }
      print("A conta do senhor(a) $_dono  foi aberta com sucesso, saldo ${_saldo}");
    } else {
      print("A conta já está aberta !!!");
    }
  }

  void fecharConta() {
    if (this.status == true) {
      // se a conta está aberta então
      if (this.saldo! > 0) {
        // se o saldo for positivo
        print("Não é possível fechar a conta pois ainda a dinheiro nela ${this.saldo}R\$ !");
      } else if (this.saldo! < 0) {
        print("Não será possível fechar  esta conta pois a uma dívida  aberta no valor de ${this.saldo}R\$ !");
      } else {
        this.status = false;
        print("Conta fechada com sucesso !!!");
      }
    }
  }

  void depositar(double valor) {
    if (this.status == true) {
      if (valor > 0) {
        // set recebe get + valor
        this.saldo = this.saldo! + valor; // somamos  o valor do saldo com o deposito e o resultado guardamos em saldo;
        print("Deposito ${valor}R\$, saldo ${this._saldo}R\$");
      } else {
        print("Necessário digitar um valor positivo não nulo para deposito !!!");
      }
    } else {
      print("Não pode depositar  pois não há uma conta aberta !");
      print("Abra uma conta já !");
    }
  }

  void sacar(double valor) {
    if (this.status == true) {
      if (this.saldo! >= valor) {
        //necessário haver um valor maior ou igual no saldo para que se possa sacar
        this.saldo = this.saldo! - valor;
        print("Saque no valor $valor R\$  feito com sucesso, saldo atual ${this.saldo}R\$ ");
      } else {
        print("Não é possível sacar o valor de $valor R\$, saldo ${this.saldo}R\$ é insuficiente.");
      }
    } else {
      print("Não é  possível sacar! ERRO conta fechada !");
      print("Abra sua conta !!");
    }
  }

  void pagarTaxa() {
    var valor = 0;

    if (this.tipo == 'cc') {
      valor = 12;
    } else if (this.tipo == 'cp') {
      valor = 20;
    }
    // nesta parte do código já temos  o valor da taxa

    if (this.status == true) {
      // se conta a berta
      this.saldo = this.saldo! - valor;
      print("Taxa $valor paga com sucesso, saldo ${this.saldo}");
    } else {
      print("ERRO! conta não está aberta ou não existe !");
    }
  }

  @override
  String toString() => 'Número da Conta: ${this.numeroConta}, Tipo: ${this.tipo}, Dono: ${this.dono}, saldo: ${this.saldo}, status: ${this.status}';
}
