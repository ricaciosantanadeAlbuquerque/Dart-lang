import 'pessoa.dart';

class Endereco {
  final String rua;
  final int numero;
  final String uf;
  final String bairro;
  Pessoa? pessoa;

  Endereco({required this.rua, required this.numero, required this.uf, required this.bairro});

  void adicionarPessoa(Pessoa pessoa) {
    this.pessoa = pessoa;
  }
  @override
  String toString(){
    return ' Rua:$rua, número:$numero, Uf:$uf, Bairro:$bairro, ';
  }
  
}
