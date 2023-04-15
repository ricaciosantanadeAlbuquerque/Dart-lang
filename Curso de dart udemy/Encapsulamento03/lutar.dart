import 'dart:math';

import 'lutador.dart';

class Luta {
  Lutador? _desafiado;
  Lutador? _desafiante;
  int? _rounds;
  bool? _aprovado;

  void marcaLuta(Lutador l1, Lutador l2) {
    if (l1.categoria == l2.categoria) {
      if (l1 != l2) {
        this.aprovado = true;
        this.desafiado = l1;
        this.desafiante = l2;
        print("Luta aprovada !");
      } else {
        this.aprovado = false;
        this.desafiado = null;
        this.desafiante = null;
        print("ERRO o lutador não pode lutar com ele mesmo ");
      }
    } else {
      print("Não podem lutar!");
      print("Categorias Inválidas");
    }
  }

  void lutar() {
    if (this.aprovado == true) {
      this.desafiado!.apresentar();
      this.desafiante!.apresentar();
      var vencedor = Random().nextInt(3);

      switch (vencedor) {
        case 0:
          print("===================EMPATOU!!========================");
          this._desafiado!.empatarLuta();
          this._desafiante!.empatarLuta();
          break;
        case 1:
          print("=====================Desafiado vence=================");
          print(this.desafiado!.nome);
          this._desafiado!.ganharLuta();
          this._desafiante!.perderLuta();
          break;
        case 2:
          print("======================Desafiante vence==================");
          print("${this.desafiante!.nome}");
          this._desafiante!.ganharLuta();
          this._desafiado!.perderLuta();
      }
    } else {
      print("Luta não pode o correr !");
    }
  }

  Lutador? get desafiado => this._desafiado;

  void set desafiado(Lutador? desafiado) {
    this._desafiado = desafiado;
  }

  Lutador? get desafiante => this._desafiante;

  void set desafiante(Lutador? desafiante) {
    this._desafiante = desafiante;
  }

  int? get rounds => this._rounds;

  void set rounds(int? rounds) {
    this._rounds = rounds;
  }

  bool? get aprovado => this._aprovado;

  void set aprovado(bool? aprovado) {
    this._aprovado = aprovado;
  }
}
