import 'cao.dart';

void main() {
  var cao = Cao("Max", 'vira Lata', idade: 3, sexo: 'Macho', docil: true);
  print(cao.toString());

  cao
    ..dorme()
    ..alimentar()
    ..acao();

  print("${cao.nome} ${(cao.docil == true) ? 'está Amigável' : 'não está amigável'}");
}
