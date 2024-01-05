import 'interface_controle.dart';

class Controle implements InterfaceControle {

  int? _volume;
  bool? _ligado;
  bool? _tocando;

  Controle() {
    this._ligado = false;
    this._tocando = false;
    this._volume = 50;
  }

  int? get volume => this._volume;

  void set volume(int? volume) => this._volume = volume;

  bool? get ligado => this._ligado;

  void set ligado(bool? ligado) => this._ligado = ligado;

  bool? get tocando => this._tocando;

  void set tocando(bool? tocando) => this._tocando = tocando;

  // interfaces ===============================================

  @override
  void ligar() {
    this.ligado = true;
    this.tocando = true;
  }

  @override
  void desligar() {
    this.ligado = false;
    this.tocando = false;
  }

  @override
  void abrirMenu() {
    print('Tocando: ${this.tocando == true ? 'SIM' : 'NÃO'}');
    print('Ligado: ${this.ligado == true ? 'SIM' : 'NÃO'}');
    print('Volume:$_volume');

    for (int i = 0; i < this.volume!; i += 10) {
      print('|');
    }
  }

  @override
  void fecharMenu() {
    print('Menu fechado');
  }

  @override
  void maisVolume() {
    this.volume = this.volume! + 10;
  }

  @override
  void menosVolume() {
    this.volume = this.volume! - 10;
  }

  @override
  void ligarMudo() {
    if (this.ligado == true && this.volume! > 0) {
      this.volume = 0;
    }
  }

  @override
  void desligarMudo() {
    if (this.ligado == true && this.volume! == 0) {
      this.volume = 50;
    }
  }

  @override
  void play() {
    if (this.ligado == true && this.tocando == false) {
      this.tocando = true;
    }
  }

  @override
  void pause() {
    if (this.ligado == true && this.tocando == true) {
      this.tocando = false;
    }
  }
}
