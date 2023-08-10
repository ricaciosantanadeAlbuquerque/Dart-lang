
class TV {
  bool? _ligado;

  

  void sinal() {
    if (this._ligado == true) {
      print("TV Está ligada !!");
    } else {
      print("ERRO! não pode ligar");
    }
  }

  bool? get ligado => this._ligado;

  void set ligado(bool? legado) {
    this._ligado = ligado;
  }
}
