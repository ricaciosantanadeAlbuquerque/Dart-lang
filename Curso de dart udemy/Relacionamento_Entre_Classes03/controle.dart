import 'interface_controle.dart';
import 'tv.dart';

class Controle implements InterfaceCotrole {
  TV? _tv;
  int? _volume;
  bool? _ligado;
  bool? _tocando;

  Controle() {
    this._volume = 50;
    this._ligado = false;
    this._tocando = false;
  }

  // get and set

  TV? get tv => this._tv;

  void set tv(TV? tv) => this._tv = tv;

  int? get volume => this._volume;

  void set volume(int? volume) => this._volume;

  bool? get ligado => this._ligado;

  void set ligado(bool? ligado) {
    this._tocando = tocando;
  }

  bool? get tocando => this._tocando;

  void set tocando(bool? tocando) => this._tocando = tocando;

// interface
  @override
  void ligar() {
    this.ligado = true;
  }

  @override
  void desligar() {
    if (this.ligado == true) {
      this.ligado = false;
    } else {
      print("ERRO!");
    }
  }

  @override
  void abrirMenu() {
    if (this.ligado == true) {
      print(this.toString());
    } else {
      print("Não pode ligar !");
    }
  }

  @override
  void fecharMenu() {
    if (this.ligado == true) {
      print("Menu fechado !");
    } else {
      print("ERRO! ao fechar o Menu !");
    }
  }

  @override
  void maisVolume() {
    if (this.ligado == true) {
      this.volume = this.volume! + 10;

      for (var i = 0; i < this.volume!; i += 10) {
        print('|');
      }
    } else {
      print("ERRO! de controle");
    }
  }

  @override
  void menosVolume() {
    if (this.ligado == true) {
      this.volume = this.volume! - 10;

      for (var i = 0; i < this.volume!; i += 10) {
        print('|');
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void ligarMudo() {
    if (this.ligado == true) {
      if (this.volume! > 0) {
        this.volume = 0;
      } else {
        print("ELE já está em ZERO!");
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void desligarMudo() {
    if (this.ligado == true) {
      if (this.volume == 0) {
        this.volume = 50;
      } else {
        print("ERRO!");
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void play() {
    if (this.ligado == true) {
      if (this.tocando == false) {
        this.tocando == true;
      } else {
        print("ERRO!");
      }
    } else {
      print("ERRO!");
    }
  }

  @override
  void pause() {
    if (this.ligado == true) {
      if (this.tocando == true) {
        this.tocando = false;
      }else{
        print("ERRO!");
      }
    }else{
       print("ERRO!");
    }
  }

  @override
  String toString() {
    return 'Ligado:${(this.ligado == true) ? 'sim' : 'nao'}, Volume:$_volume, Tocando:${(this._tocando == true) ? 'SIM' : 'NAO'}';
  }
}
