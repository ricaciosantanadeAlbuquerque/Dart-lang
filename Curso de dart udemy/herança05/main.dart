import 'cao.dart';
import 'lobo.dart';

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
}
