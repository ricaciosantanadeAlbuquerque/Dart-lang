import 'controle_remoto.dart';

void main() {
  var controle = ControleRemoto();

  controle
    ..ligar()
    ..abrirMenu()
    ..maisVolume()
    ..abrirMenu()
    ..pause()
    ..abrirMenu()
    ..play()
    ..abrirMenu();

  print('===========================================================================');

  controle
    ..abrirMenu()
    ..maisVolume()
    ..maisVolume()
    ..maisVolume()
    ..abrirMenu()
    ..menosVolume()
    ..abrirMenu()
    ..pause()
    ..abrirMenu()
    ..fecharMenu()
    ..desligar();
}
