import 'carro.dart';
import 'motorista.dart';
import 'radio_carro.dart';

void main() {
  Motorista motorista = new Motorista(numeroCracha: 758545, tempoServico: 34, nome: 'Lucas', idade: 28); // linha de instânciamento;
  RadioCarro radioCarro = new RadioCarro(tipo: 'Radio de carro CD e pen drive', fabricante: 'soni');

  Carro carro = new Carro(
    fabricante: 'Ford',
    numeroSerial1: 111,
    numeroSerial2: 222,
    numeroSerial3: 333,
    numeroSerial4: 444,
    potencia: 1.8,
    fabricanteMotor: 'ford',
    motorista: motorista,
  );

  carro.adicionarRadio(radioCarro); // agregação, o objeto radioCarro faz parte do todo Carro

  motorista.adicionarCarro(carro); // passando o objeto como relação de associação, já que este não é parte do todo;

  print(carro.status());

  motorista.acionarBotaoLigar();
  motorista.apertarAcelerador();
  motorista.carro!.radio!.ligar();
  print('=====================================================================================================');
  print(carro.status());

  motorista.carro!.Acelerador();
  motorista.carro!.Acelerador();
  print('======================================================================================================');
  print(carro.status());
  motorista.carro!.Freio();
  print('======================================================================================================');
  print(carro.status());
  print(motorista.carro!.listaPeneu[0].toString());
}
