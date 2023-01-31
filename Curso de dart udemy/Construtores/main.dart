void main() {
  Objeto objeto = new Objeto();
  objeto.nome = "Ana";
  print("\nNome: ${objeto.nome}\n");
  // ==== animal ===========

  Animal animal = new Animal("Leão", "felino"); // passando valores pelo construtor da classe Animal
  print("Nome:${animal.nome},\n Raça: ${animal.raca}");

  // =========== Pessoa ===========

  Pessoa pessoa = new Pessoa(
    "ricacio",
    27,
  );
  print("Nome: ${pessoa.nome} Idade: ${pessoa.idade} Cor: ${pessoa.cor} Altura: ${pessoa.altura}");
  /**
   * O construtor  da classe pessoa  possui dos parâmetros nomeados, sendo que um aceita valores nulos e o outro está  * * como default = 0, assim não é obrigatório que  passemos valores para esses construtores 
   */

  Pessoa pessoa1 = Pessoa("Ana", 33, cor: "Branca", altura: 1.66); // passando valores por parâmetro
  print("\nNome:${pessoa1.nome}, Idade: ${pessoa1.idade}, Cor: ${pessoa1.cor}, Altura:${pessoa1.altura}\n");

  //============== Usuário ====================

  Usuario usuario01 = new Usuario("ricaciozz@gmail.com","123" ,nome: "ricacio", cargo: "programador");
  print("\nNome:${usuario01.nome}, Cargo:${usuario01.cargo} Senha: ${usuario01.senha} usuário: ${usuario01.user}\n");
  usuario01.autenticar();

  Usuario usuario02 = Usuario.admin("ricacio","123",nome: "ricacio");
  print("\nNome:${usuario02.nome}, Cargo:${usuario02.cargo} Senha: ${usuario02.senha} usuário: ${usuario02.user}\n");
  usuario01.autenticar();  

}

// =============== Classe Objeto ================
class Objeto {
  // atribulto de classe
  String? nome;

  // construtor sem parâmetros
  Objeto() {
    print("\nConstrutor sem parâmetros ${this.toString()}\n");
  }
}

// ========= Classe Animal ======================

class Animal {
  // atribultos de classe
  String? nome;
  String? raca;
  int? idade;
  // construtor com parâmetros
  Animal(String nome, [String? raca, int? idade = 0]) {
    // passamos  os valores dos parâmetros  para os atribultos de classe

    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print("Construtor da classe animal ${this.toString()}");
  }
}
// ========== Class Pessoa ======================

class Pessoa {
  // atrubultos de classe
  String nome;
  int idade;
  String? cor;
  double altura;

  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    // parâmetros nomeados
    this.cor = (cor == null) ? 'indefinida' : cor;
    print("\nConstrutor resumido com parametros nomeados! ${this.toString()}\n");
  }

  /**
   * Os atribultos nome e idade  estão sendo inicializados diretamente pelo construtor, assim como altura, porém altura possui uma valor default.
   * cor é um parâmetro comum, pois seu valor será tratado dentro do scopo do construtor.   
   */
}

class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  // construtor padrão

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'Sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print("construtor resumido com parâmetros nomeados e defult ${this.toString()}");
  }

  // Construtor nomeado de nome admin

  Usuario.admin(this.user, this.senha, {this.nome,}) {
    this.nome = (nome == null) ? ' Sem nome' : nome;
    this.cargo = "administrador";
    print("construtor resumido com parâmetros nomeados e defult ${this.toString()}");
  }

  void autenticar() {
    var user = "ricaciozz@gmail.com";
    var senha = "23";
    (this.user == user && this.senha == senha) ? print("\nUsuário autenticando\n") : print("\nUsuário autenticado\n");
  }
}
