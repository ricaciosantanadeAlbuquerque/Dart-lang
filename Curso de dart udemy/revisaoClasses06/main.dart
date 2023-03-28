import 'televisao.dart';

void main() {
  Tv tv1 = Tv(); // criamos o objeto tv1
  tv1.mostrar();
  tv1.ligar(); // mandamos ligar
  tv1.mostrar();
  tv1.aumentarVolume(); // mandamos aumentar o volume
  tv1.aumentarVolume();
  tv1.trocarCanal(7);
  print("=========================================================================");
  tv1.mostrar();
  for (var i = 0; i < 22; i++) {
    tv1.aumentarVolume();
  }
  tv1.trocarCanal(100);
  print("=========================================================================");
  tv1.mostrar();

  for (var j = 0; j < 24; j++) {
    tv1.reduzirVolume();
  }
  print("=========================================================================");
  tv1.trocarCanal(0);
  tv1.trocarCanal(0);
  tv1.desligar();
  tv1.mostrar();
  print("=========================================================================");
  //=====================================================================================================================================
  Tv tv2 = Tv();
  tv2.aumentarVolume(); // para aumentar o volume ou trocar de canal é necessário  ligar a tv
  tv2.trocarCanal(56);
  tv2.mostrar();
}
