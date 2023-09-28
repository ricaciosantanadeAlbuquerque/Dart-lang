import 'acoes_video.dart';

class Video implements AcoesVideo {
  // atributo
  String? _titulo;
  int? _avaliacao;
  int? _views;
  int? _curtidas;
  bool? _reproduzindo;

// construtor
  Video({required String title}) {
    this.titulo = title;
    this.avaliacao = 1;
    this.curtidas = 0;
    this.view = 0;
    this.reproduzir = false;
  }

// get and set

  String? get titulo => this._titulo;

  void set titulo(String? titulo) => this._titulo = titulo;

  int? get avaliacao => this._avaliacao;

  void set avaliacao(int? avaliacao) => this._avaliacao = avaliacao;

  int? get view => this._views;

  void set view(int? view) => this._views = view;

  int? get curtidas => this._curtidas;

  void set curtidas(int? curtidas) => this._curtidas = curtidas;

  bool? get reproduzir => this._reproduzindo;

  void set reproduzir(bool? reproduzir) => this._reproduzindo = reproduzir;

  // interface
  @override
  void play() {
    this.reproduzir = true;
  }

  @override
  void pause() {
    this._reproduzindo = false;
  }

  @override
  void like() {
    this.curtidas = this.curtidas! + 1;
  }

  @override
  String toString() {
    return 'Vídeos: Title:$_titulo, Avaliação $_avaliacao  Visualização:$_views Curtidas: $_curtidas, Reproduzindo $_reproduzindo';
  }
}
