import 'veiculo.dart';

void main() {
  Veiculo veiculo = Veiculo(status: true, velocidade: 100);
  veiculo.mostrarStatus();
  veiculo.acelerar();
  veiculo.mostrarStatus();
  veiculo.reduzir();
  veiculo.reduzir();
  veiculo.reduzir();
  veiculo.mostrarStatus();
}
