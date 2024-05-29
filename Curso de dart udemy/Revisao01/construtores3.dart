void main(){
  Objeto objeto = Objeto();
  objeto.nome = 'ricacio'; // através do ponto que é um operador de acesso, podemos enxergar o atributo e passar valores.

  print('nome:${objeto.nome}');

  print('');

  Animal animal = Animal('Nina','vira lata');
  print('Nome:${animal.nome}, raca: ${animal.raca}, idade:${animal.idade}');

  print('');

  Pessoa pessoa  = Pessoa('Lucas',27,cor:'Branco',altura: 1.80);
  print('Nome:${pessoa.nome}, idade:${pessoa.idade}, cor:${pessoa.cor}, altura:${pessoa.altura!.toStringAsFixed(2)}');

  print('');

  Usuario usuario = Usuario('Lucas','ricacio',cargo: 'Dev',senha:'123456' );
  print('Nome:${usuario.nome}, login:${usuario.login}, senha:${usuario.senha}, cargo: ${usuario.cargo}');
  usuario.autenticar();
  print('');
  Usuario adimin = Usuario.admin('123456','ricacio',nome:'Carmem');
  print('Nome: ${adimin.nome}, login:${adimin.login}, senha:${adimin.senha}');
  usuario.autenticar();

  print('');

  Carro carroVelho = Carro.velho(marca: 'FIAT',modelo: 'CVC',potencia: '1.0');
  print(carroVelho.toString());

  print('');

  Carro carroSemiNovo = Carro.semiNovo(marca:'Hinday', modelo: 'COA', potencia: '2.6');
  print(carroSemiNovo.toString());

  print('');

  Carro carroNovo = Carro.novo(marca: 'HSSV', modelo: 'JJ', potencia: '1.6');
  print(carroNovo.toString());

  print('');

  print(identical(carroNovo.retorno(),carroSemiNovo.retorno()));
  print(identical(carroVelho.retorno(),carroSemiNovo.retorno()));

}

class Objeto{
  String? nome;

  Objeto(){
    print('construtor sem parâmetros ${this.toString()}');
  }

  /**
   * Construtor Padrão e sem parametros. 
   */
}

class Animal{
  String? nome;
  int? idade;
  String? raca;

  Animal(String nome,[String? raca,int idade = 0]){
    this.nome = nome;
    this.idade = idade;
    this.raca = raca;
    print('Construtor com parâmetros posicionados e default ${this.toString()}');
  } 

  /**
   * Construtor com parâmetros declarados , posicionados e default
   */
}


class Pessoa{
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  Pessoa(this.nome,this.idade,{String? cor,this.altura = 0}){
    this.cor = (cor != null) ? cor : 'indefinido';
    print('Construtor Nomeado, com parâmetro resumidos e nomeados / default: ${this.toString()}');
  }

  /**
   * Construtor com  resumido com parâmetros nomeados e default
   *  this é referente a ao objeto da classe
   *  parâmetros nomeados devem ser declarados para recber os valores.
   */
}


class Usuario{

   String? login,senha,nome,cargo;

   Usuario(this.nome,this.login,{this.senha,this.cargo}){
    this.nome = (nome != null) ? nome : 'Indefinido';
    this.senha = (senha != null) ? senha : 'Indefinido';
    this.login = (login != null) ? login : 'Indefinido';
    this.cargo = (cargo != null) ? cargo : 'Usuário';
    print('Construtor com parâmetros resumidos e nomeados e default ${this.toString()}');
   }
  
  Usuario.admin(this.senha,this.login,{required this.nome}){
    this.nome = (nome != null) ? nome : 'Indefinido';
    this.cargo = 'Adiministrador';
    print('Construtor com parâmetros resumidos e nomeados e default ${this.toString()}');

  }

  void autenticar(){
    var login = 'ricacio';
    var senha = '123456';

    // utilizando o operador ternário para validar o login e senha
    (this.login == login && this.senha == senha) ? print('Autenticado com sucesso !') : print('Não Autenticado');
  }
}



class Carro{
  String? marca,ano,modelo,potencia; // variáveis de mesmo tipo podem ser declaradas na mesma linha separadas por virgula.

 /// construtor nomeado e resumido
  Carro.velho({required this.marca,required this.modelo,required this.potencia}){
    this.ano = '2014';
    print('Construtor nomeado e resumido !');
  }

  /// construtor nomeado e resumido
  Carro.semiNovo({required this.marca,required this.modelo,required this.potencia}){
    this.ano = '2022';
    print('Construtor nomeado e resumido !');

  }

  /// construtor nomeado e resumido
  Carro.novo({required this.marca,required this.modelo,required this.potencia}){
    this.ano = '2024';
    print('Construtor nomeado e resumido !');
  }

  Carro retorno() => this; // this é uma instância da classe Carro()

  @override
  String toString() => 'Marca:$marca, Ano:$ano, Modelo:$modelo Potência:$potencia';
}