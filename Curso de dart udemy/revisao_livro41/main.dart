import 'aranha.dart';
import 'cao.dart';

void main() {
  var cao = Cao.domestico('sibito', 'Pug', sexo: 'Macho', idade: '3');

  print('Nome:${cao.nome}, Raça:${cao.raca}, Sexo:${cao.sexo}, Idade:${cao.idade}, doicl: ${cao.docil}');

  final cao2 = Cao.selvagem('Lobo', 'Lobo Cinzento', sexo: 'Femea', idade: '2');

  print('Nome: ${cao2.nome}, Raça: ${cao2.raca}, Sexo: ${cao2.sexo}, Idade: ${cao2.idade}, Docil:${cao2.docil}');

  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();
  print('');
  print('====================================================================================================================');
// =============================================================================================================================

  var aranha = Aranha.domestica('Tuta', 'Armadeira', sexo: 'Femea', idade: '1', docil: true);

  print(aranha.toString());

  final aranhaBraba = Aranha.selvagem('Ferroada', 'Marrom', sexo: 'Femea', idade: '1', docil: false);

  print(aranhaBraba.toString());

  aranhaBraba
    ..dormir()
    ..alimentar()
    ..acao();
}
