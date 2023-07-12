import 'abelha.dart';
import 'cao.dart';

void main() {
  Cao cao = new Cao.domestico('Max', 'Rottweiler', docil: false, sexo: 'Macho');

  cao
    ..acao()
    ..alimentar()
    ..dormir()
    ..reproduzir();
  print(cao);
  print('');
  var cao2 = Cao.selvagem('halfa', 'Lobo', docil: false, sexo: 'Macho', idade: '5');
  print(cao2);
  print(identical(cao, cao2) == true ? 'Mesmo objeto' : 'objetos diferentes');
  print('==========================================================================');
  Abelha abelha = new Abelha.domestica('01', 'africana', docil: true, sexo: 'fêmea', idade: '1');
  print(abelha);
  abelha
    ..acao()
    ..alimentar()
    ..dormir();
}
