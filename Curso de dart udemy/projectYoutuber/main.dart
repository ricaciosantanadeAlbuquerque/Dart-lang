import 'gafanhoto.dart';
import 'video.dart';
import 'visualizacao.dart';

void main() {
  List<Video> listaVideo = [
    Video(title: 'Aula 1 de POO'),
    Video(title: 'Aula 12 PHP'),
    Video(title: 'Aula 10 HTML5'),
  ];

  // print(listaVideo[0].titulo);

  List<Gafanhoto> listaGafanhoto = [Gafanhoto('Ana', 34, 'F', 'ana123'), Gafanhoto('Lucas', 26, 'M', 'lucas12')];

  var visi = Visualizacao(listaGafanhoto[1], listaVideo[1]);

  print(visi.toString());
  print('');

  visi.avaliar();
  print('');
  print(visi.toString());
  visi.avaliar(porcentagem: 50);
  print('');
  print(visi.toString());
  visi.filme!.play();
  print('');
  visi.espectador!.viuMaisUm();
  print('');
  print(visi.toString());
}
