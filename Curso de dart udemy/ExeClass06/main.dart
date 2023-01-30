import 'controle.dart';

void main() {
  Controle controle = new Controle();
  controle.cor = "preto";
  controle.marca = "sansung";
  controle.tamanho = 30;
  controle.informacoes();
  controle.Ligar();
  controle.informacoes();
  controle.desligar();
  controle.informacoes();
  controle.Ligar();
  controle.informacoes();
  controle.mudo();
  controle.informacoes();
  controle.mudo();
  controle.informacoes();
  controle.aumentarVolume();
  controle.informacoes();
  controle.baixarVolume();
  controle.informacoes();
  controle.mainCanal();
  controle.informacoes();
  controle.menosCanal();
  controle.informacoes();
  // por fim vou desligar
  controle.desligar();
}
