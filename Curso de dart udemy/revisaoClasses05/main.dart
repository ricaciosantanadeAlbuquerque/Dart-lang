import 'lampada.dart';

void main() {
  Lampada novaLampada = Lampada();
  novaLampada.ligar();
  print("Agora está ${novaLampada.observado()} !");
  novaLampada.desligar();
   print("Agora está ${novaLampada.observado()} !");
}
