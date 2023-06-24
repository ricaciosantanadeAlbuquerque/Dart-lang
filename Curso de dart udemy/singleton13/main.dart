import 'carro.dart';

void main() {
  print(Carro.instancia);
  Carro.instancia.tipo = 'Fusca';
  // A classe Carro, encherga o atribulto instancia, justamente porque ele é static .
  // instancia, e um objeto da classe carro, portanto ele encherga os atribultos e métodos de instância da classe /objeto.

  var obj1 = Carro.instancia;
  Carro obj2 = Carro.instancia;

  print(identical(obj1, obj2));
}
