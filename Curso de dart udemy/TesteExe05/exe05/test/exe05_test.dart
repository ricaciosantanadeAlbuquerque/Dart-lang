import 'package:exe05/exe05.dart';
import 'package:test/test.dart';

void main() {
  test('Soma', () {
    expect(somarLista(lista: [10, 20, 30]),allOf([equals(60),60]));
  });
}
