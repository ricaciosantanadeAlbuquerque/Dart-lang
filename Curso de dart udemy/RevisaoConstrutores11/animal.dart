class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String? nome ,[String? raca, int idade = 0]){ // construtor padrão com parametros nomeados
    this.nome = (nome != null) ? nome : 'indefinido';
    this.raca = (raca != null)? raca : 'indefinido';
    this.idade = idade;
    print("\nConstrutor com parâmetros posicionados e defult (${this.toString()})\n");
  }
}
