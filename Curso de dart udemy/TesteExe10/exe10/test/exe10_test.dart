import 'package:exe10/exe10.dart' as p;
import 'package:test/test.dart';

void main() {
  group('Contem Palavras', () {
    test('Caça palavras', () {
      expect(
        p.contemPalavra(
          frase: '"O rato roeu a roupa do rei de Roma',
          palavra: 'rato',
        ),
        allOf([equals(true),isTrue]),
      );
    });
  });
}
