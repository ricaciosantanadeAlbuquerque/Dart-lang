import 'calculo.dart';

void main() {
  double raio = 5.0;
  var calculos1 = CalculoArea(); // linha de instânciamento
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));
  print('');

  CalculoArea calculo2 = new CalculoArea(); // linha de instânciamento
  print(calculo2.pi);
  print(calculo2.areaCirculo(raio));
  print('');

  print(CalculoArea.piEstatico); // Static! variável que pertence a classe
  print(CalculoArea.areaCirculoEstatico(raio)); // método Static perntencente a  classe.
  print('');
  print("Retornos iguais> ${CalculoArea.areaCirculoEstatico(raio) == CalculoArea().areaCirculo(raio) ? 'sim' : 'nao'} Métodos são difirentes.");
  print(" ");
  print("Instâncias comsomem ${identical(calculos1, calculo2) ? 'Menos' : 'Mais'} memória");
}
