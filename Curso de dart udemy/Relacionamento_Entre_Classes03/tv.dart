import 'controle.dart';
import 'pessoa.dart';

class TV {
  Controle? _controle;
  Pessoa? _usuario;

  TV({required Pessoa? usuario, required Controle? controle}) {
    this._controle = (controle != null) ? controle : null;
    this._usuario = (usuario != null) ? usuario : null;
  }
  void sinal() {
    if (usuario != null && controle != null) {
      if (this._controle!.ligado == true) {
        if (this._usuario!.idade! < 12) {
          this._programacaoInfantil();
        } else if (this._usuario!.idade! <= 17) {
          this._programacaoJovens();
        } else {
          this._programacaoAdulto();
        }
      } else {
        print("ERRO! não pode ligar");
      }
    } else {
      print("ERRO FATAL !!");
    }
  }

  void _programacaoInfantil() {
    print("Bem vindo ${this._usuario!.nome}");
    print("");
    print("Assistindo desenhos !!!");
    print("");
  }

  void _programacaoAdulto() {
    print("Bem vindo ${this._usuario!.nome}");
    print("");
    print("Filmes para maiores de 18 anos");
    print("");
  }

  void _programacaoJovens() {
    print("Bem vindo ${this._usuario!.nome}");
    print("");
    print("Filmes para maiores de 14 anos ");
  }

  Controle? get controle => this._controle;

  void set ligado(Controle? controle) {
    this._controle = controle;
  }

  Pessoa? get usuario => this._usuario;

  void set usuario(Pessoa? usuario) {
    this._usuario = usuario;
  }
}
