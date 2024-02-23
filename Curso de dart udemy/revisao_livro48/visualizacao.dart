import 'gafanhoto.dart';
import 'video.dart';

class Visualizacao {
  Gafanhoto? _gafanhoto;
  Video? _video;

  Visualizacao({required Gafanhoto gafanhoto, required Video video}) {
    this.gafanhoto = gafanhoto;
    this.video = video;
    this.gafanhoto!.totAssistido = this.gafanhoto!.totAssistido! + 1;
    this.video!.views = this.video!.views! + 1;
  }

  Gafanhoto? get gafanhoto => this._gafanhoto;
  void set gafanhoto(Gafanhoto? gafanhoto) => this._gafanhoto = gafanhoto;
  Video? get video => this._video;
  void set video(Video? video) => this._video = video;

  void avaliar({int? nota, int? porct}) {
    int valor = 0;

    if (nota == null && porct == null) {
      valor = 5;
    } else if (nota != null && nota > 0 && porct == null) {
      valor = nota;
    } else if (nota == null && porct != null && porct > 0) {
      valor = porct;
    }

    this.video!.avaliacao = valor;
  }

  @override
  String toString() => '${this._gafanhoto} ${this._video}';
}
