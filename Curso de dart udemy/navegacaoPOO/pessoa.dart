import 'edereco.dart';

class Pessoa {
  String? _nome;
  int? _idade;
  String? _sexo;
  bool? _dormindo = false;
  Endereco? _endereco;

  Pessoa({required String nome, required int idade, required String sexo, required bool? dormindo}) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
    this.dormindo = (dormindo != null) ? dormindo : false;
  }

  Endereco get endereco => this._endereco!;

  void set endereco(Endereco value) => this._endereco = value;

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

  bool? get dormindo => this._dormindo;

  void set dormindo(bool? dormindo) {
    this._dormindo = dormindo;
  }

  void comer() {
    if (dormindo == false) {
      print("comendo");
    } else {
      print("Não pode comer pois está dormindo");
    }
  }

  void trabalhar() {
    if (dormindo == false) {
      print("Trabalhando");
    } else {
      print("Não pode trabalhar pois está dormindo ");
    }
  }

  void dormir() {
    this.dormindo = true;
  }

  void addEndereco(Endereco value) {
    this.endereco = value;
  }

  @override
  String toString() => 'Nome: $_nome, Idade:$_idade,Sexo:$_sexo';
}
