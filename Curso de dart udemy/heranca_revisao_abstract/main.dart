import 'cao.dart';

void main() {
  var cao = Cao.domestico('Chloe', 'Pug', 'Femea');

  print('Nome: ${cao.nome}, Raça: ${cao.raca}, Sexo: ${cao.sexo}, Idade: ${cao.idade}, docil: ${cao.docil} \n');
  print("Desenvolvimento: ${cao.desenvolvimento}, Tipo:${(cao.coluna == true) ? 'Vertebrado' : 'Invertebrado'} \n");

  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print(cao.toString());
  print('');
  print(cao);
}
