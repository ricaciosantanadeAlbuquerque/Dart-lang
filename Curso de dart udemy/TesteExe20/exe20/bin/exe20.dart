import 'package:exe20/exe20.dart';

void main(List<String> arguments) {
  Retangulo retangulo1 = Retangulo(largura: '12', altura: '5');

  // final ratangulo2 = Retangulo(altura: '0', largura: '0');
  /**
   *  Lança uma exceção, já que a assert() deu falso.
   */

  print('Área do retângulo é ${retangulo1.area()}');
}
