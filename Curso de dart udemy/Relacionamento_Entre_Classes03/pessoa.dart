import 'controle.dart';
import 'interface_pessoa.dart';

class Pessoa implements InterfacePessoa {
  String? _nome;
  int? _idade;
  final Controle _controle;


  Pessoa(this._controle, {required String? nome, required int? idade}) {
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

  Controle get controle => this._controle;

  @override
  void apertarBotaoLigar() {
    this.controle.ligar();
  }

  @override
  void apertarBotaoDesLigar() {
    this.controle.desligar();
  }

  @override
  void apertarBotaoMaisVolume() {
    this.controle.maisVolume();
  }

  @override
  void apertarBotaoMenosVolume() {
    this.controle.menosVolume();
  }

  @override
  void apertarBotaoPlay() {
    this.controle.play();
  }

  @override
  void apertarBotaoPausa() {
    this.controle.pause();
  }

  @override
  void apertarBotaoAbrirMenu() {
    this.controle.abrirMenu();
  }

  @override
  void apertarBotaoFecharMenu() {
    this.controle.fecharMenu();
  }

  @override
  void apertarBotaoLigarMudo() {
    this.controle.ligarMudo();
  }

  @override
  void apertarBotaoDesligarMudo() {
    this.controle.desligarMudo();
  }
}
