import 'gafanhoto.dart';
import 'video.dart';

class Visualizacao {
  Gafanhoto? _espectador;
  Video? _filme;

  Visualizacao(Gafanhoto gafanhoto, Video filme) {
    this.espectador = gafanhoto;
    this.filme = filme;
    this._espectador!.viuMaisUm();
    this._filme!.view = this._filme!.view! + 1;
  }

  get espectador => this._espectador;

  set espectador(value) => this._espectador = value;

  get filme => this._filme;

  set filme(value) => this._filme = value;

  void avaliar({int? nota, double? porcentagem}) {
    if (nota == null && porcentagem == null) {
      this._filme!.avaliacao = 5;
    }

    if (nota != null && nota.isNaN == false) {
      this._filme!.avaliacao = nota;
    }

    if (porcentagem != null && porcentagem.isNaN == false) {
      double tot = 0;

      if (porcentagem <= 20) {
        tot = 3;
      } else if (porcentagem <= 50) {
        tot = 5;
      } else if (porcentagem <= 80) {
        tot = 8;
      } else {
        tot = 10;
      }

      this._filme!.avaliacao = tot;
    }
  }

  String toString() {
    return this._espectador.toString() + ' ' + this._filme.toString();
  }
}
