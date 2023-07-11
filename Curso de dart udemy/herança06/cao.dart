import 'mamifero.dart';

class Cao extends Mamifero {
  String? _nome;
  String? _raca;

  Cao(this._nome, String? raca, {String? sexo, String? idade, bool docil = false}) : super(sexo, idade, docil) {
    this.nome = (_nome != null) ? nome : 'indefinido';
    this.raca = (raca != null) ? raca : 'indefinido';
    sexo = (sexo != null) ? sexo : 'indefinido';
    idade = (idade != null) ? idade : 'indefinido';
    //
  }

  void acao() {
    print('Late como um Cão !');
  }

  @override // Devemos  implementar e sobrepor os métodos sem escopo das classes abstratas. na classe concreta que extends tal.
  void alimintar() {
    print("Se alimenta como um cão !");
  }

 @override // polimorfismo de sobreposição de métodos
  void dormi() {
    print("Dorme como uma cão ");
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome ??= 'indefinido';
  }

  String? get raca => this._raca;

  void set raca(String? raca) {
    this._raca = raca ??= 'indefinido';
  }

  @override
  String toString() => 'Nome:$_nome, Raça:$_raca ' + super.toString();
}
