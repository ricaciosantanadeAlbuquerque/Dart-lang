import 'package:exe04/exe04.dart';
import 'package:test/test.dart';

void main() {
  Produto produto = new Produto(nome: 'Celular', preco: 2200);

  group('Test do objeto produto', () {
    test('Testando a instância de produto', () {
      expect(produto, equals(isA<Produto>()));
    });

    test('Testando o nome do produto', () {
      expect(produto.getNome, equals('Celular'));
    });

    test('Testando o preço', () {
      expect(produto.getPreco, equals(2200));
    });
  });
}
