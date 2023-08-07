import 'luta.dart';
import 'lutador.dart';

void main() {
  final List<Lutador> listLuta = [
    Lutador(nome: 'Pretty boy', nacionalidade: 'França', idade: 31, altura: 1.75, peso: 68.9, vitoria: 11, derrota: 2, empates: 1),
    Lutador(nome: 'Putscript', nacionalidade: 'Brasil', idade: 29, altura: 1.68, peso: 57.8, vitoria: 14, derrota: 2, empates: 3),
    Lutador(nome: 'SnapShadow', nacionalidade: 'EUA', idade: 35, altura: 1.65, peso: 80.9, vitoria: 12, derrota: 2, empates: 1),
    Lutador(nome: 'Dead Code', nacionalidade: 'Austrália', idade: 28, altura: 1.93, peso: 81.6, vitoria: 13, derrota: 0, empates: 2),
    Lutador(nome: 'UfoCobol', nacionalidade: 'Brasil', idade: 37, altura: 1.70, peso: 119.3, vitoria: 5, derrota: 4, empates: 3),
    Lutador(nome: 'Nerdaard', nacionalidade: 'EUA', idade: 30, altura: 1.81, peso: 105.7, vitoria: 12, derrota: 2, empates: 4),
  ];

  Luta novaLuta = Luta();

  novaLuta.marcarLuta(listLuta[0], listLuta[1]);
  novaLuta.lutar();

  novaLuta.marcarLuta(listLuta[0], listLuta[1]);
  novaLuta.lutar();

  novaLuta.marcarLuta(listLuta[0], listLuta[1]);
  novaLuta.lutar();

  novaLuta.marcarLuta(listLuta[0], listLuta[1]);
  novaLuta.lutar();
  print('');
  listLuta[0].status();
  print('\n');
  listLuta[1].status();
}
