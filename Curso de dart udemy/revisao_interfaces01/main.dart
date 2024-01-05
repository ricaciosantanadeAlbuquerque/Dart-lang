import 'controle.dart';

void main() {
  
  Controle controle = Controle();

  controle
    ..ligar()
    ..abrirMenu()
    ..maisVolume()
    ..maisVolume()
    ..maisVolume()
    ..abrirMenu()
    ..pause()
    ..abrirMenu()
    ..play()
    ..ligarMudo()
    ..abrirMenu()
    ..desligarMudo()
    ..abrirMenu();
}
