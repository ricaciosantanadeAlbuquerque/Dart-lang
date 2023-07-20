import 'dart:math';

import 'interface.dart';

class Produto implements Dao {
  int? _numero;
  String? _descricao;

  Produto(this._numero, this._descricao) {
    this._descricao = (this._descricao != null) ? _descricao : 'indefinido';
    this._numero = (this._numero == null) ? Random().nextInt(10 + 1) : this._numero;
  }

  void baixar() {
    print("Baixando produto !!!");
  }

// get and set
  int? get numero => this._numero;

  void set numero(int? numero) {
    if (numero == null) {
      this._numero = 0;
    } else {
      this._numero = numero;
    }
  }

  String? get descricao => this._descricao;

  void set descricao(String? descricao) {
    if (descricao == null) {
      this._descricao = 'indefinido';
    } else {
      this._descricao = descricao;
    }
  }

// interface ================
  @override
  void inserir() {
    print("Inserindo produto!");
  }

  @override
  void excluir() {
    print("Excluindo produto !");
    this.descricao = null;
    this.numero = null;
    print("Numero Produto: $numero, Descrição $descricao");
  }

  @override
  void localizar() {
    print(toString());
  }

  @override
  String toString() => 'Numero:$numero, Descrição:$_descricao ';
}
