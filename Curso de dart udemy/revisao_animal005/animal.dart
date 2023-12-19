class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String? nome, [String? raca, int idade = 0]) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    this.idade = idade;
    print("Construtor com parametros default ! ${this.toString()}\n");
  }
}
