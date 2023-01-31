class ContaBanco {
  // Atribulto

  String? nomeTitular;
  String? cpf;
  int? numeroConta;
  double saldo = 0;
  bool contaAberta = false;

  // construtor padrão,os parâmetros são nomeados

  ContaBanco({
    String? nome,
    String? cpf,
    int? numeroConta,
  }) {
    this.nomeTitular = (nome != null) ? nome : 'valor Não informado';
    this.cpf = (cpf != null) ? cpf : 'valor Não informado';
    this.numeroConta = ((numeroConta != null) ? numeroConta : 0);
    this.contaAberta = true;
    print("${this.toString()}");
  }
  // Contrutor nomeado
  /**
  * Os atribultos estão sendo inicializados pelo construtor da classe
  * os parâmetros são nomeados 
  */
  ContaBanco.depositar({this.nomeTitular, this.cpf, this.numeroConta, this.saldo = 0, this.contaAberta = true});

  void depositar(double valor) {
    this.saldo += valor;
  }

  void sacar(double sacar) {
    if (this.saldo > sacar) {
      this.saldo -= sacar;
    }
    print("O valor do saque foi de $sacar o saldo atual é de $saldo");
  }

  bool getStatus() {
    return this.contaAberta;
  }

  String toString() {
    return "Nome: $nomeTitular CPF: $cpf Número da Conta: $numeroConta Saldo: $saldo";
  }
}
