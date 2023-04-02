import 'garrafa.dart';

void main() {
  Garrafa g1 = new Garrafa(tipoMaterial: 'Plastico', capacidade: 10);
  print("Garrafa de ${g1.tipoMaterial} possui a capacidade para ${g1.capacidade}\n");
  g1.encher();
  g1.encher();
  g1.encher();
  g1.encher();
  g1.encher();
  g1.mostrar();
  g1.esvaziar();
  g1.mostrar();
  print("=====================================================================================");
  Garrafa g2 = new Garrafa(tipoMaterial: "Vidro", capacidade: 10, volume: 10.0);
  g2.mostrar();
  g2.esvaziar();
  g2.esvaziar();
  g2.esvaziar();
}
