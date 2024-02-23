import 'gafanhoto.dart';
import 'video.dart';

class Visualizacao {
  Gafanhoto? _espectador;
  Video? _filme;

  Visualizacao({required Gafanhoto espectador, required Video filme}) {
    this.espectador = espectador;
    this.filme = filme;
    this.espectador!.totAssistido = this.espectador!.totAssistido! + 1;
    this.filme!.views = this.filme!.views + 1;
  }

  Gafanhoto? get espectador => this._espectador;

  void set espectador(Gafanhoto? espectador) => this._espectador = espectador;

  Video? get filme => this._filme;

  void set filme(Video? filme) => this._filme = filme;

  @override
  String toString() => '${this.espectador}  ${this.filme}';

  void avaliar({int? nota, int? porct}) {
    int totNota = 0;

    if (nota == null && porct == null) {
      totNota = 5;
    } else if (nota != null && nota > 0 && porct == null) {
      totNota = nota;
    } else if (nota == null && porct != null && porct > 0) {
      totNota = porct;
    }

    this.filme!.avaliacao = totNota;
  }
}
