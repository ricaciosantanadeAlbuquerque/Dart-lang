import 'abelha.dart';
import 'cao.dart';
import 'lobo.dart';
import 'minhoca.dart';

void main() {
  Cao v1 = Cao.domestico('Lulu', 'pinscher', 'macho', '3', docil: true);
  Lobo v2 = Lobo('Alfa', 'Lobo Selvagem', 'macho', '5', docil: false);
  print(v1);
  v1
    ..alimentar()
    ..domir()
    ..acao()
    ..reproduzir();
  print("");
  print("=========================================================================");
  print(v2);
  v2.domir();
  v2
    ..alimentar()
    ..acao()
    ..reproduzir();
  print("");
  print("=========================================================================");
  Minhoca minhoca = Minhoca(sexo: 'Hemafrodita', comprimento: 30, idade: '2', tipo: 'Minhoca');
  print(minhoca);

  minhoca
    ..domir()
    ..alimentar()
    ..reproduzir();
  print("");
  print("=========================================================================");

  var abelha = Abelha(idade: '3', numeroPatadas: 6, podeVoar: true, sexo: 'Feminino', tipo: 'Abelha');
  print(abelha);

  abelha
    ..domir()
    ..alimentar()
    ..reproduzir();
}
