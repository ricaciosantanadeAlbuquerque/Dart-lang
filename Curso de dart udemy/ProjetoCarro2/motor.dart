class Motor {
  double? _potencia;
  final String fabricante;
  double _cicloRotacaoMotor = 0.0;
  bool _ativado = false;

  Motor({required double potencia, required this.fabricante, required double cicloRotacaoMotor}) {
    this._potencia = potencia;
    this.cicloRotacaoMotor = cicloRotacaoMotor;
  }

  double get cicloRotacaoMotor => this._cicloRotacaoMotor;

  void set cicloRotacaoMotor(double cicloRotacaoMotor) {
    this._cicloRotacaoMotor = cicloRotacaoMotor;
  }

  double? get potencia => this._potencia;

  void set potencia(double? potencia) => this._potencia = potencia;

  bool get ativado => this._ativado;

  void set ativado(bool ativado) {
    this._ativado = ativado;
  }

  void maiscicloRotacaoMotor() {
    if (this.ativado == true) {
      this.cicloRotacaoMotor = this.cicloRotacaoMotor + 100;
    }
  }

  void menoscicloRotacaoMotor() {
    if (this.ativado == true) {
      this.cicloRotacaoMotor = this.cicloRotacaoMotor - 100;
    }
  }

  void ativar() {
    if (this.ativado == false) {
      this.ativado = true;
    }
  }

  void desativar() {
    if (this.ativado == true) {
      this.ativado = false;
    }
  }

  @override
  String toString() {
    return 'Fabricante $fabricante, Potência do Motor: $potencia, CicloRPM:$_cicloRotacaoMotor, Ativado: ${(this.ativado)? 'Sim' :'Não'}. ';
  }
}
