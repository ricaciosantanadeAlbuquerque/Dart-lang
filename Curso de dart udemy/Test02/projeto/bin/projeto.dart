import 'package:projeto/projeto.dart' as projeto;

void main(List<String> arguments) {
  print('Hello world: ${projeto.calculate()}!');

  print(
    'Lista de nomes: ${projeto.converteNomeEmLista(nome: 'ricacio,lucas,ana')}',
  );

  //String nome = 'ricacio';

  // assert(nome.length > 9, 'ERRO !!! $nome não é maior do que 9');

  //assert(projeto.somar(20, 10) == 40, 'ERRO!!!');
  print('Soma valores: ${projeto.somar(20, 10)}');

  // assert(projeto.maiorIdade(idade: 0).isEmpty,'Erro !!!');

  assert(projeto.recuperarNome(lista: ['ricacio', 'santana']).contains('rica'));

  /**
   * Como a função recuperarNome() retorna o primeiro nome então sim !!!
   * ele contem os caracteres rica. E não será lançada uma exceção.
   */
}


/**
 * assert() deve receber como argumento, um booleano e uma String.
 * assert() só é executado no modo debug
 * caso a afirmativa testada seja true (verdadeira), nada acontece.
 * Porém caso seja false (falsa), então, será lançada uma exceção,
 * informando a linha e a coluna onde o erro foi gerado. Assim como o caminho~
 * do mesmo.
 */