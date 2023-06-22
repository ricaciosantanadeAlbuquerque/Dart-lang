import 'caneta.dart';

void main() {
  Caneta caneta = Caneta("Azul", 'Bic', 0.5, 100, true);
  print(caneta.toString());
  caneta.escrever();
  caneta
    ..tampada = false
    ..carga = 0
    ..escrever()
    ..carga = 100
    ..escrever(); // .. nós chamamos de operador em cascata
  print(caneta.toString());
  print('\n');
  // =============================================================

  var caneta2 = Caneta('Vermelho', 'Bic', 1.5, 90, true);
  print(caneta2.toString());
  caneta2
    ..escrever()
    ..carga = 100
    ..tampada = false
    ..escrever();

  print(caneta2.toString());
}
