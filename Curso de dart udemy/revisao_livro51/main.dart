import 'carro.dart';
import 'motor.dart';
import 'motorista.dart';
import 'peneu.dart';
import 'radio.dart';

void main() {
  var motorista1 = Motorista(cnh: 775, nome: 'Ana', idade: 32, sexo: 'Feminina');

  var carro = Carro(
      motorista: motorista1,
      peneu: [Peneu(marca: 'Pirele', calibre: 302), Peneu(marca: 'Pirele', calibre: 302), Peneu(marca: 'Pirele', calibre: 302), Peneu(marca: 'Pirele', calibre: 302), Peneu(marca: 'Pirele', calibre: 302)],
      motor: Motor(cilindradas: 500, cava: 52, potencia: 2.0));

  var radio = RadioCarro(marca: 'Sony', canal: 93.3);

  carro.adicionarRadio(radio);

  print(carro.toString());
  print('');

  print('======================================================================================================');

  print('');

  var carro2 = Carro(
      motorista: motorista1,
      peneu: [Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400)],
      motor: Motor(cilindradas: 1200, cava: 350, potencia: 6.0));

  carro2.adicionarRadio(radio);

  print(carro2.toString());
  print('');
  print(identical(carro, carro2) ? 'Sim são identicos' : 'Não são identicos');
}
