import 'dart:math';

void main(List<String> args){
 var p1 = Pessoa(nome:'Lucas');
 var p2 = Pessoa(nome:'Ana',identidade:77758963);

 print('São iguais ? ${identical(p1,p2) ? 'Sim' : 'Não'}');

 print('Nome:${p1.nome}, Identidade:${p1.identidade}');
 print('Nome:${p2.nome}, Identidade:${p1.identidade}');
 print(identical(Pessoa.instancia,p1));
}

class Pessoa{
static Pessoa? instancia;
String? nome;
final int _identidade;

 factory Pessoa({required String nome, int? identidade}){
  identidade = (identidade != null) ? identidade : Random().nextInt(99999999 + 1);
  return instancia ??= Pessoa._construtorNomeado(nome,identidade);
 }


 Pessoa._construtorNomeado( this.nome, this._identidade);

 int get identidade => this._identidade;
}