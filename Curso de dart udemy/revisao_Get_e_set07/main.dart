import 'Garrafa.dart';

void main() {
  Garrafa garrafa = Garrafa(tipoMaterial: 'Vidro', capacidade: 10, conteudo: 'vinho');
  print(garrafa.mostraConteundo);
  print('');
  print(garrafa.toString());
  print('====================================');
  garrafa.encher();
  garrafa.encher();
  print(garrafa.toString());
  garrafa.esvaziar();
  print("=++++++++++++++++++++++++++++++++++++++++");
  print(garrafa.toString());
  garrafa.trocarConteundo = 'água';
  print("=++++++++++++++++++++++++++++++++++++++++");
  garrafa.tipoMaterial = 'Plastico';
  print(garrafa.toString());
}
