import 'autor.dart';
import 'ebook.dart';
import 'editora.dart';

void main() {
  Editora editora = Editora(nome: 'Saraiva', email: 'saraiva_jpe@gmail.com'); // linha de instânciamento

  var ebook = Ebook(titulo: 'DART POO', anoPublicacao: 2022, formato: 'PDF', arquivo: 'digital ebook', editora: editora);

  print(ebook.toString());
  print('\n');

  /// ebook herda de livro, livro tem  um objeto editora associado
  ebook.editora!.consultar();
  print('');

  // objeto que será agregado ao todo ebook

  Autor autor1 = Autor(nome: 'Lucas', tipoContato: 'Telefone', contato: '987874564');
  var autor2 = Autor(nome: 'Ana', tipoContato: 'Email', contato: 'Ana_jep@gmail.com');
  Autor autor3 = Autor(nome: 'Ricacio', tipoContato: 'Telefone', contato: '83987874721');

  ebook.adicionarAutor(autor1);
  ebook.adicionarAutor(autor2);

  for (var autor in ebook.listAutor) {
    print(autor.nome);
    for (var contato in autor.listContato) {
      contato.mostrarContato();
    }
  }

  Ebook ebook2 = Ebook(formato: 'PDF', arquivo: 'Digital', titulo: 'Dart advanced', anoPublicacao: 2023, editora: editora);

  ebook2.adicionarAutor(autor3);
  ebook2.adicionarAutor(autor2);

  print('');
  ebook2.editora!.consultar();
  print('');

  print(ebook2.toString());

  print('');

  for (var autor in ebook2.listAutor) {
    print(autor.nome);
    for (var contato in autor.listContato) {
      contato.mostrarContato();
    }
  }

  // deletando lista de autores e como todo autor tem uma parte composta que é uma lista de contatos, ela também deve ser deletada.
  // na composição quando o todo é deletado a  parte é deletade junto;

  ebook.removerAutor();
  print('');
  print(ebook.listAutor.isEmpty); //

  // comparando objetos

  print(identical(ebook, ebook2) ? 'São iguais ' : 'são diferentes');
}
