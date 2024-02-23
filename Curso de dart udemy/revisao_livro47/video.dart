import 'interface_acoes_video.dart';

class Video implements AcoesVideo {
  String? _titulo;
  int? _avaliacao;
  int? _views;
  int? _curtidas;
  bool? _reproduzir;

  Video(this._titulo) {
    this.avaliacao = 1;
    this.views = 0;
    this.curtidas = 0;
    this.reproduzir = false;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) => this._titulo = titulo;

  int? get avaliacao => this._avaliacao;

  void set avaliacao(int? avaliacao) {
    this._avaliacao = avaliacao;
  }

  int? get views => this._views;

  void set views(int? views) => this._views = views;

  int? get curtidas => this._curtidas;

  void set curtidas(int? curtidas) => this._curtidas = curtidas;

  bool? get reproduzir => this._reproduzir;

  void set reproduzir(bool? reproduzir) => this._reproduzir = reproduzir;

  // interface ===========================

  @override
  void play() {
    this.reproduzir = true;
  }

  @override
  void pause() {
    this.reproduzir = false;
  }

  @override
  void like() {
    this.curtidas = this.curtidas! + 1;
  }

  @override
  String toString() {
    return 'Título:$titulo, Avaliação:$avaliacao, Visualização: $views, Curtidas:$curtidas, reproduzindo:$reproduzir';
  }
}
