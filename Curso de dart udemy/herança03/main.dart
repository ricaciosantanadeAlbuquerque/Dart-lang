import 'cao.dart';

void main() {
  var cao = Cao.domestico('max', 'vira Lata', 'macho', '3');
  print("Nome: ${cao.nome}, raça:${cao.raca}, sexo:${cao.sexo}, idade: ${cao.idade}, docil: ${cao.docil}");

  cao
    ..domir()
    ..alimentar()
    ..acao()
    ..reproduzir();
  print('');
  print(cao);
}
