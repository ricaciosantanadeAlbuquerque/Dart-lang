import 'pessoa.dart';

class TV {
  bool? _ligado;
  Pessoa? _idade;
  void sinal() {
    if (this._ligado == true) {
      if (this.idade!.idade! < 12) {
        this.programacaoInfantil();
      } else if (this.idade!.idade! <= 17) {
        this.programacaoJovens();
      } else {
        this.programacaoAdulto();
      }
    } else {
      print("ERRO! não pode ligar");
    }
  }

  void programacaoInfantil() {
    print("");
    print("Assistindo desenhos !!!");
    print("");
  }

  void programacaoAdulto() {
    print("");
    print("Filmes para maiores de 18 anos");
    print("");
  }

  void programacaoJovens() {
    print("");
    print("Filmes para maiores de 14 anos ");
  }

  bool? get ligado => this._ligado;

  void set ligado(bool? legado) {
    this._ligado = ligado;
  }

  Pessoa? get idade => this._idade;

  void set idade(Pessoa? idade) {
    this._idade = idade;
  }
}
