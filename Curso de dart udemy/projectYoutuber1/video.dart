import 'acoes_video.dart';

class Video1 implements AcoesVideo1 {
// atributos ==============================================================
  String? _titulo;
  int? _avaliacao;
  int? _views;
  int? _curtidas;
  bool? _reproduzindo;
// construtor ==============================================================
  Video1({required String titulo}) {
    this._titulo = titulo;
    this._avaliacao = 1;
    this._views = 0;
    this._curtidas = 0;
    this._reproduzindo = false;
  }
// get and set =============================================================
  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  int? get avaliacao => this._avaliacao;

  void set avaliacao(int? avaliacao) {
    this._avaliacao = avaliacao;
  }

  int? get views => this._views;

  void set viwes(int? views) {
    this._views = views;
  }

  int? get curtidas => this._curtidas;

  void set curtidas(int? curtidas) {
    this._curtidas = curtidas;
  }

  bool? get reproduzindo => this._reproduzindo;

  void set reproduzindo(bool? value) {
    this._reproduzindo = value;
  }

// interface==============================================================
  @override
  void play() {
    this.reproduzindo = true;
  }

  @override
  void pausa() {
    this.reproduzindo = false;
  }

  @override // polimorfismo de sobreposição obrigatória já que este método é da interface
  void like() {
    this.curtidas = this.curtidas! + 1;
  }

  @override // polimorfismo de sobreposição
  String toString() {
    return 'Vídeo (Título:$_titulo, Avaliação:$_avaliacao, Visualização:$_views, Curtidas: $_curtidas, Reproduzindo:$_reproduzindo )';
  }
}
