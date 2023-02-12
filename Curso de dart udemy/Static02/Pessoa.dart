class Pessoa {
  // esta classe não trabalha com valores nulos ?
  String _nome;
  static num idade = 0;
  String _sexo;
  num _altura;

  // construtor padrão

  Pessoa(this._nome, this._altura, this._sexo);
  // construtor nomeado
  Pessoa.diferente(this._nome, this._altura, this._sexo) {
    print("Instacia da classe pessoa ${this.toString()}");
  }
  // get and set
  String get getNome => this._nome;

  void set setNome(String nome) => this._nome = nome;

  String get getSexo => this._sexo;

  void set setSexo(String sexo) => this._sexo = sexo;

  num get getAltura => this._altura;

  void set setAltura(num altura) => this._altura = altura;

  // funções

  static num fazerAniversario() {
   return Pessoa.idade = Pessoa.idade + 1;
  }

  // dentro de métodos static utilizamos variáveis static

  String toString() => "\nNome: $_nome, Altura: $_altura,  Sexo: $_sexo, Idade: $idade\n";
  // posso retornar o valor de um atribulto static sem ser em uma função static, porém para acessar o seu valor, é necessário usar o nome da classe. PS! this é instancia de classe.
}
