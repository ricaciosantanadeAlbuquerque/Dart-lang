import 'contatos.dart';

class ListaContatos {
  List<Contato> listaTelefone = [];

  ListaContatos();

  void adicionarContatos({required Contato contato}) {
    listaTelefone.add(contato);
  }

  void removerContatos({required String numero}) {
    listaTelefone.removeWhere((contato) => contato.numero == numero);
  }

  void listarContatos() {
    listaTelefone.forEach(print);
  }

  int quantidadeContatos() {
    return listaTelefone.length;
  }
}
