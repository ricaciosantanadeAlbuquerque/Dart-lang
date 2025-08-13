import 'package:exe14/exe14.dart';
import 'package:test/test.dart';

void main() {
  test('allOf()', () {
    expect(7, allOf([greaterThan(5), lessThan(10)])); // true
    expect(4, allOf([greaterThan(5), lessThan(10)])); // false
    expect(
      100,
      allOf([
        isNotNaN,
        equals(100),
        greaterThan(90),
        greaterThanOrEqualTo(100),
      ]),
    );
  });

  test('anyOf()', () {
    expect(7, anyOf([lessThan(8), greaterThanOrEqualTo(8)])); // false >=
    expect(
      10,
      anyOf([greaterThanOrEqualTo(10), lessThan(11), isNotNaN, equals(10)]),
    ); // true >= <
  });

  test('anyOf()  teste 2', () {
    expect(4, anyOf([lessThan(5), equals(4)])); // true
    expect(8, anyOf([lessThan(5), greaterThan(10)])); // false
    expect(150, anyOf([equals(150), greaterThan(140), lessThan(160)])); // true
  });
}

/**
 * allOf([]) recebe uma lista de  teste, e todos os testes devem ser verdadeiros
 * para que  allOf() retorne  verdadeiro. 
 */

/**
   * anyOf([]) basta que  uma das condições seja verdadeira que o anyOf() retorna 
   * verdadeiro.
   * 
   * 
   * allOf()
   * anyOf()
   */
