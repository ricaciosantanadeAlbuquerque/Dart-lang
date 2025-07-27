import 'package:exe14/exe14.dart';
import 'package:test/test.dart';

void main() {
  test('Interseção', () {
    expect(intersecao({}, {3, 4, 5}), equals({3}));
  });
}
