import 'package:exe13/exe13.dart';
import 'package:test/test.dart';

void main() {
  group('maior', () {
    test('Maior que', () {
      expect(10, greaterThan(10)); // true
      expect(3, greaterThan(5)); // false
    });

    test('Maior que ', () => expect(20, greaterThan(10)));
    test('Menor que ', () => expect(450, greaterThan(120)));
    test('maior que ', () => expect(19, greaterThan(10)));
  });

  group('menor', () {
    test('Menor', () {
      expect(8, lessThan(5));
      expect(7, lessThan(8));
      expect(3, lessThan(5));
      expect(7, lessThan(10));
    });
  });
}




/**
 *  greaterThan(x) maior que x
 *  greaterThan(x) maior que x 
 *  lessThan(x)
 * 
 */

