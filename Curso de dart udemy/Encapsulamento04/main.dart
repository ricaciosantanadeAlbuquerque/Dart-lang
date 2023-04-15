import 'luta.dart';
import 'lutador.dart';

void main() {
  List<Lutador> lista = [
    Lutador.lutar(nome: "Lucas", nacionalidade: "Brasil", idade: 27, altura: 1.90, peso: 80.1, vitorias: 4, derrotas: 0, empates: 2),
    Lutador.lutar(nome: 'João', nacionalidade: "EUA", idade: 33, altura: 1.73, peso: 67, vitorias: 2, derrotas: 1, empates: 3),
    Lutador.lutar(nome: "ruan", nacionalidade: "Chile", idade: 22, altura: 1.77, peso: 70, vitorias: 3, derrotas: 2, empates: 4),
    Lutador.lutar(nome: 'Jordan', nacionalidade: 'iran', idade: 13, altura: 1.88, peso: 100, vitorias: 1, derrotas: 0, empates: 0)
  ];
  // ====================================================================================================================
  Luta luta = Luta();
  luta.marcaLuta(lista[2], lista[1]);
  luta.lutar();
  luta.desafiado!.status();
  print("");
  luta.desafiante!.status();
}
