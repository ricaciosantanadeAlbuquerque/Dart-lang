import 'cao.dart';
/**
 * Uma classe pode ter Somento uma herança
 * 
 * Construtores
 * - devem obedecer a ordem dos paramentros
 * - parametros default devem ser nomeados ou posicionados
 * - o tratamento de parametros deve ser feito na classe que vai ser instânciada
 */
void main() {
  var cao = Cao(nome: 'Max', raca: 'vira Lata', sexo: 'macho', idade: '3');
  print(cao);

  Cao viraLata = Cao(nome: 'bilu', raca: 'pudoll', sexo: 'macho', idade: '1', docil: true);
  print('');
  print(viraLata);

  viraLata
    ..dorme() // .. operador em cascata, permite evocar varios atribulto ou métodos ao mesmo tempo
    ..alimentar()
    ..acao();

  print(identical(cao, viraLata) ? 'São iguail' : 'não são iguais');  // identical() compara objetos 
  print('${viraLata.nome} ${viraLata.docil == true ? 'Sim é docil' : 'Nao é docil '}');
  print('${cao.nome} ${cao.docil == true ? 'Sim é docil' : 'Não é docil'}');
}
