import 'calculos.dart';

void main() {
  Calculos06 calculo = new Calculos06(); // linha de instânciamento
  double raio = 5;

  print('Valor do PI ${calculo.pi}');
  print("A área do circulo é ${calculo.areaCirculo(raio)}");
  // atribulto e método de instância.

  print("Valor do PI ${Calculos06.piEstatico}");
  print("A área do circulo é ${Calculos06.areaCirculoEstatico(raio)}");
 // atribulto e método de classe.


 /**
  * OS atribultos e métodos de classe, só são visíveis a classe.
  * Os atribultos e métodos de intância, só são visíveis a instância da classe, mais conhecidos como objetos.  
  */
}
