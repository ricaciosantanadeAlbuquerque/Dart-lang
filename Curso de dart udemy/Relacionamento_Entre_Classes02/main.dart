import 'livro.dart';
import 'pessoa.dart';

void main() {
  List<Pessoa> listaPessoa = [
    Pessoa(nome: 'Pedro', idade: 22, sexo: 'M'),
    Pessoa(nome: 'Maria', idade: 25, sexo: 'F'),
  ];

  var listaLivro = [Livro(titulo: 'Aprendendo Java', autor: 'José da Silva', totPagina: 300, leitor: listaPessoa[0]), Livro(titulo: 'POO para Iniciantes', autor: 'Pedro Paulo', totPagina: 500, leitor: listaPessoa[1])];

  /**
   * Ao apontar para o array listaPessoa[0], estamos passando o valor desta posição como argumento para o construtor Livro().
   * E o valor desta posição é justamente o objeto Pessoa();
   */

  listaLivro[0].detalhes();

  print('');

  listaLivro[1].detalhes();

  print("");
  
  listaLivro[0].leitor!.fazerAniversario();

  print(listaLivro[0].leitor!.idade);

  // O objeto livro tem UM OBJETO PESSOA como atributo,  por isso, livro acessa todos os atributos e métodos da classe pessoa.
}
