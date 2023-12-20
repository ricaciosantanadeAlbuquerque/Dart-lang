import 'calculos.dart';

void main() {
  double raio = 5;

  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();

  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  print('\n Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'Sim,' : 'Não'} porém os métodos são difirentes.\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));
}
