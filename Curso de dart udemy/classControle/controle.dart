import 'interface_controle.dart';

class Controle  implements InterfaceControle {
  int? _volume;
  bool? _ligado;
  bool? _tocando;
  // constructor
  Controle() {
    this.volume = 50;
    this.ligado = false;
    this.tocado = false;
  }
  // get and set
  int? get volume => this._volume;

  void set volume(int? volume) {
    this._volume = volume;
  }

  bool? get ligado => this._ligado;

  void set ligado(bool? liagdo) {
    this._ligado = liagdo;
  }

  bool? get tocando => this._tocando;

  void set tocado(bool? tocando) {
    this._tocando = tocando;
  }

  // interface
 @override
  void ligar(){

  }
 
 @override
  void desligar(){

  }

@override
void abrirMenu(){

}
@override
void fecharMenu(){

}
@override
void maisVolume(){

}
@override
void menosVolume(){

}

@override
void ligarMudo(){

}

@override
void  desligarMudo(){

}

@override
void pay(){

}

@override

void pause(){

}


}
