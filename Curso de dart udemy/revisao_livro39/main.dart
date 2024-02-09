import 'cao.dart';

void main(List<String> args) {
  final cao = new Cao('zé', 'pug', 'femea');
  print('Nome: ${cao.nome}, Raça:${cao.raca}, Sexo: ${cao.sexo},  Idade: ${cao.idade}, docil: ${cao.docil}');

  cao
    ..dorme()
    ..alimentar()
    ..cao();  // Operador em cascata ..

  var cao2 = Cao('Anão', 'vira-lata', 'Macho', idade: '3', docil: true);

  print('Nome: ${cao2.nome}, Raça:${cao2.raca}, sexo:${cao2.sexo}, Idade:${cao2.idade}, docil ? ${cao.docil! ? 'Sim' : 'Não'}');
}
