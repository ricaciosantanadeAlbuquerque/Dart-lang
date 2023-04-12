import 'interface.dart';

class Controle implements Interface {
// atribultos =========================
  int? _volume;
  bool? _ligado;
  bool? _tocando;
//======== construtores =================
  Controle() {
    this._volume1 = 50;
    this._ligado1 = false;
    this._tocando1 = false;
  }
// get and set ------------------------------------------------
  int? get _volume1 => this._volume;

  void set _volume1(int? volume) {
    this._volume = volume;
  }

  bool? get _ligado1 => this._ligado;

  void set _ligado1(bool? ligado) {
    this._ligado = ligado;
  }

  bool? get _tocando1 => this._tocando;

  void set _tocando1(bool? tocando) {
    this._tocando = tocando;
  }

  // ----------- intercafe ---------------------
  @override
  void abrirMenu() {
    if (this._ligado1 == true) {
      print("Ligado: ${(this._ligado1 == true) ? 'Ligado' : 'Desligado'}");
      print("Tocando: ${(this._tocando1 == true) ? 'Sim' : 'Nao'}");
      print("Volume:");
      for (var i = 1; i <= this._volume1!; i += 10) {
        print('___');
      }
      print(this._volume1);
    }
  }

  @override
  void desligar() {
    if (this._ligado1 == true) {
      this._ligado1 = false;
    }
  }

  @override
  void desligarMudo() {
    if (this._ligado1 == true) {
      if (this._volume1 == 0) {
        this._volume1 = 50;
      }
    }
  }

  @override
  void fecharMenu() {
    print("Menu desligado com sucesso !");
  }

  @override
  void ligar() {
    if (this._ligado1 == false) {
      this._ligado1 = true;
    }
    this._tocando1 = true;
  }

  @override
  void ligarMudo() {
    if (this._ligado1 == true) {
      if (this._volume1! > 0) {
        this._volume1 = 0;
      }
    }
  }

  @override
  void maisVolume() {
    if (this._ligado1 == true) {
      if (this._tocando1 == true) {
        this._volume1 = this._volume1! + 1;
      }
    }
  }

  @override
  void menosVolume() {
    if (this._ligado1 == true) {
      if (this._tocando1 == true) {
        this._volume1 = this._volume1! - 1;
      }
    }
  }

  @override
  void pause() {
    if (this._ligado1 == true) {
      if (this._tocando1 == true) {
        this._tocando1 = false;
      }
    }
  }

  @override
  void play() {
    if (this._ligado1 == true) {
      if (this._tocando1 == false) {
        this._tocando1 = true;
      }
    }
  }
}
