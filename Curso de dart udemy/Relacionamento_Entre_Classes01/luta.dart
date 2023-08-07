import 'dart:math';

import 'interface_luta.dart';
import 'lutador.dart';

class Luta1 implements InterfaceLuta {
  Lutador1? _desafiado;
  Lutador1? _desafiante;
  int? _rounds;
  bool? _aprovado;

  Lutador1? get desafiado => this._desafiado;

  void set desafiado(Lutador1? desafiado) {
    this._desafiado = desafiado;
  }

  Lutador1? get desafiante => this._desafiante;

  void set desafiante(Lutador1? desafiante) {
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

  @override
  void marcaLuta({required Lutador1 l1, required Lutador1 l2}) {
    if (l1.categoria == l2.categoria && l1 != l2) {
      print("Luta aprovada!");
      this._aprovado = true;
      this._desafiado = l1;
      this._desafiante = l2;
    } else {
      print('Esta luta não pode Ocorrer !');
      this._aprovado = false;
      this._desafiado = null;
      this._desafiante = null;
    }
  }

  @override
  void lutar() {
    if (this._aprovado == true) {
      this._desafiado!.apresentar();
      this._desafiante!.apresentar();

      var vencedor = Random().nextInt(3);
      print(vencedor);
      switch (vencedor) {
        case 0:
          print("Empatou !");
          this._desafiado!.empatarLuta();
          this._desafiante!.empatarLuta();
          break;
        case 1:
          print('${this._desafiado!.nome} Ganhou a Luta');
          print('');
          this._desafiado!.ganharLuta();
          this._desafiante!.perderLuta();
          break;
        case 2:
          print('${this._desafiante!.nome} Ganhou a Luta');
          print('');
          this._desafiante!.ganharLuta();
          this._desafiado!.perderLuta();
          break;
      }
    } else {
      print('ERRO! Luta não aprovada !');
    }
  }
}
