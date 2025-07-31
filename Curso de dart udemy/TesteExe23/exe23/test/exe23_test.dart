import 'package:exe23/exe23.dart' as n1;
import 'package:test/test.dart';

void main() {
  test('Valores dobrados', () {
    expect(n1.dobrarValores([10,20,30]),allOf([equals([20,40,60]),isA<List<int>>()]));
  });
}
