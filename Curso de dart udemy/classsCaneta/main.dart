import 'caneta.dart';

void main() {
  Caneta c1 = Caneta('Bic', 'Azul', 0.5, 80);
  c1
    ..escrever()
    ..destampar()
    ..escrever()
    ..tampar()
    ..escrever();

  var c2 = Caneta('_BR_', 'Verde', 1.5, 100);

  print(c1.toString());
  print('');
  print(c2.toString());

  print(identical(c1, c2));
}
