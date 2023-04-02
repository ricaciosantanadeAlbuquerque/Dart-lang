import 'caminhao.dart';

void main() {
  Caminhao11 caminhao = Caminhao11();
  print(caminhao.toString());
  caminhao.acelerar();
  caminhao.acelerar();
  print("=====================================");
  print(caminhao.toString());
  caminhao.trocarConbustivel('Gás');
  caminhao.acelerar();
  print("=====================================");
  print(caminhao.toString());
}
