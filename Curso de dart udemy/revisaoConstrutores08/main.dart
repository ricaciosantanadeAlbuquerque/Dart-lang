import 'tv.dart';

void main() {
  Tv2 tv = Tv2(canal: 7, volume: 25);
  tv.informacao();
  print("====================================================");
  tv.trocar(50);
  tv.aumentarVolume();
  tv.informacao();
  tv.desligar();
  print("=====================================================");
  tv.informacao(); // não mostra nada justamente porque a tv está desligada
//===========================================================================================================

  Tv2 tv1 = Tv2.canal();
  tv1.informacao();
  tv1.aumentarVolume();
  tv1.aumentarVolume();
  tv1.trocar(100);
  print("=============================");
  tv1.informacao();
}
