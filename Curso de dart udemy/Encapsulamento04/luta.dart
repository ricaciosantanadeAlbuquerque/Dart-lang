import 'dart:math';

import 'lutador.dart';

class Luta {
  Lutador? desafiado;
  Lutador? desafiante;
  int? rounds;
  bool? aprovada;

  void marcaLuta(Lutador l1, Lutador l2) {
    if (l1.categoria == l2.categoria) {
      if (l1 != l2) {
        aprovada = true;
        desafiado = l1;
        desafiante = l2;
        print('Luta marcada !');
      } else {
        print("Não pode lutar !");
        aprovada = false;
        desafiado = null;
        desafiante = null;
      }
    } else {
      print("Não é possível Lutar !!! ");
    }
  }

  void lutar() {
    if (this.aprovada == true) {
      this.desafiado!.apresentar();
      this.desafiante!.apresentar();
      var vencedor = Random().nextInt(3);

      switch (vencedor) {
        case 0:
          print("Empatou\n");
          this.desafiado!.empatarLuta();
          this.desafiante!.empatarLuta();
          break;
        case 1:
          print("${this.desafiado!.nome}\n");
          this.desafiado!.ganharLuta();
          this.desafiante!.perderLuta();
          break;
        case 2:
          print("${this.desafiante!.nome}\n");
          this.desafiante!.ganharLuta();
          this.desafiado!.perderLuta();
          break;
      }
    } else {
      print("Não pode lutar !!! ");
    }
  }
}
