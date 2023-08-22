import 'luta.dart';
import 'lutador.dart';

void main(List<String> rgs) {
  final List<Lutador> listaLutador = [
    Lutador(nome: 'Pretty Boy', nacionalidade: 'França', idade: 31, altura: 1.75, peso: 68.9, vitorias: 11, derrotas: 2, empates: 1),
    Lutador(nome: 'PutScript', nacionalidade: 'Brasil', idade: 29, altura: 1.68, peso: 57.8, vitorias: 14, derrotas: 2, empates: 3),
    Lutador(nome: 'SnapShadow', nacionalidade: 'EUA', idade: 35, altura: 1.65, peso: 80.9, vitorias: 12, derrotas: 2, empates: 1),
    Lutador(nome: 'Dead Code', nacionalidade: 'Austrália', idade: 28, altura: 1.93, peso: 81.6, vitorias: 13, derrotas: 0, empates: 2),
    Lutador(nome: 'Nerdaard', nacionalidade: 'EUA', idade: 30, altura: 1.81, peso: 105.7, vitorias: 12, derrotas: 2, empates: 4),
  ];

  Luta novaLuta = Luta(); // linha de instânciamento, novaLuta é um objeto de luta.

  novaLuta.marcarLuta(l1: listaLutador[0], l2: listaLutador[1]);
  novaLuta.lutar();
  novaLuta.placar();
  print('====================================================================================================================');
  novaLuta.marcarLuta(l1: listaLutador[2], l2: listaLutador[4]); // Isso acontece porque seus pesos são muito diferentes, então sua categoria é diferente.
  
}
