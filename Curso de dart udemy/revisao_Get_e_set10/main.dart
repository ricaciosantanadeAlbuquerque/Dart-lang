import 'canate.dart';

void main() {
  Caneta caneta = Caneta('Verde', "Nic", 0.5, false);
  print(caneta.toString());
  caneta.tampar();
  print("========================");
  print(caneta.toString());
  caneta.destampar();
  caneta.escrever();
  print("========================");
   print(caneta.toString());
}
