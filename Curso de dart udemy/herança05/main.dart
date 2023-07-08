import 'cao.dart';

void main() {
  Cao v1 = Cao.domestico('Lulu', 'pinscher', 'macho', '3', docil: true);
  print(v1);

  v1
    ..alimentar()
    ..domir()
    ..cao()
    ..reproduzir();
}
