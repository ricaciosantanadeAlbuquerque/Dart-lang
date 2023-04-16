import 'interface_publicacao.dart';
import 'pessoa.dart';

class Livro implements InterfacePublicacao {

  String _titulo;
  String _autor;
  int _totPagina;
  int _PagAtual = 0;
  bool _aberto = false;
  Pessoa _leitor;

  Livro(this._titulo, this._autor, this._totPagina, this._leitor) {
    this._aberto = false;
    this._PagAtual = 1;
  }

  // get and set ===================================================

  String get titulo => this._titulo;

  void set titulo(String titulo) {
    this._titulo = titulo;
  }

  String get autor => this._autor;

  void set autor(String autor) {
    this._autor = autor;
  }

  int get totPagina => this._totPagina;

  void set totPagina(int totPagina) {
    this._totPagina = totPagina;
  }

  int get pagAtual => this._PagAtual;

  void set pagAtual(int pagAtual) {
    this._PagAtual = pagAtual;
  }

  bool get aberto => this._aberto;

  void set aberto(bool aberto) {
    this._aberto = aberto;
  }

  Pessoa get leitor => this._leitor;

  void set leitor(Pessoa leitor) {
    this._leitor = leitor;
  }

// ============================ lista de serviçõs ========== intercafe==========================

  String detalhes() {
    return 'titulo: ${this.titulo}\n Autor: ${this.autor}\n ToPágina: ${this.totPagina}\n pagAtual ${this.pagAtual}\n Aberto: ${this.aberto}\n Leitor: ${this.leitor.nome},\n Idade: ${this.leitor.idade},\n Sexo: ${this.leitor.sexo}';
  }

  @override
  void abrir() {
    this.aberto = true;
  }

  @override
  void fechar() {
    this.aberto = false;
  }

  @override
  void folhear(int p) {
    if (p < this.totPagina) {
      this._PagAtual = p;
    } else {
      print("ERRO página não existe !");
    }
  }

  @override
  void avancarPag() {
    if (this.pagAtual < this.totPagina) {
      this.pagAtual = this.pagAtual + 1;
   
    }
  }

  @override
  void voltaPag() {
    if (this.pagAtual != 0) {
      this.pagAtual = this.pagAtual - 1;
    }
  }
}
