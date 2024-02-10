import 'cao.dart';

void main() {
  var cao = Cao('Tata', 'Pastor Alemão', 'Macho', idade: '4', docil: true);

  print('Nome:${cao.nome}, Raça: ${cao.raca}, Sexo:${cao.sexo}, Idade:${cao.idade}, Docil:${cao.docil}');

  final cao2 = Cao('Julho', 'Box', 'Macho');
  print('');
  print('Nome:${cao2.nome}, Raça: ${cao2.raca}, Sexo:${cao2.sexo}, Idade:${cao2.idade}, Docil:${cao2.docil}');

  cao
    ..dorme()
    ..alimentar()
    ..cao();
}
