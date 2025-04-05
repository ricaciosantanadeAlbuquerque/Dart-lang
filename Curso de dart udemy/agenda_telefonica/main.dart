import 'agenda_telefonica.dart';
import 'telefone.dart';

/**
 * Crie um sistema de contatos onde o usuário pode:
✅ Adicionar contatos (nome e telefone)
✅ Remover contatos
✅ Buscar contatos pelo nome
 */
void main() {
  AgendaTelefonica agendaTelefonica = AgendaTelefonica();

  const Telefone tele01 = Telefone('Ricacio', 83987874721); // obejtos completamente imutáveis
  const Telefone tele02 = Telefone('Lucas', 8398484552633);
  const Telefone tele03 = Telefone('Ana', 8496687475222);

  agendaTelefonica.adicionarContato(contato: tele01);
  agendaTelefonica.adicionarContato(contato: tele02);
  agendaTelefonica.adicionarContato(contato: tele03);

  print('');
  print(tele01);
  print('');
  agendaTelefonica.listarContatos();

  var resultado = agendaTelefonica.buscarContatos('Ricacio', 83987874721);

  print('Contato: ${resultado ?? 'Não encontrado, ou Não existe'}');

  Telefone tele04 = new Telefone('Dora', 8398787445522);
  agendaTelefonica.adicionarContato(contato: tele04);
  print('');
  agendaTelefonica.listarContatos();
  agendaTelefonica.removerContato(contato: tele01);
  print('');
  agendaTelefonica.listarContatos();
}
