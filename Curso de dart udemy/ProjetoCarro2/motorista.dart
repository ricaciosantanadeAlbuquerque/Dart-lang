import 'carro.dart';
import 'pessoa.dart';

class Motorista extends PessoaC {
  final int numeroCracha;
  final int tempoServico;
  Carro? _carro;

  Motorista({
    required this.numeroCracha,
    required this.tempoServico,
    required String nome,
    required int idade,
  }) : super(nome: nome, idade: idade);

  // get and set

  Carro? get carro => this._carro;

  void set carro(Carro? carro) {
    this._carro = carro;
  }


  void adicionarCarro(Carro? carro) {
    this.carro = carro;
  }

  void acionarBotaoLigar() {
    this._carro!.Ligar();
  }

  void acionarBotaoDesligar() {
    this.carro!.Desligar();
  }

  void apertarAcelerador() {
    this.carro!.Acelerador();
  }

  void apertarFreio() {
    this.carro!.Freio();
  }

  @override
  String toString() {
    return ' Número do crachá: $numeroCracha,  Tempo de serviço $tempoServico, ' + super.toString();
  }
}
