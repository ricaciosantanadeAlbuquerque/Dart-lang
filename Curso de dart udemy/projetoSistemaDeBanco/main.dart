import 'conta_especial.dart';
import 'conta_poupanca.dart';
import 'movimento.dart';
import 'pessoa_fisica.dart';

void main() {
  PessoaFisica cliente = PessoaFisica(cpfPessoa: 10822233450408, rgPessoa: 777345, idadePessoa: 27, nomePessoa: 'Lucas', ederecoPessoa: 'João Pessoa', cepPessoa: 5803680, telefonePessoa: 83987874721, rendaPessoa: 1602, situacaoPessoa: 0);

  Movimento movimento = Movimento();

  ContaEspecial contaBanco1 = ContaEspecial(movimento); // conta especial object

  cliente.situacaoPessoa = 1;
  cliente.contaEspecial = contaBanco1; // agregando contaBanco1

  print(cliente.toString());
  print('');
  print('');
  cliente.contaEspecial!.abrirContaEspecial(limiteConta: 15000, numeroConta: 333, aberturaConta: DateTime.now(), senhaConta: 123, saldoConta: 1602);
  print('');
  print('');
  print(cliente.contaEspecial.toString());
  print(cliente.contaEspecial!.movimento.toString());
  cliente.contaEspecial!.depositarValor(2500);
  print('');
  print('');
  print(cliente.contaEspecial.toString());
  print(cliente.contaEspecial!.movimento.toString());
  cliente.contaEspecial!.sacar(1200);
  print('');
  print('');
  print(cliente.contaEspecial.toString());
  print(cliente.contaEspecial!.movimento.toString());

  // ==================

  ContaPoupanca contaPoupanca = ContaPoupanca(aniverSarioConta: DateTime.now(), movimento: movimento);
  print('');
  print('');
  cliente.contaPoupanca = contaPoupanca;
  cliente.contaPoupanca!.abrirConta(aberturaConta: DateTime.now(), numeroConta: 222, saldoConta: 35000, senhaConta: 1700,);
  print(cliente.contaPoupanca.toString());
}
