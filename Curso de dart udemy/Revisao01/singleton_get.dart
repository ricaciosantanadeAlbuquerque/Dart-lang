class Pessoa{
  // static visivel a classe.
  // final  constante em tempo de execução. 
  static final Pessoa _instancia = Pessoa._construtorNomeado();
  String? nome;
 // construtor nomeado privado
  Pessoa._construtorNomeado();

  static Pessoa get instancia{
    return _instancia;
  }
}


void main(){
  print(Pessoa.instancia.nome);
  Pessoa.instancia.nome = 'ricacio';
  var p1 = Pessoa.instancia;
  var p2 = Pessoa.instancia;
  p1.nome = 'Lucas';
  p2.nome = 'Nina';

  print('Nome p1: ${p1.nome}, Nome p2: ${p2.nome}'); 
  /**
   * No padrão singleton, a classe só pode gerar uma única instância. Podemos alocar a instância singleton em várias
   * variáveis, porém   todas essas váriáveis apontaram para a mesma instância.
   */

  print('Os objetos são iguais ? ${identical(p1,p2) ?  'Sim! São iguais.' : 'Não ! São difirentes'}');
}