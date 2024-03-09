import 'carro.dart';
import 'motorista.dart';
import 'radio.dart';

void main() {
  Radio radio = Radio(marca: 'PHIP', sintonia: '92FM'); // neste caso o objeto que será agregado existe antes do todo Carro()
  Motorista motorista = Motorista(cnh: '775', nome: 'Ana', idade: 34, sexo: 'Feminina'); // objeto que será associado

  var carro = Carro(motorista: motorista);

  print(carro.toString());
  print('');
  carro.listarPeneus();

  // agregando radio no todo Carro

  carro.adicionarRadio(radio);

  // agora poderemos ver os dados de Radio;

  print(carro.toString());
}
