import 'contatos.dart';
import 'lista_contatos.dart';

void main() {
  Contato contato = Contato(nome: 'ricacio', numero: '83987874721');
  var contato2 = Contato(nome: 'Ana', numero: '838899774556');
  Contato contato3 = new Contato(nome: 'Lucas', numero: '83999888842');

  ListaContatos listaTelefonica = ListaContatos();

  listaTelefonica
    ..adicionarContatos(contato: contato)
    ..adicionarContatos(contato: contato2)
    ..adicionarContatos(contato: contato3)
    ..listarContatos();

  // removendo contato
  print('');
  print('================================= =================================');
  print('');

  listaTelefonica
    ..removerContatos(numero: '83987874721')
    ..listarContatos();

  print('QTD contatos: ${listaTelefonica.quantidadeContatos()}');
}
