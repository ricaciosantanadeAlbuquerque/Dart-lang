import 'package:exe04/exe04.dart' show contem;
import 'package:test/test.dart';

void main() {
  test('Contem o termo !', () {
    expect(contem(texto: 'A banana está verde', termo: 'verde'), isTrue);
  });

  test('Não contem o termo', () {
    expect(contem(texto: 'A manga caiu no chão', termo: 'uva'), isFalse);
  });
}
