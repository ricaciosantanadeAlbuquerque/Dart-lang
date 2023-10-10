import 'editora.dart';
import 'livro.dart';

void main() {
  final editora = Editora(nome: 'Saraiva', email: 'saraiva@gmail.com'); // linha de instânciamento

  final livro1 = Livro(titulo: 'Dart', anoPublicacao: 2022, preco: 140, nota: 10, quantidade: 1, editora: editora);

  print(livro1.editora!.consultar());
}
