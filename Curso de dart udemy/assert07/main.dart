import 'carro.dart';

void main() {
  Carro carro1 = new Carro(ligado: true, velocidade: 150);
  //var carro2 = Carro(velocidade: 250, ligado: true);  acima  da velocidade
  print('-------------------------------------');
  print('Carro 01 ${carro1}');

  final Carro carro2 = Carro(velocidade: 0, ligado: false); // desligado e parado

  print('---------------------------------------');

  print('Carro 2 ${carro2}');


  final Carro carro3 = Carro(velocidade: 0, ligado: true); // ligado e parado

  print('----------------------------------------');

  print('Carro 03 ${carro3}');
}
