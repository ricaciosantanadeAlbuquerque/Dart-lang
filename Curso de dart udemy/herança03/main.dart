import 'abelha.dart';
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

  print('${cao.nome} ${(cao.docil == true) ? 'está amigável' : 'não está amigavél'}');
  print(" ");
  print(" ");
  var abelha = Abelha('Amarela', 6, true, '1', false);
  abelha
    ..domir()
    ..alimentar()
    ..voa();
}
