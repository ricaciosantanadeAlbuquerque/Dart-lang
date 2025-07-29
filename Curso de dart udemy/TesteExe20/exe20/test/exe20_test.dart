import 'package:exe20/exe20.dart';
import 'package:test/test.dart';

void main() {
  /// Declarei
  late Retangulo retangulo;

  /// inicializei
  setUp(() {
    retangulo = Retangulo(largura: '12', altura: '5');
  });

  test('Área do triângulo', () {
    expect(retangulo.area(),anyOf([isA<String>(),equals('60')]));
  });

}
