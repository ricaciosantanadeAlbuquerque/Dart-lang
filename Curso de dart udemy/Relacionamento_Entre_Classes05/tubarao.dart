import 'atum.dart';

class Tubarao {
 String tipo;
 Atum  atum;

  Tubarao({ required this.tipo, required this.atum});

  void comer(){
    print("$tipo come ${this.atum.tipo}");
  }
}
