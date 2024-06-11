void main(){
 print(PessoaFactory.instancia.nome);
 PessoaFactory  pessoaFactory = PessoaFactory();
 pessoaFactory.nome = 'ricacio';

 var p1 = PessoaFactory();
 var p2 = PessoaFactory.instancia;

 print('Nome:${p1.nome}, Nome:${p2.nome}');

 print(identical(p1,p2));
}

class PessoaFactory{
  static final PessoaFactory instancia = PessoaFactory._construtorNomeado('indefinido'); // singleton
  String? nome; // Atributo de instância.
  /// construtor factory é aquele que será executado primeiro. 
  factory PessoaFactory() => instancia;
  /// construtor nomeado e privado
   PessoaFactory._construtorNomeado(this.nome); // this apontar para instância da classe

   /**
    * static : torna o método ou atributo pertencente a classe, eles são visíveis a classe e não a suas instâncias
      final  : constante em tempo de execução, uma vez inicializada não pode ser alterada ou sobreposta.
      factory : o construtor factory é sempre o primeiro entre todos os construtores a ser executado.

    */
}