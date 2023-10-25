import 'motor.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radio_carro.dart';

class Carro {
  List<Peneu> _listaPeneu = [];
  RadioCarro? _radio;
  Motorista? _motorista;
  Motor? _motor;

  Carro({
    required String fabricante,
    required num numeroSerial1,
    required num numeroSerial2,
    required num numeroSerial3,
    required num numeroSerial4,
    Motorista? motorista,
    required double potencia,
    required String fabricanteMotor,
  }) {
    listaPeneu.add(Peneu(fabricante: fabricante, numeroSerial: numeroSerial1)); // linha de instânciamento
    listaPeneu.add(Peneu(fabricante: fabricante, numeroSerial: numeroSerial2)); // linha de instânciamento
    listaPeneu.add(Peneu(fabricante: fabricante, numeroSerial: numeroSerial3)); // linha de instânciamento
    listaPeneu.add(Peneu(fabricante: fabricante, numeroSerial: numeroSerial4)); // linha de instânciamento
    this.motor = Motor(potencia: potencia, fabricante: fabricanteMotor, cicloRotacaoMotor: 0); // linha de instânciamento
    this.motorista = motorista; // obejto passado para a função set via construtor / associação
  }
// get
  List<Peneu> get listaPeneu => this._listaPeneu;
  RadioCarro? get radio => this._radio;
  Motorista? get motorista => this._motorista;
  Motor? get motor => this._motor;

// set
  void set radio(RadioCarro? radio) {
    this._radio = radio;
  }

  void set motorista(Motorista? motorista) {
    this._motorista = motorista;
  }

  void set motor(Motor? motor) {
    this._motor = motor;
  }

  void adicionarRadio(RadioCarro radio) {
    // agregação
    this.radio = radio;
  }

  void criarNovoPeneu(String fabricate, num numeraSerial) {
    // composição só a classe carro pode criar suas partes.
    this._listaPeneu.add(Peneu(fabricante: fabricate, numeroSerial: numeraSerial)); // linhas de instâciamento
  }

  void Ligar() {
    this.motor!.ativar();
  }

  void Desligar() {
    this.motor!.desativar();
  }

  void Acelerador() {
    this.motor!.maiscicloRotacaoMotor();
  }

  void Freio() {
    this.motor!.menoscicloRotacaoMotor();
  }

  String status() {
    return '(Motor: ${this.motor.toString()}) [Motorista:${this.motorista.toString()}] {Radio: ${this._radio.toString()}}';
  }
}
