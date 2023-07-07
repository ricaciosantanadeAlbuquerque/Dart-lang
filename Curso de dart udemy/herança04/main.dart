import 'cao.dart';

void main() {
  var cao = Cao(nome: 'Max', raca: 'vira Lata', sexo: 'macho', idade: '3');
  print(cao);

  Cao viraLata = Cao(nome: 'bilu', raca: 'pudoll', sexo: 'macho', idade: '1', docil: true);
  print('');
  print(viraLata);

  viraLata
    ..dorme()
    ..alimentar()
    ..acao();

  print(identical(cao, viraLata) ? 'São iguail' : 'não são iguais');
  print('${viraLata.nome} ${viraLata.docil == true ? 'Sim é docil' : 'Nao é docil '}');
  print('${cao.nome} ${cao.docil == true ? 'Sim é docil' : 'Não é docil'}');
}
