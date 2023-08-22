import 'camarao.dart';

class Sardinha {
  String tipo;
  Camarao camarao;

  Sardinha({required this.tipo, required this.camarao});

  void comer() {
    print("${this.tipo} come ${camarao.tipo}");
  }
}
