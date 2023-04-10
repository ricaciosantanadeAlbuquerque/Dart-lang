class Tv {
  bool _ligado = false;
  int _canal = 0;
  int _volume = 0;

  Tv() {
    this._canal = 7;
    this._volume = 50;
    this._ligado = true;
  }
  /// construtor nomeado
  Tv.premiu(this._ligado, this._canal, this._volume); 

  bool get ligado => this._ligado;

  void set ligado(bool ligado) {
    this._ligado = ligado;
  }

  int get canal => this._canal;

  void set canal(int canal) {
    this._canal = canal;
  }

  int get volume => this._volume;

  void set volume(int volume) {
    this._volume = volume;
  }

  // metodos ===========

  void ligar() {
    this.ligado = true;
  }

  void desligar() {
    this.ligado = false;
  }

  void aumentarVolume() {
    if (this.ligado) {
      if (this.volume < 100) {
        this.volume = this.volume + 5;
      }
    }
  }

  void reduzirVolume() {
    if (this.ligado) {
      if (this.volume > 0) {
        this.volume = this.volume - 5;
      }
    }
  }

  void trocarCanal(int canal) {
    if (this.ligado) {
      if(this.canal < 999){
        this.canal = canal;
      }
    }
  }

  @override
  String toString() => 'Ligado ${(this.ligado == true)? 'Ligado' : 'Desligado'}, canal: ${this._canal}, Volume ${this._volume}';
}
