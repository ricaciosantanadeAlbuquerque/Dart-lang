class Movimento {
  int? _tipoMovimento;
  DateTime? _dataMovimento;
  DateTime? _horaMovimento;
  double? _valorMovimento;

  Movimento();

 int? get tipoMovimento => this._tipoMovimento;

 set tipoMovimento(int? value) => this._tipoMovimento = value;

  get dataMovimento => this._dataMovimento;

 set dataMovimento( value) => this._dataMovimento = value;

  get horaMovimento => this._horaMovimento;

 set horaMovimento( value) => this._horaMovimento = value;

  get valorMovimento => this._valorMovimento;

 set valorMovimento( value) => this._valorMovimento = value;

//=============================================================
  void registrarMovimento(int,double){}

  void consultarMovimento(Date){}

}
