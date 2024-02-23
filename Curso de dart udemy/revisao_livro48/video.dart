import 'interface_Video.dart';

class Video implements InterfaceVideo {
  String? _titulo;
  int? _avaliacao;
  int? _views;
  int? _curtidas;
  bool? _reproduzindo;

  Video({required String titulo}) {
    this._titulo = titulo;
    this.avaliacao = 1;
    this.views = 0;
    this.curtidas = 0;
    this.reproduzindo = false;
  }

  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  int? get avaliacao => this._avaliacao;

  void set avaliacao(int? avaliacao) {
    this._avaliacao = avaliacao;
  }

  int? get views => this._views;

  void set views(int? view) {
    this._views = view;
  }

  int? get curtidas => this._curtidas;

  void set curtidas(int? curtidas) {
    this._curtidas = curtidas;
  }

  bool? get reproduzindo => this._reproduzindo;

  void set reproduzindo(bool? reproduzindo) {
    this._reproduzindo = reproduzindo;
  }

  // implementando a Interface

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
  String toString() => ' Título:$titulo, Avaliação:$avaliacao, Visualização:$views Curtidas:$curtidas, Reproduzindo:$reproduzindo ';
}
