import 'dart:math';

class Pessoa{
  String? nome,sobreNome;
  int? _identidade;

  Pessoa({required this.nome,required this.sobreNome,int? identidade}){
    this.identidade = (identidade != null) ? identidade : Random().nextInt(878455599);
  }

  int? get identidade => this._identidade;

  void set identidade(int? identiddade){
    this._identidade = identiddade;
  }

  @override
  String toString() => 'Nome:$nome,sobreNome:$sobreNome , Ide$_identidade ';
}