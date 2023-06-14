class Pessoa {
  
  String nome;
  int idade;
  String? cor;
  double altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor != null) ? cor : 'indefinida.';
    print("\n construtor com parametros nomeados: ${this.toString()}");
  }
}

/**
 * this é uma instância  da classe pessoa.
 */
