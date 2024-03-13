import 'gafanhoto.dart';
import 'video.dart';

class Visualizacao {
  Video? _video;
  Gafanhoto? _gafanhoto;

  Visualizacao({required Video video, required Gafanhoto gafanhoto}) {
    this.adicionarGafanhoto(gafanhoto);
    this.adicionarVideo(video);
    this.video!.view = this.video!.view! + 1;
    this.gafanhoto!.viuMaisUm();
    this.gafanhoto!.ganharExperiencia();
    this.video!.play();
  }

  Video? get video => this._video;

  void set video(Video? video) {
    this._video = video;
  }

  Gafanhoto? get gafanhoto => this._gafanhoto;

  void set gafanhoto(Gafanhoto? gafanhoto) {
    this._gafanhoto = gafanhoto;
  }

  void avaliar({double? nota, double? porc}) {
    var resultado;

    if (nota == null && porc == null) {
      resultado = 5;
    } else if (nota != null && nota > 0 && porc == null) {
      resultado = nota;
    } else if (porc != null && porc > 0 && nota == null) {
      resultado = porc;
    }

    this.video!.avaliacao = resultado;
  }

  void adicionarVideo(Video video) {
    this.video = video;
  }

  void excluirVideo() {
    this.video = null;
  }

  void adicionarGafanhoto(Gafanhoto gafanhoto) {
    this.gafanhoto = gafanhoto;
  }

  void excluirGafanhoto() {
    this.gafanhoto = null;
  }

  @override
  String toString() => ' Vídeo:${this.video.toString()}, Espectador:${this.gafanhoto.toString()} ';
}
