import 'package:exe03/exe03.dart';
import 'package:test/test.dart';

void main() {
  test('Revertendo String', () {
    expect(reverter(texto: 'abc'),allOf([isA<String>(),equals('cba')]));
  });
}
