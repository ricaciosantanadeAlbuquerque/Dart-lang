import 'gafanhoto.dart';
import 'video.dart';
import 'visualizacao.dart';

void main(List<String> args) {
  List<Video> listVideo = [Video(titulo: 'Aula 1 de POO'), Video(titulo: 'Aula 12 de PHP'), Video(titulo: 'Dart POO')];
  List<Gafanhoto> listGafanhoto = [Gafanhoto(nome: 'Lucas', idade: 22, sexo: 'Masculino', login: 'lk123'), Gafanhoto(nome: 'Ana', idade: 36, sexo: 'Feminina', login: 'Ana1215')];
  // print(listVideo[2].toString());
  // print(listGafanhoto[1].toString());

  Visualizacao visualizacao = Visualizacao(gafanhoto: listGafanhoto[0], video: listVideo[1]);
  Visualizacao visualizacao2 = Visualizacao(gafanhoto: listGafanhoto[0], video: listVideo[2]);
  visualizacao2.video!.play();
  visualizacao2.video!.like();
  visualizacao2.avaliar();
  print(visualizacao.toString());
  print('');
  print(visualizacao2.toString());
}
