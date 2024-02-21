abstract class Pessoa {
  String? _nome;
  int? _idade;
  String? _sexo;

  Pessoa({required String nome, required int idade, required String sexo}) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
  }

  String? get nome => this._nome;

  set nome(String? nome) => this._nome = nome;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo = sexo;

  void fazerAniversario() {
    print('$nome tem $idade anos de idade e');
    this.idade = this.idade! + 1;
    print(' acabou de Completar ano, e está com $_idade anos de idade');
  }

  @override
  String toString() => ' Nome:$nome, Idade:$idade, Sexo:$sexo ';
}
