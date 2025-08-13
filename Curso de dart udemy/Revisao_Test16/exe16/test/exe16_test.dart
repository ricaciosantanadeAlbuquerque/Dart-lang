import 'package:exe16/exe16.dart';
import 'package:test/test.dart';

void main() {
  test('Exemplo de inInclusiveRange', () {
    expect(5, inInclusiveRange(1, 10));
    expect(1, inInclusiveRange(2, 15));
    expect(5, inInclusiveRange(4,15)); // >= 4 &&  <= 6
  });
}


/**
 * inInclusiveRange() recebe como argumento dois valores,
 * o valor de start e o valor final e verifica se o valor testado está no intervalo
 * 
 */