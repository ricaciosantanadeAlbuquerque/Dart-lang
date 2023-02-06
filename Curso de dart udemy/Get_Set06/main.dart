import 'Funcionario.dart';
import 'Pessoa_Juridica.dart';

void main() {
  Funcionario f1 = new Funcionario("0777", "Ana", "0333");
  print(f1.toString());
  print(f1.nome);
  f1.rg = "0888";
  print(f1.toString());

  /**
    * Como Funcionario herda tudo de PessoaFisica, que Herda de Pessoa, logo Funcionário, tem tudo que PessoaFisica e     Pessoa tem!  Estando visivel ou não, a visibilidade depende do modificador de acesso. private public 
    * 
    */

  PessoaJuridica j1 = PessoaJuridica("123456", "Lojas Americanas");

  print(j1.toString());
}
