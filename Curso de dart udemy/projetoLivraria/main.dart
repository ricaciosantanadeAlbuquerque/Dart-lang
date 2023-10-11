import 'autor.dart';
import 'ebook.dart';
import 'editora.dart';
import 'livro.dart';

void main() {
  final editora = Editora(nome: 'Saraiva', email: 'saraiva@gmail.com'); // linha de instânciamento
  final autor = new Autor(nome: 'Ricacio Santana', abreviatura: 'R Santana', tipo: 'email', contato: 'ricaciozz@gmail.com');
  // editora está associada
  // autor está agregado
  final ebook = Ebook(formato: 'PDF', arquivo: 'dart', titulo: 'Dart POO', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora, autor: autor);

  for (var autor in ebook.listaAutores) {
    for (var contato in autor.listacontato) {
      print(contato.listarContatos());
    }
  }
  // Através do objeto ebook podemos acessar nossa lista de objetos autores, que por sua vez tem como atributo uma lista de objetos contatos. Contato é um objeto, por tanto tem dentro dele funções e atributos.

  /* final livro1 = Livro(titulo: 'Dart', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora, autor: autor);
  final livro2 = Livro(titulo: 'Dart', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora, autor: autor);

  print(livro1.editora!.consultar());

  for (var autor in livro2.listaAutores) {
    print(autor.nome);
  }
  print('');
  final autor2 = Autor(nome: 'Ana', abreviatura: 'Ana', tipo: 'telefone', contato: '83987874721');
  livro1.adicionarAutor(autor2);

  for (var autor in livro1.listaAutores) {
    print(autor.nome);
  }

  for (var autor in livro1.listaAutores) {
    // lista de objetos autores
    print(autor.nome);

    for (var autor1 in autor.listacontato) {
      // lista de objetos contatos
      print(autor1.listarContatos());
    }

   print(livro1.listaAutores[0].listacontato[0].listarContatos());
  // livro agrega autores autores são compostos por contatos. 
  }

  */
  /**
   * Classe livro está associada a classe editora. Isso não é  uma relação doto parte.
   * A agregação é uma relação  todo parte, em que livro é o todo, e o Autor é uma parte deste todo. porém um autor pode existir sem o livro, e o livro pode existir sem o autor, mas um autor faz parte do livro porque o autor escreve o mesmo. Outra caracteristica do objeto agregado é que ele pode ser enchergado fora da classe agregadora, podendo ser compartilhado com outras classes ou objetos. Veja que o livro1 possui mais  de um autor
   * 
   */
}
