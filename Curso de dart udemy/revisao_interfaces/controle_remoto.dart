import 'interface_controlador.dart';

class ControleRemoto implements InterfaceControle {
  int? _volume;
  bool? _ligado;
  bool? _tocando;

  ControleRemoto() {
    this._setVolume = 50;
    this._setLigado = false;
    this._setTocando = false;
  }

  int? get _getVolume => this._volume;

  void set _setVolume(int? volume) {
    this._volume = volume;
  }

  bool? get _getLigado => this._ligado;

  void set _setLigado(bool? ligado) {
    this._ligado = ligado;
  }

  bool? get _getTocando => this._tocando;

  void set _setTocando(bool? tocando) {
    this._tocando = tocando;
  }

// interface =================================================================================

  @override
  void ligar() {
    this._setLigado = true;
    this._setTocando = true;
  }

  @override
  void desligar() {
    if (this._getLigado == true) {
      this._ligado = false;
    }
  }

  @override
  void abrirMenu() {
    if (this._getLigado == true) {
      print('Ligado:${this._getLigado == true ? 'sim' : 'Não'}');
      print('Tocando:${this._getTocando == true ? 'sim' : 'não'}');

      for (int i = 0; i < _getVolume!; i += 10) {
        print('|');
      }
    }
  }

  @override
  void fecharMenu() {
    if (this._getLigado == true) {
      print('fechendo Menu');
    }
  }

  @override
  void maisVolume() {
    if (this._getLigado == true) {
      this._setVolume = this._getVolume! + 10;
    }
  }

  @override
  void menosVolume() {
    if (this._getLigado == true) {
      this._setVolume = this._getVolume! - 10;
    }
  }

  @override
  void ligarMudo() {
    if (this._getLigado == true && this._getVolume! > 0) {
      this._setVolume = 0;
    }
  }

  @override
  void desligarMudo() {
    if (this._getLigado == true && this._getVolume == 0) {
      this._setVolume = 50;
    }
  }

  @override
  void play() {
    if (this._getLigado == true && this._getTocando == false) {
      this._setTocando = true;
    }
  }

  @override
  void pause() {
    if (this._getLigado == true && this._getTocando == true) {
      this._setTocando = false;
    }
  }
}
