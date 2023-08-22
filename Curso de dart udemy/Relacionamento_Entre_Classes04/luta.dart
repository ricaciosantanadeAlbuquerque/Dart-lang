import 'dart:math';

import 'lutador.dart';

class Luta {
  Lutador? _desafiado;
  Lutador? _desafiante;
  bool? _aprovado;

  void marcarLuta({required Lutador? l1, required Lutador? l2}) {
    if (l1 != null && l2 != null) {
      if (l1.categoria == l2.categoria && l1 != l2) {
        print("LUTA APROVADA !");
        print("");
        this._aprovado = true;
        this._desafiado = l1;
        this._desafiante = l2;
      } else {
        print("Não pode haver luta.");
        this._aprovado = false;
        this._desafiado = null;
        this._desafiante = null;
      }
    } else {
      print("Erro! Objetos nulos.");
    }
  }

  void lutar() {
    if (this._aprovado == true) {
      this._desafiado!.apresentar();
      print("");
      this._desafiante!.apresentar();
      print("");
      var vencedor = Random().nextInt(3); // 0 a 2

      switch (vencedor) {
        case 0:
          print("Empatou!");
          print("");
          this._desafiado!.empatarLuta();
          this._desafiante!.empatarLuta();
          break;
        case 1:
          print("${this._desafiado!.nome} Ganhou a luta !");
          print("");
          this._desafiado!.ganharLuta();
          this._desafiante!.perderLuta();
          break;
        case 2:
          print("${this._desafiante!.nome} Ganhou a luta !");
          print("");
          this._desafiante!.ganharLuta();
          this._desafiado!.perderLuta();
          break;
      }
    }
  }

  void placar() {
    print("|==========================PLACAR==========================|");
    this._desafiado!.status();
    print("");
    this._desafiante!.status();
  }
}
