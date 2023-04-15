import 'lutador.dart';
import 'lutar.dart';

void main() {
  List<Lutador> lista = [
    Lutador("Pretty boy", "França", 31, 1.75, 68.9, "leve", 11, 2, 1),
    Lutador('Putscript', 'Brasil', 29, 1.68, 57.8, 'leve', 14, 2, 3),
    Lutador('Dead code', 'Austrália', 28, 1.93, 81.6, 'Médio', 13, 0, 2),
  ];
  print("====================================================");

  Luta luta = Luta();

  luta.marcaLuta(lista[0], lista[1]);
  luta.lutar();
  print("");
  luta.desafiado!.status();
  print("");
  luta.desafiante!.status();
  print("====================+++++++++++++++++=================================");

  luta.marcaLuta(lista[0], lista[2]);
  luta.lutar();
}
