import 'gafanhoto.dart';
import 'video.dart';
import 'visualizacao.dart';

void main() {
  List<Video> listaVideo = [
    Video(title: 'Aula 1 de POO'),
    Video(title: 'Aula 12 PHP'),
    Video(title: 'Aula 10 HTML5'),
  ];

  print(listaVideo[0].titulo);

  List<Gafanhoto> listaGafanhoto = [Gafanhoto('Ana', 34, 'F', 'ana123'), Gafanhoto('Lucas', 26, 'M', 'lucas12')];

 /**
  *  print(Visualizacao(listaGafanhoto[0], listaVideo[0]).toString());
  print('');
  print(Visualizacao(listaGafanhoto[0], listaVideo[1]).toString());
  print('');
  print(Visualizacao(listaGafanhoto[1], listaVideo[0]).toString());
  print('');
  print(Visualizacao(listaGafanhoto[1], listaVideo[1]).toString());
  */

  var visualizacao = new Visualizacao(listaGafanhoto[0], listaVideo[0]);
}
