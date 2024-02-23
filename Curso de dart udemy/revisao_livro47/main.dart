import 'gafanhoto.dart';
import 'video.dart';
import 'visualizacao.dart';

void main() {
  List<Video> listaVideo = [
    Video('Aula 1 de POO'),
    Video('Aula 12 de PHP'),
    Video('Aula 10 de HTML5'),
  ];

  List<Gafanhoto> gafanhoto = [
    Gafanhoto('ricacio', nome: 'Ricacio Santana', idade: 28, sexo: 'masculino'),
    Gafanhoto('00232345', nome: 'Lucas', idade: 24, sexo: 'Masculino'),
  ];

  //print(gafanhoto[0].toString());
  // print(listaVideo[1].toString());

  var visualizacao = Visualizacao(espectador: gafanhoto[0], filme: listaVideo[1]);
  print('');
  print(visualizacao.toString());

  var visualizacao2 = Visualizacao(espectador: gafanhoto[0], filme: listaVideo[0]);
  print('');
  print(visualizacao2.toString());
  visualizacao.avaliar(porct: 10);
  print('');
  print('=========================================================================================================');
  print(visualizacao.toString());
}
