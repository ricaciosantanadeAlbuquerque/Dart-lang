import 'carro.dart';

void main() {
  Carro fusca = Carro(fabricante: 'BR_distribuidora', modelo: 'fusca', velocidade: 200);
  print("Ligado:${(fusca.ligado) ? 'sim' : 'Não'}");
  fusca.modelo = 'fusca nova geração';
  fusca.fabricante = 'importado';
  print("fabricante:${fusca.fabricante}, velocidade:${fusca.velocidade}, modelo: ${fusca.modelo}, Ligado ${fusca.ligado}");
  fusca.ligado = true;
  print("Ligado:${(fusca.ligado) ? 'sim' : 'Não'}");
  fusca.ligado = false;
  print('');
  print('Ligado? ${(fusca.ligado) ? 'sim' : 'nao'}');
  print('========================================================================================================');
  var ferrari = Carro.ferrari('BMW', 'posche', velocidade: 450);
  ferrari.velocidade = 850;
  ferrari.ligado = true;
  print("fabricante:${ferrari.fabricante}, velocidade:${ferrari.velocidade}, modelo: ${ferrari.modelo}, Ligado ${ferrari.ligado}");
   print('Ligado? ${(fusca.ligado) ? 'sim' : 'nao'}');
}
