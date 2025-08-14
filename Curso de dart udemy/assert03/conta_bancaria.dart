class ContaBancaria {
  double saldo = 0;

  void sacar({required double valor}) {
    assert(valor > 0, 'O valor de saque deve ser posivo');
    assert(valor <= this.saldo, 'Saldo insuficiente');
    this.saldo -= valor;
  }

  void depositar({required double valor}) {
    assert(valor > 0);
    this.saldo += valor;
  }

  double extrato() {
    return this.saldo;
  }
}

/**
 * assert() deve ser true para não lançar exceção, caso a condição seja false.
 * lança uma exceção
 */
