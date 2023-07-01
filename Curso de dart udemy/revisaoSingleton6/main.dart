import 'pessoa_instancia.dart';

void main() {
  var p2 = new PessoaInstancia(identidade: 123456, nome: "Lucia");
  var j = new PessoaInstancia(nome: 'lucas');

  print(j.nome);
  print(p2.nome);
  print(identical(j, p2));
  /** O padrão singleton retorna sempre a mesma instância,  como p2 foi o primeiro objeto criado, ele será sempre retornado.
   *  Não importa quantas vezes eu uso o construtor factory para instanciar um novo objeto, sempre ele irá retornar o primeiro objeto.
    */
}
