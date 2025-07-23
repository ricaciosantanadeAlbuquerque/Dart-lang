import 'package:exe04/exe04.dart';
import 'package:test/test.dart';

void main(List<String> arguments) {
  Produto produto = Produto(nome: 'Game stirk 4900', preco: 150);
  assert(
    produto.getNome.isNotEmpty && produto.getPreco > 0,
    'ERRO!! produto um ',
  );

  test('Testando produto 1', () {
    expect(produto, isA<Produto>());
  });

  print('Produto: ${produto.toString()}');

  /**
   * var produto2 = Produto(nome: '', preco: 0); // ERRO !!!
  assert(
    produto2.getNome.isNotEmpty || produto2.getPreco < 0,
    'ERRO!! Produto dois',
  );

   FALHAS PROPOSIT
   */

 // print('Produto: ${produto2.toString()}');
}
