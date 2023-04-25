import 'calculos.dart';

void main() {
  Calculos06 calculo = new Calculos06(); // linha de instânciamento
  double raio = 5;

  print('Valor do PI ${calculo.pi}\n');
  print("A área do circulo é ${calculo.areaCirculo(raio)}\n");
  // atribulto e método de instância.

  print("Valor do PI Estático ${Calculos06.piEstatico}\n");
  print("A área do circulo é ${Calculos06.areaCirculoEstatico(raio)}\n");
  // atribulto e método de classe.

  /**
  * OS atribultos e métodos de classe, só são visíveis a classe.
  * Os atribultos e métodos de intância, só são visíveis a instância da classe, mais conhecidos como objetos.  
  */

  var calculos2 = Calculos06();

  print("Valor do PI ${calculos2.pi}\n");
  print("A área do circulo é ${calculos2.areaCirculo(raio)}\n");

  print("Retornos iguais ${(Calculos06.areaCirculoEstatico(raio) == calculos2.areaCirculo(raio)) ? "SIM" : "NAO"}\n");
  // os métdos são difirentes porém o retorno é igual.

  print("São iguais ? ${identical(calculo, calculos2) ? 'SIM' : 'NAO'}\n");
}
