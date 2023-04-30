import 'controle_Factory.dart';

void main() {
  ControleFactory controle1 = ControleFactory(ligar: true, volume: 90);
  print(controle1);
  print(controle1.ligado);
  print(controle1.volume);

  // vamos tentar criar uma nova isntância de ControleFactory

  var controle2 = ControleFactory();

  print(controle2.ligado);
  print(controle2.volume);

  // sempre será retornado a primeira instância
}
