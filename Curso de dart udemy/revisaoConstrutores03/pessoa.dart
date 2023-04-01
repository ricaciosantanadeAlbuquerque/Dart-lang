class Pessoa3 {
  // Atribultos de classe ou dados 
  String nome;
  int idade;
  String? cor;
  double altura;
  // construtor da classe 
  Pessoa3(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor != null)
        ? (cor.isNotEmpty)
            ? cor
            : 'vazio'
        : 'nulo';
    print("Construtor com parametros defult! ${this.toString()}");
  }
}
