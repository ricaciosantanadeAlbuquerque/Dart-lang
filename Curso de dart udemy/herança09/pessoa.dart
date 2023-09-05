abstract class Pessoa {
  String? _nome;
  int? _idade;
  String? _sexo;

  String? get nome => this._nome;

  void set nome(String? nome) => this._nome = nome;

  int? get idade => this._idade;

  void set idade(int? idade) => this._idade = idade;

  String? get sexo => this._sexo;

  void set sexo(String? sexo) => this._sexo;

  void fazerAniversario() {}
}
