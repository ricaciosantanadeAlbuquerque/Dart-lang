import 'controle.dart';

void main() {
  Controle c1 = Controle();
  c1.abrirMenu();
  print("");
  c1.maisVolume(); // como a tv não foi ligada não é possível aumentar o volume
  c1.abrirMenu();
  c1.ligar();
  c1.maisVolume();
  c1.maisVolume();
  print("=========");
  c1.abrirMenu();
  c1.pause();
  print("=========");
  c1.abrirMenu();
  c1.play();
  c1.ligarMudo();
  print("=========");
  c1.abrirMenu();
  c1.desligar();
    print("=========");
  c1.abrirMenu();
}
