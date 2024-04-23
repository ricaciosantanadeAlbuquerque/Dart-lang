import 'dart:math';

class Pessoa{
  String? nome,sobreNome;
  int? _identidade;

  Pessoa({required this.nome,required this.sobreNome,int? identidade}){
    this.identidade = (identidade != null) ? identidade : Random().nextInt(99999);
  }

  int? get identidade => this._identidade;

  void set identidade(int? identidade){
    this._identidade = identidade;
  }
  @override
  String toString() => 'Nome:$nome, Sobrenome:$sobreNome, identidade:$_identidade';
}