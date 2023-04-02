import 'Veiculo.dart';

void main() {
  Veiculo v1 = Veiculo(0, false);
  v1.mostrandoStatus();
  v1.ligar();
  v1.acelerar();
  v1.mostrandoStatus();
  v1.acelerar();
  v1.acelerar();
  v1.mostrandoStatus();
  v1.desligar();
  v1.acelerar();
  
}
