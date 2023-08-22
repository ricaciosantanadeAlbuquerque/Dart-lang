import 'sardinha.dart';

class Atum {
  String tipo;
  Sardinha sardinha;

  Atum({required this.tipo, required this.sardinha});

  void comer() {
    print('${this.tipo} come ${this.sardinha.tipo}');
  }
}
