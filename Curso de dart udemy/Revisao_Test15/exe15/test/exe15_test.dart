import 'package:test/test.dart';

void main() {
  group('greaterThanOrEqualTo', () {
    test('Exemplo greaterThanOrEqualTo', () {
      expect(10, greaterThanOrEqualTo(10)); // true
      expect(15, greaterThanOrEqualTo(10)); // true
    });

    test('greaterThanOrEqualTo()', () {
      expect(200, greaterThanOrEqualTo(200)); // true
      expect(400, greaterThanOrEqualTo(350)); // true
    });
  });

  group('lessThanOrEqualTo', () {
    test('lessThanOrEqualTo', () {
      expect(5, lessThanOrEqualTo(5)); // true
      expect(6, lessThanOrEqualTo(4)); // false
      expect(15, lessThanOrEqualTo(20));
    });
  });
}


/**
 * 
 */