import 'algas.dart';

class Camarao {
  String tipo;
  Algas algas;

  Camarao({required this.tipo, required this.algas});

  void comer() {
    print("${tipo} come ${algas.tipo}");
  }
}
