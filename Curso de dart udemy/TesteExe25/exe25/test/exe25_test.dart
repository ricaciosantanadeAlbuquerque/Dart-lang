import 'package:exe25/exe25.dart';
import 'package:test/test.dart';

void main() {
  group('Entradas válidas', () {
    test('Frases contém palavra exata', () {
      expect(
        contemPalavras(frase: 'O rato roeu a roupa', palavra: 'rato'),
        isTrue,
      );
    });

    test('Frase contém a palavra no meio', () {
      expect(
        contemPalavras(frase: 'O rato roeu a roupa do rei', palavra: 'roupa'),
        isTrue,
      );
    });

    test('Frase contém palavra no fim', () {
      expect(
        contemPalavras(frase: 'Eu gosto de sorvete', palavra: 'sorvete'),
        isTrue,
      );
    });
  });

  group('Entradas inválidas', () {
    test('Palavras que não está na frase !!', () {
      expect(
        contemPalavras(frase: 'O rato roeu a roupa', palavra: 'gato'),
        isFalse,
      );
    });

    test('Palavra parcialmente semelhante', () {
      expect(
        contemPalavras(frase: 'Ele correu bastante', palavra: 'cor'),
        isTrue,
      );
    });

    test('Palavra vazia', () {
      expect(contemPalavras(frase: 'Alguma palavra aqui', palavra: ''), isTrue);
    });

    test('Frase vazia', () {
      expect(contemPalavras(frase: '', palavra: 'algo'), isFalse);
    });
  });

  test('Ambos vazios', () {
    expect(contemPalavras(frase: '', palavra: ''), isTrue);
  });
}
