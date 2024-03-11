import 'autor.dart';
import 'ebook.dart';
import 'editora.dart';

void main(List<String> args) {
  Editora editora = Editora(nome: 'Saraiva', email: 'saraiva_jpe@gmail.com');

  // relação de associação do objeto Livro com o objeto Editora

  Ebook ebook = Ebook(formato: 'PDF', arquivo: 'Digital', titulo: 'JAVA POO', anoPublicacao: 2023, preco: 250, editora: editora);

  ebook.editora!.consultar();
  /**
  * No momento em que criamos o objeto Autor criamos também a lista de objetos Contato por composição 
  */
  Autor autor1 = Autor(nome: 'Ricacio', tipoContato: 'Telefone', contato: '83987874721');
  Autor autor2 = Autor(nome: 'Lucas', tipoContato: 'Email', contato: 'lucas_jp@gmail.com');
  Autor autor3 = Autor(nome: 'Ana', tipoContato: 'Telefone', contato: '839987878465');

  ebook.adicionarAutor(autor1); // ebook agrega autor1 e autor 2
  ebook.adicionarAutor(autor3);
  print('');
  ebook.listarAutores();
  print('');

  for (var item in ebook.listAutor!) {
    print(item.toString());
  }

  print(ebook.toString()); // dados ebook
  Editora editora2 = Editora(nome: 'Leitura', email: 'leitura_@gmail.com');

  var ebook2 = Ebook(arquivo: 'digital', formato: 'doc', titulo: 'Dart', anoPublicacao: 2020, preco: 225, editora: editora2);

  print('');
  ebook2.editora!.consultar();
  print('');

  ebook2.adicionarAutor(autor3);
  ebook2.adicionarAutor(autor2);
  print('');
  ebook2.listarAutores();

  print('');

  for (var item in ebook2.listAutor!) {
    print(item.toString());
  }

  print(ebook2.toString());
  print('');
  print(ebook.toString());
  print(ebook2.toString());

  /**
  * ==================================== Excluindo autor ====================================
  */
  ebook.removerAutores();

  print('');

  ebook.listarAutores();
  ebook2.listarAutores();
  print('');
  print('');
  ebook2.removerAutores();
  print('');
  ebook.listarAutores();
  ebook2.listarAutores();
}
