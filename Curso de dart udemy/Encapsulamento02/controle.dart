import '../Encapsulamento01/interface.dart';

class Controle implements Interface {
  int? _volume;
  bool? _liagdo;
  bool? _tocando;

  Controle() {
    this._volume1 = 50;
    this._ligado1 = false;
    this._tocando1 = false;
  }

  int? get _volume1 => this._volume;

  void set _volume1(int? volume) {
    this._volume = volume;
  }

  bool? get _ligado1 => this._liagdo;

  void set _ligado1(bool? ligado) {
    this._liagdo = ligado;
  }

  bool? get _tocando1 => this._tocando;

  void set _tocando1(bool? tocando) {
    this._tocando = tocando;
  }

  // interface lista de serviços

  @override
  void ligar() {
    this._ligado1 = true;
    this._tocando = true;
  }

  @override
  void desligar() {
    this._ligado1 = false;
    this._tocando1 = false;
    this._volume1 = 0;
  }

  @override
  void abrirMenu() {
    print("Ligado: ${(this._ligado1 == true) ? 'Sim' : 'Não'}");
    print("Tocando: ${(this._tocando == true) ? 'Sim' : 'Não'}");
    print("Volume:${this._volume1}");
    for (var i = 0; i < this._volume1!; i += 10) {
      print('---');
    }
  }

  @override
  void fecharMenu() {
    print(" Menu fechado ! ");
  }

  @override
  void maisVolume() {
    if (this._ligado1 == true) {
      this._volume1 = this._volume1! + 1;
    }
  }

  @override
  void menosVolume() {
    if (this._ligado1 == true) {
      this._volume1 = this._volume1! - 1;
    }
  }

  @override
  void ligarMudo() {
    if (this._ligado1 == true) {
      this._volume1 = 0;
    }
  }

  @override
  void desligarMudo() {
    if (this._ligado1 == true) {
      this._volume1 = 50;
    }
  }

  @override
  void play() {
    if (this._ligado1 == true && this._tocando1 == false) {
      this._tocando1 = true;
    }
  }

  @override
  void pause() {
    if (this._ligado1 == true && this._tocando1 == true) {
      this._tocando1 = false;
    }
  }
}
