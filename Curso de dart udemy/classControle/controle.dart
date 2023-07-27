import 'interface_controle.dart';

class Controle implements InterfaceControle {
  int? _volume;
  bool? _ligado;
  bool? _tocando;
  // constructor

  Controle() {
    this._volume1 = 50;
    this._ligado1 = false;
    this._tocando1 = false;
  }

  // get and set
  int? get _volume1 => this._volume;

  void set _volume1(int? volume) {
    this._volume = volume;
  }

  bool? get _ligado1 => this._ligado;

  void set _ligado1(bool? liagdo) {
    this._ligado = liagdo;
  }

  bool? get _tocando1 => this._tocando;

  void set _tocando1(bool? tocando) {
    this._tocando = tocando;
  }

  // interface
  @override
  void ligar() {
    this._ligado1 = true;
    this._tocando1 = true;
  }

  @override
  void desligar() {
    this._ligado1 = false;
  }

  @override
  void abrirMenu() {
    if (this._ligado1 == true) {
      // se ligado ?

      print(this._volume1); // então moste o volume
      for (var i = 0; i < this._volume1!; i += 10) {
        print("|");
      }
    } else {
      print("ERRO! não é possível mostrar o menu !");
    }
  }

  @override
  void fecharMenu() {
    if (this._ligado1 == true) {
      print("Menu Encerrado! ");
    } else {
      print("ERRO! não é possível mostrar o menu !");
    }
  }

  @override
  void maisVolume() {
    if (this._ligado1 == true) {
      this._volume1 = this._volume1! + 10;
    } else {
      print("Erro!");
    }
  }

  @override
  void menosVolume() {
    if (this._ligado1 == true) {
      // se ligado !

      this._volume1 = this._volume1! - 10;

    } else {
      print("ERRO!");
    }
  }

  @override
  void ligarMudo() {
    if (this._ligado == true) {
      // se ligado
      if (this._volume1! > 0) {
        // ee o volume e maior que zero
        this._volume1 = 0; // colocar para mudo
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void desligarMudo() {
    if (this._ligado == true) {
      if (this._volume1 == 0) {
        this._volume1 = 50;
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void pay() {
    if (this._ligado == true && this._tocando1 == false) {
      this._tocando1 = true; // tocando
    } else {
      print("ERRO!");
    }
  }

  @override
  void pause() {
    if (this._ligado == true && this._tocando1! == true) {
      this._tocando1 = false; // não tocando
    } else {
      print("ERRO!");
    }
  }

  @override
  String toString() {
    return 'Volume:$_volume1, Tocando: $_tocando1, Ligado: $_ligado1';
  }
}
