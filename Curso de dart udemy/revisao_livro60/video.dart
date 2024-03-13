import 'interface_video.dart';

class Video implements InterfaceVideo {
  
  String? _titulo;
  double? _avaliacao;
  int? _view;
  int? _curtidas;
  bool? _reproduzindo;

  Video({required String titulo, double avaliacao = 0, int view = 0, int curtidas = 0, bool reproduzindo = false}) {
    this.titulo = titulo;
    this.avaliacao = avaliacao;
    this.view = view;
    this.curtidas = curtidas;
    this.reproduzindo = reproduzindo;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  double? get avaliacao => this._avaliacao;

  void set avaliacao(double? avaliacao) {
    this._avaliacao = avaliacao;
  }

  int? get view => this._view;

  void set view(int? view) {
    this._view = view;
  }

  int? get curtidas => this._curtidas;

  void set curtidas(int? curtidas) {
    this._curtidas = curtidas;
  }

  bool? get reproduzindo => this._reproduzindo;

  void set reproduzindo(bool? reproduzindo) {
    this._reproduzindo = reproduzindo;
  }
  // implementando IterfaceVideo

  @override
  void play() {
    this.reproduzindo = true;
  }

  @override
  void pause() {
    this.reproduzindo = false;
  }

  @override
  void like() {
    this.curtidas = this.curtidas! + 1;
  }

  @override
  String toString() {
    return ' Titulo:$_titulo, Avaliação:$_avaliacao, View:$_view, curtidas:$_curtidas, reproduzindo:$reproduzindo ';
  }
}
