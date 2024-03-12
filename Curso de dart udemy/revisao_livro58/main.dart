import 'carro.dart';
import 'motor.dart';
import 'motorista.dart';
import 'radio.dart';

void main() {
  var motorista = Motorista(cnh: '7775', nome: 'Ana', idade: '32', sexo: 'feminino');

  var carro = Carro(motorista: motorista, motor: Motor(cv: '42', potencia: 2, fabricante: 'yamaha'));

  /**
   *  O objeto motorista se relaciona com o objeto carro por associação simples. Ele deve ser declarado e inicializado fora
   * do todo Carro() e passado via construtor.
   * Neste caso Motor tem uma relação de composição com o objeto carro, portanto ele 'Deve' ser instânciado dentro do construtor do objeto carro. ou seja ele é criado diretamente no contrutor de carro.
   */

  RadioCarro radio = new RadioCarro(fabricante: 'PHP', sintonia: '92.3fm');

  carro.adicionarRadio(radio);

  // carro agrega radio
  /**
   * Veja que o objeto radio é criado fora e passado para o todo quando for conveniente ou necessária.
   * tanto a parte como o todo são independentes um do outro.
   */

  print(carro.toString());
}
