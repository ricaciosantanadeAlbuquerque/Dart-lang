import 'dart:math';

import '../classConta/interfaceConta.dart';
import 'interface_luta.dart';
import 'lutador.dart';

class Luta implements InterfaceLuta {
  Lutador? _desafiado;
  Lutador? _desafiante;
  int? _rounds;
  bool? _aprovada;

  // get and set

  Lutador? get _getDesafiado => this._desafiado;

  void set _setDesafido(Lutador? desafiado) {
    this._desafiado = desafiado;
  }

  Lutador? get _getDesafiante => this._desafiante;

  void set _setDesafiante(Lutador? desafiante) {
    this._desafiante = desafiante;
  }

  int? get _getRounds => this._rounds;

  void set _setRounds(int? rounds) {
    this._rounds = rounds;
  }

  bool? get _getAprovada => this._aprovada;

  void set _setAprovada(bool? aprovada) {
    this._aprovada = aprovada;
  }

  // Interface ==================================================
  @override
  void marcarLuta(Lutador l1, Lutador l2) {
    if (l1.getCategoria == l2.getCategoria && l1 != l2) {
      this._setDesafido = l1;
      this._setDesafiante = l2;
      this._setAprovada = true;
      print("Luta aprovada !");
    } else {
      print("Não podem lutar");
      this._aprovada = false;
      this._desafiante = null;
      this._desafiado = null;
    }
  }

  @override
  void lutar() {
    if (this._aprovada == true) {
      this._desafiado!.apresentar();
      //print(this._desafiado);
      this._desafiante!.apresentar();
      //print(this._desafiante);

      var vencedor = Random().nextInt(3); // 0 a 2
     // print(vencedor);

      switch (vencedor) {
        case 0:
          print("Empatou!");
          this._desafiado!.empatarLuta();
          this._desafiante!.empatarLuta();
          break;
        case 1:
          print("${this._desafiado!.getNome}");
          this._desafiado!.ganharLuta();
          this._desafiante!.perderLuta();
          break;
        case 2:
          print("${this._desafiante!.getNome}");
          this._desafiante!.ganharLuta();
          this._desafiado!.perderLuta();
          break;
      }
    } else {
      print("Luta não pode acontecer");
    }
  }
}
