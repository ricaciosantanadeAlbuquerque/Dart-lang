import 'gafanhoto.dart';
import 'pessoa.dart';
import 'video.dart';
import 'visualizacao.dart';

void main() {
  //Pessoa1 pessoa = new Pessoa1();  classes abstratas não podem ser instânciadas.
  List<Gafanhoto1> listaGafanho = [
    Gafanhoto1(nome: 'Lucas', idade: 19, sexo: 'H'),
    Gafanhoto1(nome: 'Ana', idade: 34, sexo: 'F'),
  ];

  List<Video1> listaVideo = [
    Video1(titulo: 'Aula 1 POO'),
    Video1(titulo: 'Aula 2 de PHP'),
    Video1(titulo: 'Aula 10 de HTML5'),
  ];

  var visualiazar = Visualizacao(gafanhoto: listaGafanho[0], filme: listaVideo[0]);

  print(visualiazar.toString());

  var visualiazar1 = Visualizacao(gafanhoto: listaGafanho[0], filme: listaVideo[0]);

  print(visualiazar1.toString());

  visualiazar1.avaliacao();

  visualiazar1.filme!.play();

  print(visualiazar1.toString());

  visualiazar1.avaliacao(nota: 10);
  print('');
  print(visualiazar1.toString());
  visualiazar1.avaliacao(porcentagem: 50);
  print('');
  print(visualiazar1.toString());
  visualiazar1.filme!.like();
  print('');
  print(visualiazar1.toString());
  visualiazar1.espectador!.ganharExp();
  print('');
  print(visualiazar1.toString());
}
