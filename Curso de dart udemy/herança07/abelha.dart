import 'artropode.dart';

class Abelha extends Atropode {
  String? _id;
  String? _raca;

  Abelha.domestica(this._id, this._raca, {String? sexo, String? idade, bool? docil = true}) : super(sexo, idade, docil) {
    this._id = (_id != null) ? _id : 'indefinido';
    this._raca = (_raca != null) ? _raca : 'indefinido';
    this.sexo = (sexo != null) ? sexo : 'indefinido';
    this.idade = (idade != null) ? idade : 'indefinido';
  }

  void acao() {
    print("Voa como uma abelha");
  }

  @override
  void reproduzir() => print("Reproduz como uma abelha");
  @override
  void dormir() => print('Dorme como uma abelha! ');
  @override
  void alimentar() {
    super.alimentar();
    print("Abelha !");
  }
  // get and set

  String? get id => this._id;

  void set id(String? id) {
    this._id = id;
  }

  String? get raca => _raca;

  void set raca(String? raca) {
    this._raca = raca;
  }

  @override
  String toString() => 'Id:$id, Raça:$_raca ' + super.toString();
}
