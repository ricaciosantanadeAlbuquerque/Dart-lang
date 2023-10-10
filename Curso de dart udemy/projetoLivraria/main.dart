import 'autor.dart';
import 'editora.dart';
import 'livro.dart';

void main() {
  final editora = Editora(nome: 'Saraiva', email: 'saraiva@gmail.com'); // linha de instânciamento
  final autor = new Autor(nome: 'Ricacio Santana', abreviatura: 'R Santana');

  final livro1 = Livro(titulo: 'Dart', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora, autor: autor);
  final livro2 = Livro(titulo: 'Dart', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora, autor: autor);

  print(livro1.editora!.consultar());

  for (var autor in livro2.listaAutores) {
    print(autor.nome);
  }
  print('');
  final autor2 = Autor(nome: 'Ana', abreviatura: 'Ana');
  livro1.adicionarAutor(autor2);

  for (var autor in livro1.listaAutores) {
    print(autor.nome);
  }

  /**
   * Classe livro está associada a classe editora. Isso não é  uma relação doto parte.
   * A agregação é uma relação  todo parte, em que livro é o todo, e o Autor é uma parte deste todo. porém um autor pode existir sem o livro, e o livro pode existir sem o autor, mas um autor faz parte do livro porque o autor escreve o mesmo. Outra caracteristica do objeto agregado é que ele pode ser enchergado fora da classe agregadora, podendo ser compartilhado com outras classes ou objetos. Veja que o livro1 possui mais  de um autor
   * 
   */
}
