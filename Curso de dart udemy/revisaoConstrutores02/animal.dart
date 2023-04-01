class Animal {

  String? nome;
  String? raca;
  int? idade;
  // Método com o nome da classe == Construtor
  Animal(String? nome, [String? raca, int? idade = 0]){
      this.nome = (nome != null) ? (nome.isNotEmpty)? nome : 'Está vaziooo': "Está nulo";
      this.raca = (raca != null) ? (raca.isNotEmpty)? raca : 'Está vaziooo' : "Está nulo";
      this.idade = (idade != null) ? idade : 0;
      print("Construtor com parametros defult! posicionados  ${this.toString()}");
  }

  /**
   * o tribulto nome recebe um ternário aninhado, onde será verificado se o parâmetro nome é nulo ou vazio, se não for  nulo e nem vazio, * então passaremos o valor do  parâmetro para o atribulto da classe.
   */
}
