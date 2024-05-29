void main(List<String> args) {
  Objeto objeto = new Objeto();

  objeto.nome = 'Lucas';

  print('Nome:${objeto.nome}');

  print('');

// animal

  Animal animal = Animal(
    'Nina',
    'vira lata',
  );
  print('Nome:${animal.nome}, raça:${animal.raca}, idade:${animal.idade}');

  print('');

// pessoa
  Pessoa pessoa = Pessoa('Ricacio', 30, cor: 'moreno', altura: 1.72);

  print('Nome:${animal.nome}, idade:${pessoa.idade}, cor:${pessoa.cor}, altura:${pessoa.altura}');

  Usuario  usuario = Usuario('ricacio','123456',nome:'ricacio',cargo:'dev');
  print('Nome:${usuario.nome},  login:${usuario.user}, senha:${usuario.senha}, cargo:${usuario.cargo}');
  usuario.autenticar();

  Usuario admin = Usuario.adimin('ricacio','123456',nome:'ricacio');
  print('Nome: ${admin.nome}, login: ${admin.user}, senha:${admin.senha}, cargo: ${admin.cargo}');
  usuario.autenticar();
}

class Objeto {
  String? nome;

  /// construtor padrão

  Objeto() {
    print('Construtor Sem parametros ${this.toString()}');
  }
}

// animal

class Animal {
  String? nome, raca;
  int? idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('construtor com parâmetros posicionados e default ${this.toString()}');
  }

  /**
   *  Contrutor com  parâmetros declarados  e posicionados e default, onde os parâmetros devem receber  os  dados e passar para os
   * atributos dentro do corpo do construtor.
   */
}

class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  /// construtor resumido
  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor != null) ? cor : 'indefinido';
    print('Construtor com parâmetros resumidos e nomeados + default:${this.toString()}');
  }

  /**
    * O construtor resumido  se caracteriza por receber os atributos da classe como parâmetro para o construtor. Desta maneira
       os atributos recebem os valores de forma direta, sem a nescessidade  da declaração de parâmetros para receber valores para depois  
       passar para os atributos.
    */
}

class Usuario {
  String? user, senha, nome, cargo;
 // construtor padrão
  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.cargo = (cargo != null) ? cargo : 'Usuário';
    print('Construtor resumido com parâmetros nomeados! ${this.toString()}');
  }
 // construtor Nomeado
  Usuario.adimin(this.user, this.senha, {this.nome}) {
    this.nome = (nome != null) ? nome : 'indefinido';
    this.cargo = 'Administrador';
    print('Construtor resumido com parâmetros nomeados! ${this.toString()}');
  }

  void autenticar(){
    var user = 'ricacio';
    var senha = '123456';

    (this.user == user && this.senha == senha ) ?  print('Usuário autenticado\n') : print('Usuário não autenticado\n');
  }
}
