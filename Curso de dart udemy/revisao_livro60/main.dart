import 'gafanhoto.dart';
import 'video.dart';
import 'visualizacao.dart';

void main() {
  Gafanhoto gafanhoto = Gafanhoto(login: 'ricacio123', nome: 'Ricacio', idade: 28, sexo: 'Masculino');

  var video = Video(titulo: 'Dart POO');
  /**
   * Visualizacao() agrega Video() e Gafanhoto()
   */

  Visualizacao visualizacao = Visualizacao(gafanhoto: gafanhoto, video: video);

  Gafanhoto gafanhoto2 = Gafanhoto(login: 'Ana123', nome: 'Lucas', idade: 32, sexo: 'Masculino');

  Visualizacao visualizacao2 = Visualizacao(gafanhoto: gafanhoto2, video: video);

  print(visualizacao.toString());

  visualizacao.video!.like();

  visualizacao.gafanhoto!.ganharExperiencia();

  print('');
  print('');

  print(visualizacao.toString());

  print('');
  print('');

  print(visualizacao2.toString());

  /** O bojeto Video() está sendo agregado no objeto Visualizacao e Visualizacao2 
   *  como este objeto está sendo compartilhado entre dois objetos TODOS, se algum objeto todo alterar este objeto video() então o   outro objeto todo visualizacao será notoficado eeee verá a alteração.  
  */
}
