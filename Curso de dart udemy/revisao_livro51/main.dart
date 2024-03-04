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

  print(carro.motor.toString());
  print('');
  var carro2 = Carro(
      motorista: motorista1,
      peneu: [Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400), Peneu(marca: 'Pirele', calibre: 400)],
      motor: Motor(cilindradas: 1200, cava: 350, potencia: 6.0));

  carro2.adicionarRadio(radio);

  print(carro2.toString());
  print('');
  print(identical(carro, carro2) ? 'Sim são identicos' : 'Não são identicos');

  /**
   * motorista  é declarada fora no corpo do método main, e passada via contrutor(Carro) como associação simples.
   * Já o Objeto motor e a lista de objetos peneus, "devem ser instânciados dentro do construtor da classe Carro" para que somente 
   * a classe carro seja responsável por instâncialos(criá-los) e gerenciá los, estes objetos só podem ser acessados pelos todo(objeto/carro) não podendo ser compartilhados com outros objetos Carros. É isso que Caracterize a composição.
   * 
   * No caso da agregação, o Todo(carro) pode exitir antes da parte(radio) que será agregada mais a frente, ou o objeto agregado(radio) pode existir antes do todo(carro),   a parte(radio) deve ser intânciada fora do todo(carro) e passada para o todo(carro)  por função caracterizando agregação.
   */
}
