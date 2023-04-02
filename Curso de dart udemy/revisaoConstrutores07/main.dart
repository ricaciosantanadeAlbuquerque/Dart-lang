import 'caneta.dart';

void main() {
  Caneta c1 = Caneta.fabrica(carga: 100, cor: 'vermelho', modelo: 'Bic', ponta: 0.5);
  // como  cada valor  foi passado pelo construtor nomeado 'Caneta.fabrica()' o objeto c1 já está com os valores pré definido de fabrica no momento que é criado.
  c1.destampar();
  c1.escrever();
  print("=====================================");
  c1.tampar();
  c1.escrever();
  print("=============================================");
  print(c1.toString());

//=======================================================================================================================================
  Caneta c2 = Caneta.fabrica(cor: "verde", modelo: 'BR', ponta: 1.0, carga: 80);
  c2.toString();
  c2
    ..carga = 70
    ..tampada = false
    ..cor = 'Azul'
    ..ponta = 1.5;
  print("=============================================");
  print(c2.toString());
}
