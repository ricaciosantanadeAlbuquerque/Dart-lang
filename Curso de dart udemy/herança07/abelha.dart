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

  void dormir() => print('Dorme como uma abelha! ');
}
