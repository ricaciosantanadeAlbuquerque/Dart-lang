class Movimento {
  int? _tipoMovimento;
  DateTime? _dataMovimento;
  DateTime? _horaMovimento;
  double? _valorMovimento;

  Movimento();

  int? get tipoMovimento => this._tipoMovimento;

  set tipoMovimento(int? value) => this._tipoMovimento = value;

  get dataMovimento => this._dataMovimento;

  set dataMovimento(value) => this._dataMovimento = value;

  get horaMovimento => this._horaMovimento;

  set horaMovimento(value) => this._horaMovimento = value;

  get valorMovimento => this._valorMovimento;

  set valorMovimento(value) => this._valorMovimento = value;

//=============================================================

  void registrarMovimento(int movimentoTipo, double valor) {
    switch (movimentoTipo) {
      case 1:
        print('saque');
        this.tipoMovimento = 1;
        break;
      case 2:
        print('Deposito');
        this.tipoMovimento = 2;
        break;
    }
  }

  void informaData(DateTime date) {
    this.dataMovimento = date;
    print("Data do movimento ${this.dataMovimento}");
  }

  void informarHora(DateTime hora) {
    this._horaMovimento = hora;
    print("Horário da movimentação ${this.horaMovimento}");
  }

  @override
  String toString() {
    return ' Tipo de movimentação ${tipoMovimento == 1 ? 'Saque' : 'Deposito'} Data: $_dataMovimento  Hora: $_horaMovimento Valor: $_valorMovimento ';
  }
}
