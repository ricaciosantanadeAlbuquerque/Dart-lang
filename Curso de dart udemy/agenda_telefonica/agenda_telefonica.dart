import 'telefone.dart';

class AgendaTelefonica {
  List<Telefone> telefones = [];

  AgendaTelefonica();

  void adicionarContato({required Telefone contato}) {
    telefones.add(contato);
  }

  void removerContato({required Telefone contato}) {
    telefones.remove(contato);
  }

  void listarContatos() {
    telefones.forEach((element) {
      print(element.toString());
    });
  }

  Telefone? buscarContatos(String nome, int contato) {
    Telefone? result;
    for (var telefone in telefones) {
      if (telefone.numero == contato && telefone.nome == nome) {
        result = telefone;
        break;
      }
    }
    return result;
  }
}
