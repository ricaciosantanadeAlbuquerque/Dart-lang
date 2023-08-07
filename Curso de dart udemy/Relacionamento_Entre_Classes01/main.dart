import 'luta.dart';
import 'lutador.dart';

void main() {
  List<Lutador1> lista = [
    Lutador1(nome: 'Lucas', nacionalidade: 'Brasil', idade: 27, altura: 1.80, peso: 80, vitoria: 2, empate: 3, derrota: 3),
    Lutador1(nome: 'Ricacio', nacionalidade: 'Brasil', idade: 30, altura: 1.70, peso: 64, vitoria: 3, empate: 2, derrota: 4),
    Lutador1(nome: 'Nino', nacionalidade: 'EUA', idade: 30, altura: 1.75, peso: 79, vitoria: 5, empate: 0, derrota: 0),
    Lutador1(nome: 'José', nacionalidade: 'índia', idade: 22, altura: 1.89, peso: 90, vitoria: 6, empate: 3, derrota: 1),
    Lutador1(nome: 'Michael', nacionalidade: 'França', idade: 24, altura: 1.79, peso: 120, vitoria: 1, empate: 1, derrota: 1)
  ];

  Luta1 novaLuta = Luta1();

  // novaLuta.marcaLuta(l1: lista[0], l2: lista[1]); não podem  lutar pois não possuem o mesmo peso
  print('\n');
  //novaLuta.lutar();
  print('\n');
  novaLuta.marcaLuta(l1: lista[2], l2: lista[0]);
  novaLuta.lutar();
  lista[0].status();
  print("");
  lista[2].status();

  print("\n");
}
