import 'carro_factory.dart';

void main() {
  executar();
}

executar() {
  var carro1 = CarroFactory();
  print('Modelo: ${carro1.modelo}, Ligado: ${carro1.ligado}');

  var carro2 = CarroFactory(modelo: 'CRV');

  carro2.ligado = true;

  print('');

  print('Modelo: ${carro2.modelo} Ligado: ${carro2.ligado}');

  print('');

  print(identical(carro1, carro2));
}
