class PessoaStatic {
  static final PessoaStatic instancia = PessoaStatic._nomeado();
  String? nome;

  PessoaStatic._nomeado();
}

/**
 * static : para que possa ser acessada de forma direta pela classe. static está visível a classe
 * final  :  para que não possa ser alterado ou mudado ou sobre posto, SERÁ  constante.
 * PessoaStatic: Como vai receber um objeto da classe, deve ser do mesmo tipo 
 *  PessoaStatic._nomeado(); construtor nomeado privado ! para que não seja possível instânciar esta classe externamente.
 */