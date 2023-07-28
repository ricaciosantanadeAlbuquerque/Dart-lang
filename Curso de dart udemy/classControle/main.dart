import 'controle.dart';

void main() {
  Controle controle = Controle();

  // Todos os seus métodos get e sets, assim como os atributos da classe estão privados, ficando visivel só os métodos  que caracterizam a interface.

  controle
    ..ligar()
    ..abrirMenu();

  print("============================================================");

  controle
    ..maisVolume()
    ..maisVolume();

  print(controle.toString());

  controle.abrirMenu();

  print('');

  controle.menosVolume();

  print('');

  print(controle.toString());

  controle.pause();

  print('');

  print(controle.toString());

  controle.pay();

  print('');

  print(controle.toString());

  controle
    ..pause()
    ..desligar();

  print('');

  print(controle.toString());

  controle
    ..ligar()
    ..maisVolume()
    ..ligarMudo()
    ..abrirMenu();

  print(controle.toString());
}
