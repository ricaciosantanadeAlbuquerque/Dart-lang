import 'autor.dart';
import 'ebook.dart';
import 'editora.dart';

void main() {
  final editora = Editora(nome: 'Leitura', email: 'leitura@gmail.com'); // linha de instânciamento da classe Editora, agora editora é um objeto completo, com seus valores alocados nos atributos via construtor.
  // lembrando que o objeto editora e final, isso significa que a referência a este objeto não muda, porém  seus atibutos internos podem mudar.

  final autor = Autor(nome: 'Lucas', abreviatura: 'LC', tipo: 'telefone', contato: '83987874721');
  final autor2 = Autor(nome: 'ana', abreviatura: 'an', tipo: 'telefone', contato: '8398787555');
  final ebook = new Ebook(formato: 'PDF', arquivo: 'leitura', titulo: 'Dart', date: DateTime.now(), preco: 85.00, nota: 5, quantidade: 1, editora: editora);

  ebook.adicionarAutor(autor); // necessário passar uma objeto completo, pois se trata de uma agregação
  ebook.adicionarAutor(autor2);

  print(ebook.listaAutor[0].listaContatos[0].listar());

  print('');

  for (var auto in ebook.listaAutor) {
    print(auto.toString());
  }
  print('\n');

  for (var auto in ebook.listaAutor) {
    for (var contato in auto.listaContatos) {
      print(contato.listar());
    }
  }

  print('');

  print(ebook.ler());

  print('');
  for (var auto in ebook.listaAutor) {
    print(auto.toString());
  }

  ebook.removerAutor(autor2);

   print('');
  for (var auto in ebook.listaAutor) {
    print(auto.toString());
  }
}
