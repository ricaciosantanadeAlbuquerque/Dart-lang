/**
 * Singleton é um padrão de projeto para que exista apenas uma única instância da classe.
 * o construtor deve ser nomeado e privado, para que não possa ser possível criar outro objeto.
 * static permite que  a instância da classe seja acessada de forma direta. 
 */

import 'pessoa_static.dart';

void main() {
  PessoaStatic.instance.nome = 'Ana';

  print(PessoaStatic.instance.nome);

  var p1 = PessoaStatic.instance;
  var p2 = PessoaStatic.instance;

  print(p1.nome);

  print('');

  print(p2.nome);

//========================================================================================================================

  print(identical(p1, p2));

  p1.nome = 'Lucas';

  print(PessoaStatic.instance.nome);

  p2.nome = 'João';

  print(p1.nome);

  p1.texto();
  print('');

  PessoaStatic.instance.texto();
}
// PessoaStatic.instance : sempre retorna uma mesma instância;