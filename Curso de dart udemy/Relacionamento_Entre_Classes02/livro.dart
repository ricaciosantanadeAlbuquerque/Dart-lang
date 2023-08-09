import 'pessoa.dart';

class Livro {
  String? _titulo;
  String? _autor;
  int? _totPagina;
  int? _pagAtual;
  bool? _aberto;
  Pessoa? _leitor;

  Livro({required String? titulo, required String? autor, required totPagina, required int? pagAtual, required bool? aberto, required Pessoa? leitor}) {
    this._titulo = (titulo != null) ? titulo : 'indefinido';
    this._autor = (autor != null) ? autor : 'indefinido';
    this._totPagina = (totPagina != null) ? totPagina : 400;
    this._pagAtual = (pagAtual != null) ? pagAtual : 0;
    this._aberto = (aberto != null) ? aberto : false;
    this._leitor = (leitor != null) ? leitor : null;
  }

  // get and set

  String? get titulo => this._titulo;

  void set titulo(String? titulo) {
    this._titulo = titulo;
  }

  String? get autor => this._autor;

  void set autor(String? autor) {
    this._autor = autor;
  }

  int? get totPagina => this._totPagina;

  void set totPagina(int? totPagina) {
    this._totPagina = totPagina;
  }

  int? get pagAtual => this._pagAtual;

  void set pagAtual(int? pagAtual) {
    this._pagAtual = pagAtual;
  }

  bool? get aberto => this._aberto;

  void set aberto(bool? aberto) {
    this._aberto = aberto;
  }

  Pessoa? get leitor => this._leitor;

  void set leitor(Pessoa? leitor) {
    this._leitor = leitor;
  }

  void detalhes() {
    this.toString();
  }

  @override
  String toString() {
    return 'Titulo:$titulo, Autor:$_autor, TotPaginas:$_totPagina, Página Atual:$_pagAtual,\n' + 'Livro Aberto:$_aberto, Leitor: $_leitor';
  }
}
