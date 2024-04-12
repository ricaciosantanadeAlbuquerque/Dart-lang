import 'caracteristica.dart';
import 'multa.dart';

class Carro {
  String? marca, modelo, placa;
  Caracteristica? caracteristica;
  List<Multa> listMulta = [];

  Carro(this.marca, this.modelo, this.placa, this.caracteristica, this.listMulta);
}
