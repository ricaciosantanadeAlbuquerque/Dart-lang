import 'interface_livro.dart';

class Pessoa{

  String? _nome;
  int? _idade;
  String? _sexo;
  // construtor

  Pessoa({required String? nome, required int? idade, required String? sexo}) {
    this._nome = (nome != null) ? nome : 'indefinido';
    this._idade = (idade != null) ? idade : 0;
    this._sexo = (sexo != null) ? sexo : 'indefinido';
  }

// get and set

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  int? get idade => this._idade;

  void set idade(int? idade) {
    this._idade = idade;
  }

  String? get sexo => this._sexo;

  void set sexo(String? sexo) {
    this._sexo = sexo;
  }

  void fazerAniversario() {
    this.idade = this.idade! + 1;
  }
  @override
  String toString() => 'Nome:$_nome, Idade:$_idade, Sexo:$_sexo';
}
