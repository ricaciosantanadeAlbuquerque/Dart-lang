import 'tv.dart';

void main() {
  Tv tv1 = Tv();
  print(tv1.toString());
  tv1.canal = 56;
  print(tv1.toString());
  tv1.desligar();
  print(tv1.toString());
  tv1.aumentarVolume();
  tv1.trocarCanal(77);
  print(tv1.toString()); // como a tv está des ligada o volume não foi alterado
  print("========================================");
  tv1.ligar();
  tv1.aumentarVolume(); // como a tv está ligada é possível alterar
  tv1.aumentarVolume();
  tv1.trocarCanal(77);
  print(tv1.toString());
}
