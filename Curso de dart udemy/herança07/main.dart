import 'cao.dart';

void main() {
  Cao cao = new Cao.domestico('Max', 'Rottweiler', docil: false, sexo: 'Macho');

  cao
    ..acao()
    ..alimentar()
    ..dormir()
    ..reproduzir();
}
