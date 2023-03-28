import 'caminhao.dart';

void main() {
  Caminhao caminhao = Caminhao();
  caminhao.trocarCombustivel('Diesel');
  caminhao.aumentarVelocidade();
  caminhao.painel();
  print("=================================================================");
  for (int i = 0; i < 50; i++) {
    caminhao.aumentarVelocidade();
  }
  caminhao.painel();
  caminhao.trocarCombustivel('Gás');
  for (var j = 0; j < 30; j++) {
    caminhao.reduzirVelocidade();
  }
  print("===================================================================");
  caminhao.painel();
}
