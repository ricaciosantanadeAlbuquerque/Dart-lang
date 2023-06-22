import 'carro.dart';

void main() {
  Carro fusca = Carro(fabricante: 'BR_distribuidora', modelo: 'fusca', velocidade: 200);
  print("Ligado:${(fusca.ligado) ? 'sim' : 'Não'}");
  fusca.modelo = 'fusca nova geração';
  fusca.fabricante = 'importado';
  print("fabricante:${fusca.fabricante}, velocidade:${fusca.velocidade}, modelo: ${fusca.modelo}, Ligado ${fusca.ligado}");
}
