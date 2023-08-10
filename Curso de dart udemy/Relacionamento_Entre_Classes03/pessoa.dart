
import 'controle.dart';
import 'interface_pessoa.dart';

class Pessoa implements InterfacePessoa{

  String? _nome;
  int? _idade;
  Controle? _controle;
  bool? _permitido;

  Pessoa({required String? nome, required int? idade}) {
    this._nome = (nome != null) ? nome : 'indefinido';
    this._idade = (idade != null) ? idade : 12;
  }

  String? get nome => this._nome;

  void set nome(String? nome) {
    this._nome = nome;
  }

  int? get idade => this._idade;

  void set idade(int? idade) {
    this._idade = idade;
  }

  Controle? get controle => this._controle;

  void set controle(Controle? controle) {
    this._controle = controle;
  }

  bool? get permitido => this._permitido;

  void set permitido(bool? permitido) {
    this._permitido = permitido;
  }

@override
 void apertarBotaoLigar(){
   
 }

 @override
 void apertarBotaoDesLigar(){
  
 }
@override
void apertarBotaoMaisVolume(){

}
@override
void apertarBotaoMenosVolume(){

}
@override
void apertarBotaoPlay(){
  
}
@override
void apertarBotaoPausa(){

}
@override
void apertarBotaoAbrirMenu(){

}
@override
void apertarBotaoFecharMenu(){

}
@override
void apertarBotaoLigarMudo(){

}
@override
void apertarBotaoDesligarMudo(){

}

}
