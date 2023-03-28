import 'caminhao.dart';

void main() {
  Caminhao caminhao = Caminhao();
  caminhao.combustivel = 'Diesel';
  caminhao.aumentarVelocidade();
  caminhao.painel();
  print("=================================================================");
  for (int i = 0; i < 50; i++) {
    caminhao.aumentarVelocidade();
  }
  caminhao.painel();
}
