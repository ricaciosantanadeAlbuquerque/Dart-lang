import 'conta_especial.dart';
import 'movimento.dart';
import 'pessoa_fisica.dart';

void main() {
  PessoaFisica cliente = PessoaFisica(cpfPessoa: 10822233450408, rgPessoa: 777345, idadePessoa: 27, nomePessoa: 'Lucas', ederecoPessoa: 'João Pessoa', cepPessoa: 5803680, telefonePessoa: 83987874721, rendaPessoa: 1602, situacaoPessoa: 0);

  Movimento movimento = Movimento();

  ContaEspecial contaBanco1 = ContaEspecial(movimento);

  cliente.contaComum = contaBanco1;

  cliente.contaComum!.abrirConta(numeroConta: 77, aberturaConta: DateTime.now(), senhaConta: 123, saldoConta: 1500);
  cliente.contaComum!.consultarConta(77);
  print('');
  cliente.contaComum!.depositarValor(2500);
  print('');
  cliente.contaComum!.movimento!.registrarMovimento(2, 2500);
  cliente.contaComum!.movimento!.consultarMovimento(DateTime.now());
  print('');
  cliente.contaComum!.consultarConta(77);
  print('');
  cliente.contaComum!.sacarValor(500);
  cliente.contaComum!.movimento!.registrarMovimento(1,500);
  cliente.contaComum!.movimento!.consultarMovimento(DateTime.now());
  print('');
  cliente.contaComum!.consultarConta(77);
}
