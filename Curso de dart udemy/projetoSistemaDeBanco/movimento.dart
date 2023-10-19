class Movimento {
  int? _tipoMovimento;
  DateTime? _dataMovimento;

  double? _valorMovimento;

  Movimento();

  int? get tipoMovimento => this._tipoMovimento;

  set tipoMovimento(int? value) => this._tipoMovimento = value;

  DateTime? get dataMovimento => this._dataMovimento;

  void set dataMovimento(DateTime? value) => this._dataMovimento = value;

  double? get valorMovimento => this._valorMovimento;

  set valorMovimento(double? value) => this._valorMovimento = value;

//=============================================================

  void registrarMovimento(int movimentoTipo, double valor) {
    switch (movimentoTipo) {
      case 1:
        print('saque');
        this.tipoMovimento = 1;
        this._valorMovimento = valor;
        break;
      case 2:
        print('Deposito');
        this.tipoMovimento = 2;
        this._valorMovimento = valor;
        break;
      case 3:
        print('Abertura de conta');
        this.tipoMovimento = 3;
         this._valorMovimento = valor;
        break;
      case 4:
        print('fechamento de conta');
        this.tipoMovimento = 4;
         this._valorMovimento = valor;
        break;
    }
  }

  void informaData(DateTime date) {
    this.dataMovimento = date;
    print("Data do movimento ${this.dataMovimento}");
  }

  @override
  String toString() {
    return ' Tipo de movimentação ${(tipoMovimento == 1) ? 'Saque' :(this.tipoMovimento == 2) ? 'Deposito' : (this.tipoMovimento == 3) ? 'Abertura de conta' : 'fechamento de conta'} Data: $_dataMovimento, Valor: $_valorMovimento ';
  }
}
