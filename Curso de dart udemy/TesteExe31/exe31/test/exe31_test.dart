import 'package:exe31/exe31.dart';
import 'package:test/test.dart';

void main() {
  test('Contem o termo !!', () {
    expect(
      contem(texto: 'O rato roeu o roupa do rei de roma', termo: 'rato'),
      isTrue,
    );
  });
  test('Não contém o termo', () {
    expect(contem(texto: 'banana', termo: 'uva'), isFalse);

    
  });
}
